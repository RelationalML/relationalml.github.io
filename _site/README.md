# Relational ML Lab: Website

This is the [website](https://relationalml.github.io) of our academic research group.

## Table of Contents

* [Requirements](#requirements)
    * [Deployment](#deployment)
* [How to add or modify information](#how-to-add-or-modify-information)
* [About this website](#about-this-website)

## Requirements

* [Ruby](https://www.ruby-lang.org/en/)
* Jekyll: `gem install jekyll bundler`
* Jekyll Scholar: `gem install jekyll-scholar`

### Deployment

* Locally build the website: `jekyll build`
* Push changes to the `source` branch of the repository (including the folder `_site`)

The website will be automatically *deployed* from that folder by a custom Github Action workflow (see [`.github/workflows/static.yml`](.github/workflows/static.yml)). However, it cannot be automatically *built* because it uses a custom plugin (Jekyll Scholar) that is not supported by Github.

You can push changes to the `source` branch without building it, but the updates will not be published.

## How to add or modify information

* **Publications:** Add a new **BibTeX** entry to the front of [`_bibliography/references.bib`](_bibliography/references.bib).
    * Add extra information to extra fields in the entry, such as the code url in `code`, if necessary.
    * Add a preview image to [`images/publications/`](images/publications/), and its name to a field `img` in the BibTeX entry.
* **Team:** Add a new entry to the front of [`_data/team_members.yml`](_data/team_members.yml).
* **News:** Add a new entry to the front of [`_data/news.yml`](_data/news.yml).
* **Text content:** Modify the markdown files in the folder [`_pages`](_pages).
    * Homepage: [`_pages/home.md`](_pages/home.md).
    * Openings: [`_pages/openings.md`](_pages/openings.md).
    * Research: [`_pages/research.md`](_pages/research.md).

## About this website

This website is powered by [Jekyll](https://jekyllrb.com/) and uses some Bootstrap and Bootwatch, and it is mainly based on this [website](https://allanlab.org), plus this [one](https://alshedivat.github.io/al-folio/) for the bibliography [plugin](https://github.com/inukshuk/jekyll-scholar). Go to [this page](https://www.allanlab.org/aboutwebsite.html) to learn how to copy and modify this page for your purpose.

Copyright Relational ML Lab. Code released under the MIT License.
