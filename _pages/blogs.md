---
title: "Blogs: ConvAI Lab @ UIUC"
layout: gridlay
excerpt: "Blogs: ConvAI Lab @ UIUC"
sitemap: false
permalink: /blogs/
---

# Blogs


{% assign number_printed = 0 %}
{% for blogli in site.data.bloglist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if blogli.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit><a href="{{ blogli.link.url }}">{{ blogli.title }}</a></pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ blogli.image }}" class="img-responsive" width="45%" style="float: left" />
  <p>{{ blogli.description }}</p>
  <p><em>{{ blogli.authors }}</em></p>
  <p><em>{{ blogli.date }}</em></p>
 </div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>