# Relational ML Lab: Website

This is the [website](https://relationalml.github.io) of our academic research group.

## Table of Contents

* [Requirements](#requirements)
    * [Deployment](#deployment)
* [How to add or modify information](#how-to-add-or-modify-information)
    * [Modify text content](#modify-the-websites-text-content)
    * [Add a publication](#add-a-publication)
    * [Add news](#add-news)
    * [Add a person](#add-a-person)
* [About this website](#about-this-website)

## Requirements

To build the website locally, you need to have [Ruby](https://www.ruby-lang.org/en/) installed. Then, install Jekyll and the Jekyll Scholar plugin:

```gem install jekyll bundler```

```gem install jekyll-scholar```

### Deployment

In order to update recent changes, you need to build the website locally first:

```jekyll build```

Then push the changes of folder `_site` to the `source` branch of the repository.

The website will be automatically deployed from that folder by a custom Github Action workflow (see [`.github/workflows/static.yml`](.github/workflows/static.yml)). However, it cannot be built automatically because it uses a custom plugin.

## How to add or modify information

### Modify text content

Modify the markdown files in the folder [`_pages`](_pages).

* You can modify the homepage at [`_pages/home.md`](_pages/home.md), the openings page at [`_pages/openings.md`](_pages/openings.md), and the research page at [`_pages/research.md`](_pages/research.md).
* For modifications to data-driven pages (publications, news, team), see the following sections.

### Add a publication

Add a new **BibTeX** entry to the front of [`_bibliography/references.bib`](_bibliography/references.bib).

* Add a preview image to [`images/publications/`](images/publications/), and its name to a field `img` in the BibTeX entry.
* Add extra information to extra fields in the entry, such as the code url in `code`, if necessary.

### Add news

Add a new entry to the front of [`_data/news.yml`](_data/news.yml).

### Add a person

Add a new entry to the front of [`_data/team_members.yml`](_data/team_members.yml).

## About this website

This website is powered by [Jekyll](https://jekyllrb.com/) and uses some Bootstrap and Bootwatch, and it is mainly based on this [website](https://allanlab.org), plus this [one](https://alshedivat.github.io/al-folio/) for this bibliography [plugin](https://github.com/inukshuk/jekyll-scholar). Go to [this page](https://www.allanlab.org/aboutwebsite.html) to learn how to copy and modify this page for your purpose.

Copyright Relational ML Lab. Code released under the MIT License.
