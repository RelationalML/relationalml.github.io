---
title: "Relational ML - Outreach"
layout: textlay
excerpt: "Relational ML -- Outreach"
sitemap: false
permalink: /outreach/
---

# Outreach


Watch below some of our recent **[videos](#videos)** at conferences and seminars, where members of our [group](/team) present highlights from our list of [publications](/publications).

You can also listen to insightful **[podcasts](#podcasts)** featuring Dr. Rebekka Burkholz (some are in German and some in English).
  
<h2 id="videos" class="anchor">Videos</h2>

{% for talk in site.data.outreach.videos %}
### {{ talk.speaker }} @ {{ talk.venue }} ({{ talk.date | date: "%b %-d, %Y" }})
#### {{ talk.title }}
<table style="width: 100%; border-spacing: 24px;"><tbody><tr><td style="vertical-align: top; padding-right: 24px;">
Based on papers:
<ul>
{% for paper in talk.papers %}
<li>
        <strong>{{ paper.title }}</strong>,
        {{ paper.authors }},
        <em>{{ paper.conference }}</em>. (<a href="{{ paper.link }}">Link to paper</a>)
</li>
{% endfor %}
</ul>
</td><td>
<iframe width="374" height="210" src="{{ talk.video }}" title="video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</td></tr></tbody></table>
{% endfor %}

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