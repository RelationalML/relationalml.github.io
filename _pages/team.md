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
  <br>
  <i>since {{ member.start_date }}</i>
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
{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 0 %}
<div class="row">
{% endif %}


<div class="col-sm-6 clearfix">
<h3>{{group.role}}</h3>
<ul>
{% for member in group.members %}
<li style="margin-left:-16px;" 
>{% if member.url %}<a href="{{ member.url }}">{{ member.name }}</a>{% else %}{{ member.name }}{% endif %}:
<i>{{ member.start_date }} - {{ member.end_date }}</i>.</li>
{% endfor %}
</ul>
</div>

{% if even_odd == 1 or forloop.last %}
</div>
{% endif %}

{% assign number_printed = number_printed | plus: 1 %}

{% endfor %}

<br>