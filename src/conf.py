"""
Sphinx configuration file.

Copyright (C) 2025 Nicholas M. Synovic.
"""

# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = "Nicholas M. Synovic"
copyright = "2025, Nicholas M. Synovic"  # noqa: A001
author = "Nicholas M. Synovic"
release = "0.0.1"

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    "ablog",
    "sphinx.ext.autosectionlabel",
    "sphinx.ext.intersphinx",
    "sphinx_design",
    "sphinx_togglebutton",
    "sphinxcontrib.bibtex",
]

templates_path = ["_templates"]
exclude_patterns = []

# Ablog configuration options
blog_authors = {
    "NMS": ("Nicholas M. Synovic", "https://nicholassynovic.github.io/"),
}
blog_default_author = "NMS"
blog_languages = {
    "en": ("English", None),
}
blog_default_language = "en"
post_show_prev_next = False
blog_title = "Nicholas M. Synovic's Blog"
blog_feed_fulltext = True

# Sphinx auto section label settings
autosectionlabel_prefix_document = True
autosectionlabel_maxdepth = 2

# Sphinx BibTex settings
bibtex_bibfiles = ["refs.bib"]
bibtex_default_style = "unsrt"

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = "sphinx_book_theme"
html_static_path = ["_static"]
html_css_files = ["custom.css"]

# https://sphinx-book-theme.readthedocs.io/en/latest/tutorials/get-started.html#add-a-source-repository-button-to-your-theme
html_theme_options = {
    "repository_url": "https://github.com/NicholasSynovic/nicholassynovic.github.io",
    "use_repository_button": True,
    "show_navbar_depth": 0,
    "max_navbar_depth": 2,
    "collapse_navbar": True,
    "use_sidenotes": True,
}
html_title = project
