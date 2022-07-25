---
title: Twitter, OAuth 2.0, and the Command Line
description: How I handled OAuth 2.0 authentication with a recent project
summary: How I handled OAuth 2.0 authentication with a recent project

aliases: []
audio: []
cascade: {}
date: 2022-07-01T09:25:35-05:00
draft: false
expiryDate: ''
featured_image: ''
headless: false
images: []
include_toc: true
isCJKLanguage: false
keywords: []
layout: ''
lastmod: ''
linkTitle: ''
markup: md
outputs: []
publishDate: ''
resource: ''
series: ''
show_comments: false
slug: ''
toc: true
type: ''
url: ''
videos: []
weight: 0
---

## Preface

I don't use social media that often. I think that it gets in the way of my day
to day life. Like really, I _need_ to tell everyone that I'm eating food right
now? It seems crazy writing that down anyways.

But due to an opportunity with Intel, I now have to join the masses. So I
decided to reopen my Twitter account, and realized something right away: I hate
the interface.

I don't care about my likes, reccomendations, or the trending news. I have other
ways of getting some of that information. All I want to do is tweet into the
void my thoughts on technology, in a nice, cozy space. And what can be cozier
than the command line!

That's how this project got started: I want to tweet rapidly from the command
line. "_No problem_," I naively thought, "_I'll just use Twitter's REST API. It
can't be that hard._" But alas, it was a beast far greater than I ever expected.

## Completing the First Leg

As an end user, I've experienced the benefits of OAuth 2.0. As a developer
though, I've never had to handle client side access via OAuth 2.0. I've also
never had to implement OAuth 2.0 into an app as an authentication layer, but
that's a future project problem. However, I do have lots of experience with
accessing web APIs and web scraping.

With my history of experience I figured this should be a cake walk. And
reviewing Twitter's OAuth 2.0 diagram, it seemed relatively straight forward.

![Twitter OAuth 2.0 Diagram](/twitterOAuthDiagram.png "Twitter OAuth 2.0 Diagram")
[_Twitter OAuth 2.0 Diagram_](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code)

But nothing is ever as easy as it seems. Following the documentation, I created
my OAuth 2.0 client ID and Secret but I noticed something: I needed a redirect
URL.

As I don't have a registered webserver that I can send these requests to, I
figured `http://localhost:4269` will do. But in testing, it failed. Why? I'm not
sure, but upon checking [StackOverflow](https://stackoverflow.com/a/1979559),
the answer was really odd: For some reason, Twitter doesn't like sending
requests to `localhost`. But they are ok with sending requests to an ip address
that points to `localhost`. So I implemented a fix to my OAuth registration and
changed the redirect URL to `http://127.0.0.1:4269`.

Now I can send requests to Twitter, thus cmpleting the first leg of the
authentication chain, but I have no way of listening for a response on that
port. This is needed as OAuth 2.0 sends a `state` to verify that the request
wasn't tampered and a `code` that act as authentication token to for generating
an access token (the end goal). This is where I gulped in fear as I opened the
Python documentation for
[`socket`](https://docs.python.org/3/library/socket.html).

### Sidebar: Did I Mention That I'm Wrting This in Python?

Yeah... maybe not the smartest decision. Twitter and other developers have
solved this problem in other languages. But I have two good reasons for doing
so:

1. Most of the work that I do is in Python. As I may need to access an OAuth 2.0
   endpoint at some point, I want to make sure that I have the knowledge to do
   so.
1. There is more complexity in learning a new programming language than learning
   a new feature of a language you know. I'd rather not spend cycles figuring
   out syntax when I could be working.

## Socket

[`socket`](https://docs.python.org/3/library/socket.html) is a Python module
that provides an interface into the
[C socket library](https://manpages.debian.org/bullseye/manpages-dev/socket.2.en.html).
It allows for a developer to create low level connections to both local and
external ports to send and recieve communication. It also inherits all of the
blocking problems that handling socket communications has as well (more on that
later).

I did also look for other libraries prior to working with `sockets`, but I
decided against the other options. This was due to when they were last updated
(most of them were years ago) and that I wanted to challenge myself with
learning a new skill.

I'm going to skip a lot of the debugging here as that's boring and jump right
into the meat of this. Here was my task:

- [ ] Listen to port 4269 on 127.0.0.1
- [ ] When data is recieved, store it as a `ByteStreamIO` object

Here is my code for accomplishing these tasks You can also view the code on
GitHub as well
[here](https://github.com/NicholasSynovic/hushtweet/blob/main/hushtweet/utils/server.py).

```python
from io import BytesIO
import socket
def getAuthToken(ip: str = "127.0.0.1", port: int = 4269) -> BytesIO:
    data: BytesIO = BytesIO()
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server:
        server.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)  # Reuse port
        server.bind((ip, port))
        server.listen()
        conn, addr = server.accept()

        with conn:
            data.write(conn.recv(4096))
            conn.close()

        server.close()
    return data
```

With this function, I accomplished the above tasks.

- [x] Listen to port 4269 on 127.0.0.1
- [x] When data is recieved, store it as a `ByteStreamIO` object

But there is a problem with this code. And it is a problem that system's
engineers have had to deal with since forever: Blocking.

## Blocking

Blocking is when an application is halted, but doesn't close, because it is
waiting for a task to accomplis that never will. The blocking problem with
`socket`s programming is that if you are waiting for data to be recieved, you
won't know when the entire data stream arrives. To solve this, I implemented a
_trivial_ solution by accepting the first 4096 bytes (4 kilobytes) of data.

```python
data.write(conn.recv(4096))
```

In testing, this buffer is nearly 4 times larger than what it needs to be. But
as this isn't meant to be the most performant code ever written, I'm just going
to ignore that observation.

Then the question is, "What is the actual/correct solution to this problem?"
It's to put a termination charachter or accepted stopping charachter to the end
of the message so that the recipient knows when to stop listenting for more
data. The problem is that there is not a general, accepted termination
charachter that is implemented in **every** message or system. Twitter, from
what I can tell, in their OAuth 2.0 implementation does not add a stopping
charachter to their messages to the redirect URL. Because of this, I ended up
having to create a large buffer of data to hold the recieved data even though
that wouldn't be necessary if I knew what the termination charachter was.

Oh well.

## Conclusion

Is this the best solution? No. The best solution would be a webserver that
listens for the HTTP GET request that Twitter sends to the redirect URL and
parsing it from there. I _think_ this is similar to what
[`rclone`](https://rclone.org/) does to handle thier OAuth 2.0 requests.

However, does it work? Yes.

Was it worth it? Eh?

It was definitely useful to learn a little bit of `socket`s programming and to
work with OAuth 2.0. But I don't think that I'll be going down this route again
unless absolutely necessary.

> I'm doing the [#100DaysToOffload](https://twitter.com/search?q=%23100daystooffload&src=typed_query) challenge.
> Check [my Twitter](https://twitter.com/nick_synovic) for updates!
