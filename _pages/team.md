---
title: "Relational ML - Team"
layout: gridlay
excerpt: "Relational ML -- Team"
sitemap: false
permalink: /team/
---

# Team Members

{% for group in site.data.team_members %}
{% assign number_printed = 0 %}
{% for member in group.members %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 0 %}
<div class="row">
{% endif %}

{% if forloop.first %}
<h3 style="margin-left:16px;" >{{group.role}}</h3>
{% endif %}

<div class="col-sm-6 clearfix">


{% if member.photo %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/team members/{{ member.photo }}" 
  class="img-responsive" width="20%" style="float: left; margin: 0px 22px 24px 0;" />
{% else %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/team members/blank.jpg"
  class="img-responsive" width="20%" style="float: left; margin: 0px 22px 24px 0;" />
{% endif %}
  <h4>{{ member.name }}</h4>
  [Homepage]({{ member.url }})
  | [Email](mailto:{{ member.email }}) 
  {%- if member.scholar %} | <a href="{{ member.scholar}}"><svg xmlns="http://www.w3.org/2000/svg" height="0.75em" aria-label="Google Scholar" role="img" viewBox="102 112 310 328"><path fill="currentColor" d="M213 111l-107 94h69c5 45 41 64 78 67-7 18-4 27 7 39-43 1-103 26-103 67 4 45 63 54 92 54 38 1 81-19 90-54 4-35-10-54-31-71-23-18-28-28-21-40 15-17 35-27 39-51 2-17-2-28-6-43l45-38-1 16c-3 2-5 6-5 9v103c2 13 22 11 23 0V160c0-3-2-7-5-8v-25l16-16zm58 141c-61 10-87-87-38-99 56-11 83 86 38 99zm-5 73c60 13 61 63 10 78-44 9-82-4-81-30 0-25 35-48 71-48z"/></svg></a> {%- endif -%} 
  {% if member.description %}
   |  <a class="membercv" role="button">Show bio↓</a> {% endif %} <br>
  <i>since {{ member.start_date }}</i>
  {% if member.description %}
<div class="membercv hidden">
{{ member.description }}
</div>
  {% endif %}
</div>

{% if even_odd == 1 or forloop.last %}
</div>
{% endif %}

{% assign number_printed = number_printed | plus: 1 %}

{% endfor %}
{% endfor %}




## Alumni

{% assign number_printed = 0 %}
{% for group in site.data.alumni_members %}

{% assign full_width = true %}
<!-- {% if group.role contains "Research assistants" or group.role contains "Master's thesis" %}
{% assign full_width = true %}  
{% endif %} -->

{% assign mod_two = number_printed | modulo: 2 %}
{% if full_width and mod_two != 0 %}
</div>
{% assign number_printed = 0 %}
{% assign mod_two = 0 %}
{% endif %}

{% if full_width %}
<div class="row">
<div class="col-sm-12 clearfix">

{% else %}
{% if mod_two == 0 %}
<div class="row">
{% endif %}
<div class="col-sm-6 clearfix">
{% endif %}

<h3>{{group.role}}</h3>
{% for member in group.members %}
{% if member.url %}<a href="{{ member.url }}">{{ member.name }}</a>{% else %}{{ member.name }}{% endif -%}
{%- if member.from %} ({{ member.from }}){%- endif -%}
{%- if member.date_thesis -%}: <i>{% if member.url_thesis -%}<a href="{{ member.url_thesis }}">{{ member.thesis }}</a>{% else %}{{ member.thesis }}{% endif %}</i>, {{ member.date_thesis }}.{%- else -%}: 
{{ member.start_date }}-{{ member.end_date }}{%- if member.next -%}. Next {%- endif -%}
{% for next in member.next %} ⇢ {{ next }}{% endfor %}.{%- endif %}
{% endfor %}
</div>

{% if full_width %}
{% assign number_printed = 1 %}
{% endif %}

{% assign number_printed = number_printed | plus: 1 %}
{% assign mod_two = number_printed | modulo: 2 %}

{% if mod_two == 0 or forloop.last %}
</div>
{% endif %}

{% endfor %}


<br>