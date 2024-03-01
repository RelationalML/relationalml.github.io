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

This website is built with [Jekyll](https://jekyllrb.com/), a static site generator. To build the website locally you need to have [Ruby](https://www.ruby-lang.org/en/) installed. Then, install Jekyll and the Jekyll Scholar plugin:

```gem install jekyll bundler```

```gem install jekyll-scholar```

### Deployment

The website is built from the `source` branch, folder `_site`, by a custom Github Action workflow (see [`.github/workflows/static.yml`](.github/workflows/static.yml)). In order to update recent changes, you need to build the website locally first (`jekyll build`).

## How to add or modify information

### Modify text content

Modify the markdown files in the folder [`_pages`](_pages).

For example, you can modify the homepage at [`_pages/home.md`](_pages/home.md), the openings page at [`_pages/openings.md`](_pages/openings.md), and the research page at [`_pages/research.md`](_pages/research.md).

For modifications to data-driven pages (publications, news, team members), see the following sections.

### Add a publication

Modify the file [`_bibliography/references.bib`](_bibliography/references.bib) by adding the **BibTeX** entry of the publication at the front.

Add a preview image to [`images/publications/`](images/publications/), and its name to a field `img` in the BibTeX entry.

Add extra information to extra fields, such as the code url in `code`, if necessary.

### Add news

Modify the file [`_data/news.yml`](_data/news.yml) by adding a new entry.

### Add a person

If the person is a member of the staff, modify the file [`_data/team_members.yml`](_data/team_members.yml). Add a picture to [`images/team/`](images/team/), and its filename to a field `photo` in the .yml entry.

If the person is from another category, create a corresponding .yml file in folder [`_data/`](_data/) and modify (`_pages/team.md`)[_pages/team.md] to display the information.

## About this website

This website is powered by Jekyll and uses some Bootstrap and Bootwatch, and it is mainly based on this [website](https://allanlab.org), plus this [one](https://alshedivat.github.io/al-folio/) for this bibliography [plugin](https://github.com/inukshuk/jekyll-scholar). Go to (https://www.allanlab.org/aboutwebsite.html) to learn how to copy and modify this page for your purpose.

Copyright Relational ML Lab. Code released under the MIT License.