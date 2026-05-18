---
title: "Relational ML - Outreach"
layout: textlay
excerpt: "Relational ML -- Outreach"
sitemap: false
permalink: /outreach/
---

# Outreach


Watch below some of our **[videos](#videos)** at conferences and seminars, where members of our [group](/team) present highlights from our list of [publications](/publications).

You can also listen to **[podcasts](#podcasts)** featuring Dr. Rebekka Burkholz (some are in German and some in English).

We also share **[other links](#other-links)** to interesting articles, interviews, and more.

<hr>
  
<h2 id="videos" class="anchor">Videos</h2>

{% for talk in site.data.outreach.videos %}

### {{ talk.speaker }} @ {{ talk.venue }} ({{ talk.date | date: "%b %-d, %Y" }})
#### {{ talk.title }}

<div class="row">

{% if talk.noiframe %}
<div class="col-sm-12 clearfix">
{% else %}
<div class="col-sm-6 clearfix">
{% endif %}

{% if talk.papers %}
Based on papers:
<ul>
{% for paper in talk.papers %}
<li>
        <strong><a href="{{ paper.link }}" target="_blank" rel="noopener">{{ paper.title }}</a></strong>.
        {{ paper.authors }},
        <em>{{ paper.conference }}</em>.
</li>
{% endfor %}
</ul>
{% else %}
{{ talk.abstract }}
{% endif %}

{% if talk.noiframe %}
Link: <a href="{{ talk.video }}" target="_blank" rel="noopener">{{ talk.video }}</a>
</div>
{% else %}
</div>
{% assign video_url = talk.video %}
{% if video_url contains "?" %}
  {% assign video_url = video_url | append: "&autoplay=0" %}
{% else %}
  {% assign video_url = video_url | append: "?autoplay=0" %}
{% endif %}
<div class="col-sm-6 clearfix">
<iframe width="374" height="210" 
src="{{ video_url }}" 
title="video player" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>
{% endif %}
</div>

{% endfor %}

<hr>

<h2 id="podcasts" class="anchor">Podcasts</h2>

{% for podcast in site.data.outreach.podcasts %}
### {{ podcast.speaker }} @ {{ podcast.venue }} ({{ podcast.date | date: "%b %-d, %Y" }})
#### {{ podcast.title }}
{{ podcast.description }}

{% if podcast.height -%}
<iframe width="100%" height="{{ podcast.height }}" scrolling="no" frameborder="no" src="{{ podcast.audio }}" loading="lazy"></iframe>
{%- else -%}
<iframe frameBorder="0" scrolling="no" src="{{ podcast.audio }}" style="border: 0" border="0" width="100%"></iframe>
{%- endif -%}
{% endfor %}

<hr>

<h2 id="other-links" class="anchor">Other links</h2>

{% for link in site.data.outreach.other_links %}
### {{ link.title }} ({{ link.date | date: "%b %-d, %Y" }})
{{ link.description }}

{% if link.url %}
Link: {% for url in link.url %}
<a href="{{ url }}" target="_blank" rel="noopener">{{ url }}</a>
{% if forloop.last == false %}<br>{% endif %}
{% endfor %}
{% endif %}

{% if link.images %}
{% for image in link.images %}
<img src="{{ image }}" alt="{{ link.title }}" referrerpolicy="no-referrer" style="max-width: 100%; height: 200px; margin-top: 10px;">
{%- endfor %}
{% endif %}

{% if link.embeds %}
{% for embed in link.embeds %}
{{ embed | markdownify }}
{%- endfor %}
{% endif %}
{% endfor %}