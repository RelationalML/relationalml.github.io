---
title: "Relational ML - Publications"
layout: publay
excerpt: "Relational ML -- Publications."
sitemap: false
permalink: /publications/
---

# Publications
Explore our latest research by browsing **[pre-prints](#pre-prints)** and **[accepted papers](#accepted-papers)**.
  
<select id="memberselect">
    <option value="">All members</option>
    {% for group in site.data.team_members %}{% for member in group.members 
    %}<option value="{{ member.last_name }}">{{ member.name }}</option>
    {% endfor %}{% endfor %}</select>


## Pre-prints

{% bibliography --file preprints %}

<hr>

## Accepted papers

{% bibliography %}