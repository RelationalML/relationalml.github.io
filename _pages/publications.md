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
    {% for group in site.data.team_members %}{% for member in group.members 
    %}<option value="{{ member.last_name }}">{{ member.name }}</option>
    {% endfor %}{% endfor %}</select>

{% bibliography %}
