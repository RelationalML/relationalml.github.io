# Relational ML Lab: Website

This is the [website](https://relationalml.github.io) of our academic research group.

## How to add or modify information

### Publish changes

It is **very important** to commit any change to the branch `source`, and not to `master`. The `master` branch is only used to host the built site, while `source` is used to host the source code. 

The website is not updated automatically unless you run the script `commit.sh` to publish your changes. This script automates the process of building the site, committing changes to `source`, moving the built site to `master`, and pushing all. It takes two arguments: the files to be added and the commit message.

For example, if you want to add all files with the commit message `the message`, you need to run: `bash commit.sh "*" "the message"`. If you want to add only the file `file.md` with the commit message `the message`, you need to run: `bash commit.sh "file.md" "the message"`.

You might want to commit to `source` and let someone else update the changes for you, too.

### Modify the website's text content

Modify the markdown files in the folder `_pages/`.

For example, you can modify the homepage at `_pages/home.md`, and the openings page at `_pages/openings.md`.

For modifications to publications, news, or team members, see the following sections.

### Add a publication

Modify the file `_bibliography/references.bib` by adding the **BibTeX** entry of the publication at the front. 

Add a preview image to `images/pubpic/`, and its name to a field `preview` in the BibTeX entry.

Add extra information to extra fields, such as the code url in `code`, if necessary.

### Add news

Modify the file `_data/news.yml` by adding a new entry.

### Add a person

If the person is a member of the staff, modify the file `_data/team_members.yml`.

If the person is a student, modify the file `_data/students.yml`.

If the person is a past alumni, modify the corresponding file, from `_data/alumni_members.yml`, `_data/alumni_students.yml`, or `_data/alumni_visitors.yml`.

Add a picture to `images/teampic/`, and its name to a field `photo` in the corresponding file.

## About this website

This website is powered by Jekyll and some Bootstrap, Bootwatch, and it is based on this [website](https://allanlab.org), plus this [plugin](https://github.com/inukshuk/jekyll-scholar) for the bibliography. Go to `aboutwebsite.md`  to learn how to copy and modidy this page for your purpose.

Copyright Relational ML Lab. Code released under the MIT License.