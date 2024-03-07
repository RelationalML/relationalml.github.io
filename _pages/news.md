---
title: "News"
layout: textlay
excerpt: "Relational ML Group"
sitemap: false
permalink: /news.html
---

# News

<hr/>
{% for post in site.data.news %}
<h4>{{ post.date | date_to_long_string }}</h4>
{{ post.headline  | markdownify }}
<hr/>
{% endfor %}