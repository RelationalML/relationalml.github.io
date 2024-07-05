---
title: "Relational ML - Team"
layout: gridlay
excerpt: "Relational ML -- Team"
sitemap: false
permalink: /team/
---

# Team Members

{% assign first = 0 %}
{% for group in site.data.team_members %}
{% assign number_printed = 0 %}
{% for member in group.members %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 0 and first != 1 %}
<div class="row">
{% endif %}

{% if forloop.first and first > 1 %}
<h3 style="margin-left:16px;" >{{group.role}}</h3>
{% endif %}

<div class="col-sm-6 clearfix">

{% if first < 2 %}
<h3>{{group.role}}</h3>
{% endif %}

{% if member.photo %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/team/{{ member.photo }}" 
  class="img-responsive" width="20%" style="float: left; margin: 0px 22px 24px 0;" />
{% else %}
  <img src="{{ site.url }}{{ site.baseurl }}/images/team/blank.jpg"
  class="img-responsive" width="20%" style="float: left; margin: 0px 22px 24px 0;" />
{% endif %}
{% if first > 1 %}
  <h4 style="margin-top:-11px;">{{ member.name }}</h4>
{% else %}
  <h4>{{ member.name }}</h4>
{% endif %}
  [Homepage]({{ member.url }})
  | [Email](mailto:{{ member.email }})
  <br>
  <i>since {{ member.start_date }}</i>
</div>

{% if even_odd == 1 or forloop.last and first != 0 %}
</div>
{% endif %}

{% assign number_printed = number_printed | plus: 1 %}
{% assign first = first | plus: 1 %}

{% endfor %}
{% endfor %}

{% if site.data.alumni_members.size > 0 %}

## Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/team/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}
{% endif %}

{% if site.data.alumni_visitors > 0 %}
## Former visitors, BSc/ MSc students
<div class="row">

<div class="col-sm-4 clearfix">
<h4>Visitors</h4>
{% for member in site.data.alumni_visitors %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Master students</h4>
{% for member in site.data.alumni_msc %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Bachelor Students</h4>
{% for member in site.data.alumni_bsc %}
{{ member.name }}
{% endfor %}
</div>

</div>
{% endif %}
