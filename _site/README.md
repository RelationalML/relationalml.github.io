# Relational ML Lab: Website

This is the [website](https://relationalml.github.io) of our academic research group.

## Table of Contents

* [Requirements](#requirements)
* [How to run the website locally](#how-to-run-the-website-locally)
* [How to add or modify information](#how-to-add-or-modify-information)
    * [Publish changes](#publish-changes)
    * [Modify the website's text content](#modify-the-websites-text-content)
    * [Add a publication](#add-a-publication)
    * [Add news](#add-news)
    * [Add a person](#add-a-person)
* [About this website](#about-this-website)

## Requirements

```gem install jekyll-scholar```

## How to add or modify information

### Publish changes

It is **very important** to commit any change to the branch `source`, and not to `master`. The `master` branch is only used to host the built site, while `source` is used to host the source code. 

The website is not updated automatically unless you run the script [`commit.sh`](commit.sh) to publish your changes. This script automates the process of building the site, committing changes to `source`, moving the built site to `master`, and pushing all. It takes two arguments: the files to be added and the commit message.

For example, if you want to add all files with the commit message `the message`, you need to run: `bash commit.sh "*" "the message"`. If you want to add only the file `file.md` with the commit message `the message`, you need to run: `bash commit.sh "file.md" "the message"`.

You might want to commit to `source` and let someone else update the changes for you, too.

### Modify the website's text content

Modify the markdown files in the folder [`_pages`](_pages).

For example, you can modify the homepage at [`_pages/home.md`](_pages/home.md), and the openings page at [`_pages/openings.md`](_pages/openings.md).

For modifications to publications, news, or team members, see the following sections.

### Add a publication

Modify the file [`_bibliography/references.bib`](_bibliography/references.bib) by adding the **BibTeX** entry of the publication at the front.

Add a preview image to [`images/pubpic/`](images/pubpic/), and its name to a field `preview` in the BibTeX entry.

Add extra information to extra fields, such as the code url in `code`, if necessary.

### Add news

Modify the file [`_data/news.yml`](_data/news.yml) by adding a new entry.

### Add a person

If the person is a member of the staff, modify the file [`_data/team_members.yml`](_data/team_members.yml).

If the person is a student doing their thesis, modify the file [`_data/students.yml`](_data/students.yml).

If the person is a past member, modify the corresponding .yml file in folder [`_data/`](_data/).

Add a picture to [`images/teampic/`](images/teampic/), and its name to a field `photo` in the corresponding .yml file.

## About this website

This website is powered by Jekyll and some Bootstrap, Bootwatch, and it is mainly based on this [website](https://allanlab.org), plus this [one](https://alshedivat.github.io/al-folio/) with this [plugin](https://github.com/inukshuk/jekyll-scholar) for the bibliography. Go to `aboutwebsite.md` to learn how to copy and modify this page for your purpose.

Copyright Relational ML Lab. Code released under the MIT License.
