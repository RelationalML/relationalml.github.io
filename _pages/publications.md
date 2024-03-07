---
title: "Relational ML - Publications"
layout: publay
excerpt: "Relational ML -- Publications."
sitemap: false
permalink: /publications/
---

# Publications
  
<select id="memberselect">
    <option value="">All members</option>
    {% for member in site.data.team_members %}<option value="{{ member.last_name }}">{{ member.name }}</option>
    {% endfor %}</select>

{% bibliography %}
