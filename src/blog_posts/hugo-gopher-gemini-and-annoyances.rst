:blogpost: true
:category: Blog Post
:tags: Internet, Hugo, Gopher, Gemini
:nocomments:

*************************************
*Hugo, Gopher, Gemini, and Annoyances*
*************************************

:bdg-primary:`Blog Post` :bdg-primary-line:`Internet` :bdg-primary-line:`Hugo`

My story of setting up a Gopher- and Gemini-compatible website powered by Hugo.

A little while ago, I wanted to create my own website.
I struggle with creating front ends for websites, so I chose to use the Hugo [0]_ static site generator, as it has many great themes.
Learning Hugo was simple enough, since the most basic sites are just ``md`` content files and ``toml`` config files.
So, after a brief learning period, I built my website, got it hosted on GitHub Pages [1]_, and set up a domain from Google Domains [2]_ to link it all together.

That should be it, right?

Well, then I saw these two videos from DistroTube [3]_ [4]_ and got interested in creating and hosting my own Gopher [5]_ phlog and Gemini [6]_ capsule.
This is where the annoyances began.

####################################################
Gopher: The Bane of My Existence (for About a Week)
####################################################

I wanted to create a Gopher phlog because I thought it was just plain cool.
Who wouldn't want a text-only mirror of their site not indexed by modern search engines (probably everyone)?
I was aware Hugo could output my website in a variety of different formats.
But I had no idea how to do that.

Luckily, Jason F. McBrayer had already figured this out in a blog post on his website [7]_.
So I copied and pasted away.
I ran the Hugo site generator and got output.
Huzzah!
But when I tested the site with the ``gophernicus`` [8]_ server, the site was malformed.
Links to blog pages led nowhere or returned error messages.

So I deleted my edits, recopied, repasted, and ran the generator.
Still, no dice.
Even manually typing in his work in my project didn't work.

At this point it was getting late, so I put the project in the back of my head and continued to work on it for the next week.
My stubbornness was because I knew it was possible to do this conversion.
After all, I had gotten output.
But there was a syntax error somewhere that I just couldn't find.

Eventually, I found documentation for the ``gophermap`` syntax [9]_ and it all clicked.
I use ``neovim`` [10]_ as my editor of choice.
I use spaces instead of tabs.
``gophermaps``, as a product of the 90s, require tabs for link formatting.

Insert face palm here.

The fix for this problem was to ``:set noexpandtab`` and then paste in McBrayer's work.

After that, the links worked.
I then spent some time setting the Gopher template that he provided to what I wanted, but that was minor work.

In all, it took me a week to RTFM and move on from this arguably ridiculous project.

#################################
Gemini: A Lot Easier than Gopher
#################################

It was significantly easier to create the Gemini capsule than a Gopher phlog.

But before that, I had to create the templates and output settings for Gemini in Hugo.
This, again, was taken care of by Sylvain Durand [11]_.
With my ``:set noexpandtab`` option, I copied and pasted his work into my project.
And boom, it worked.

That was anticlimactic, wasn't it?
Again, some formatting of the provided template was necessary, but that was minor.

The new problem was how to distribute this site.

################################
PubNix: What's Old Is New Again
################################

In my research of both the Gopher and Gemini protocols, I found out about PubNixes: community-run servers that run on low-powered machines.
These servers are a modern implementation of the time-sharing servers of yore, where there were a few large mainframes in the country that only a few people could log into at a time.
A subset of these PubNixes is the ``tildeverse`` [12]_.
These are **very** community-oriented servers that offer free web hosting of Gemini, Gopher, HTTP, and Spartan sites.
All that's required is to create an account and start uploading.

For those who are interested in hosting a Gemini and/or Gopher site, I encourage the use of these servers as it takes the problems of hosting content (maintenance, privacy, port forwarding, etc.) off your shoulders.

#######
The End
#######

If you are interested in doing something similar, here is a link to my website's source code on GitHub [13]_.
There you can see my templates, scripts, and config options for generating Gemini, Gopher, and HTTP sites.
Best of luck, and happy hacking!

#########
Citations
#########

Citations available at <https://nsynovic.dev/posts/hugo-gopher-gemini-annoyance/>.

.. [0] https://gohugo.io/
.. [1] https://pages.github.com/
.. [2] https://domains.google/
.. [3] https://www.youtube.com/
.. [4] https://www.youtube.com/
.. [5] https://en.wikipedia.org/wiki/Gopher_(protocol)
.. [6] https://gemini.circumlunar.space/
.. [7] https://jasonmbrayer.github.io/
.. [8] https://github.com/gophernicus/gophernicus
.. [9] https://rawtext.club/~sloum/gopher/gophermap_tutorial.html
.. [10] https://neovim.io/
.. [11] https://sylvaindurand.org/
.. [12] https://tildeverse.org/
.. [13] https://github.com/NicholasSynovic
