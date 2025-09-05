---
title: 'Polyglot: Lua (Part 1)'
description: 'Polyglot: Lua (Part 1)'
summary: 'Polyglot: Lua (Part 1)'

categories: [programming, beginners, lua, learning]
citations: ['']

draft: false

date: 2025-01-12T08:05:41-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

In my previous post, I talked about the reasons why I want to learn more
programming language, the Lua programming language, and the developer tooling
for Lua. Now it's time to actually code in Lua!

For this post, I'll be completing several basic Rosetta Code tasks. Nothing
crazy, but enough to get me familiar with the language and its syntax. As Lua
has a fairly minimal and straight forward syntax, I'll post the code snippets
and output here, but I won't explain the implementation. For the complete source
code, you can see my GitHub repository
[here](https://github.com/NicholasSynovic/example_lua).

## GitHub Template

I created a GitHub Template to bootstrap my Lua projects going forward. You can
find it [here](https://github.com/NicholasSynovic/template_lua). As I find
tooling to improve my Lua experience, I'll update the template.

## Rosetta Code Problems

### [Integer Arithmetic](https://rosettacode.org/wiki/Arithmetic/Integer)

> Outcome: Taught me how to take in user input and function declarations

```lua
local function sum(a, b)
    return a + b
end

local function difference(a, b)
    return a - b
end

local function product(a, b)
    return a * b
end

local function int_quotient(a, b)
    return a // b -- Rounds to negative infinity
end

local function remainder(a, b)
    return a % b
end

local function exponentiation(a, b)
    return a ^ b
end

local function main()
    io.write("First number: ") -- Use with io.read for single line input
    local a = io.read("n") -- Captures user input

    io.write("Second number: ")
    local b = io.read("n")

    print("===")

    print("Sum: " .. sum(a, b)) -- ".." syntax used to concatenate
    print("Difference: " .. difference(a, b))
    print("Product: " .. product(a, b))
    print(
        "Integer Quotient (rounds to negative infinity): " .. int_quotient(a, b)
    )
    print("Remainder" .. remainder(a, b))
    print("Exponentiation: " .. exponentiation(a, b))
end

main()
```

### [String Length Comparison](https://rosettacode.org/wiki/Compare_length_of_two_strings)

> Outcome: Learned that all objects (including arrays) are tables, how to sort
> tables, and how to index over them with a `for` loop

```lua
local function main()
    io.write("First string: ")
    local a = io.read("l")

    io.write("Second string: ")
    local b = io.read("l")

    io.write("Third string: ")
    local c = io.read("l")

    print("===")

    local strings = { a, b, c } -- Loads strings into an array (implemented as a table)

    table.sort(strings, function(foo, bar)
        return #foo > #bar
    end) -- Sort array based on string length
    for _, s in ipairs(strings) do
        print(#s, s) -- Print string size then string content
    end
end

main()
```

## Conclusions

Lua wasn't that hard to get a basic grasp of. While yes, I did not cover aspects
such as loops, control flow, or binary operations, reading the
[manual](https://www.lua.org/manual/5.4/) and
[book](https://www.lua.org/pil/contents.html) provided enough context for me to
grasp the core concepts.

I'd like to thank the Rosetta Code community for their problems and solutions.
Without them it would be far more difficult for me to understand these core
language features.
