:blogpost: true
:category: Blog Post
:tags: Software Engineering, Python, CLI, ANSI
:nocomments:

****************************************************************
*Introducing ``acolor``: A Small Utility to Print ANSI Color Codes*
****************************************************************

:bdg-primary:`Blog Post` :bdg-primary-line:`Software Engineering` :bdg-primary-line:`Python` :bdg-primary-line:`CLI`

In my previous post, I wrote about a tool I wanted to create to print ANSI color codes to the console.
I currently need this, as I am "prettifying" my shell prompt at the moment, and I figured it would just be faster to leverage this tool over Googling the necessary shell codes.

So I created ``acolor``, an open-source Python utility built on top of ``colorist`` to provide a convenient way to output ANSI color codes to the terminal.
Currently, only named color codes are supported (e.g., red, green, blue).
Hex, HSL, VGA, and RGB color codes are currently not supported, but ``acolor`` can easily be extended to include them.

You can view the source code `here <https://github.com/NicholasSynovic/acolor>`__.
You can install it with ``pipx`` via:

``pipx install git+https://github.com/NicholasSynovic/acolor``

Here are the current command-line options of the application:

.. code:: shell

   acolor --help

   Usage: acolor [OPTIONS]

   Options:
     -c, --color TEXT  Color name to generate ANSI code
     -r, --reset       Print ANSI reset code
     --help            Show this message and exit.

Here's an example usage:

.. code:: shell

   $ acolor --color red
   '\x1b[31m'

   $ acolor --reset
   '\x1b[0m'

   $ acolor --color test
   test is not a valid color: dict_keys(['BLACK', 'RED', 'GREEN', 'YELLOW', 'BLUE', 'MAGENTA', 'CYAN', 'WHITE'])
