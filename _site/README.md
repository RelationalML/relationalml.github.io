# Relational ML Lab: Website

This is the [website](https://relationalml.github.io) of our academic research group.

## Table of Contents

* [Requirements](#requirements)
* [How to run the website locally](#how-to-run-the-website-locally)
* [How to add or modify information](#how-to-add-or-modify-information)\
    * [Modify the website's text content](#modify-the-websites-text-content)
    * [Add a publication](#add-a-publication)
    * [Add news](#add-news)
    * [Add a person](#add-a-person)
* [About this website](#about-this-website)

## Requirements

```gem install jekyll-scholar```

## How to add or modify information

### Modify the website's text content

Modify the markdown files in the folder [`_pages`](_pages).

For example, you can modify the homepage at [`_pages/home.md`](_pages/home.md), and the openings page at [`_pages/openings.md`](_pages/openings.md).

For modifications to publications, news, or team members, see the following sections.

### Add a publication

Modify the file [`_bibliography/references.bib`](_bibliography/references.bib) by adding the **BibTeX** entry of the publication at the front.

Add a preview image to [`images/publications/`](images/publications/), and its name to a field `preview` in the BibTeX entry.

Add extra information to extra fields, such as the code url in `code`, if necessary.

### Add news

Modify the file [`_data/news.yml`](_data/news.yml) by adding a new entry.

### Add a person

If the person is a member of the staff, modify the file [`_data/team_members.yml`](_data/team_members.yml).

If the person is a student doing their thesis, modify the file [`_data/students.yml`](_data/students.yml).

If the person is a past member, modify the corresponding .yml file in folder [`_data/`](_data/).

Add a picture to [`images/team/`](images/team/), and its name to a field `photo` in the corresponding .yml file.

## Deployment

The website is automatically deployed by GitHub Pages when pushed. The website is built from the `source` branch, folder `_site_`, by a custom Github Action workflow (see [`.github/workflows/static.yml`](.github/workflows/static.yml)).

## About this website

This website is powered by Jekyll and some Bootstrap, Bootwatch, and it is mainly based on this [website](https://allanlab.org), plus this [one](https://alshedivat.github.io/al-folio/) with this [plugin](https://github.com/inukshuk/jekyll-scholar) for the bibliography. Go to `aboutwebsite.md` to learn how to copy and modify this page for your purpose.

Copyright Relational ML Lab. Code released under the MIT License.
