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
    %}{%- if member.last_name %}<option value="{{ member.last_name }}">{{ member.name }}</option>{%- endif -%}
    {% endfor %}{% endfor %}</select>


## Accepted papers

{% bibliography %}

<hr>

## Pre-prints

{% bibliography --file preprints %}