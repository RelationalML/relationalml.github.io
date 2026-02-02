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
{%-if post.video-%}
<iframe height="180" src="{{ post.video }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
{%-endif-%}
{%-if post.image-%}
<img src="{{ site.url }}{{ site.baseurl }}/images/news/{{ post.image }}" alt="News Image" style="height:180px;"/>
{%-endif-%}
{%-if post.images-%}
{%-endif-%}
{%-for image in post.images-%}
<img src="{{ site.url }}{{ site.baseurl }}/images/news/{{ image }}" alt="News Image" style="height:180px;"/>
{% endfor %}
<hr/>
{% endfor %}