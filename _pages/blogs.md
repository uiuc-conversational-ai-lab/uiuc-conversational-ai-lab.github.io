---
title: "Blogs: ConvAI Lab @ UIUC"
layout: gridlay
excerpt: "Blogs: ConvAI Lab @ UIUC"
sitemap: false
permalink: /blogs/
---


# Blogs

<!-- ## Group highlights

**At the end of this page, you can find the [full list of blogcations and patents](#full-list-of-blogcations). All papers are also available on [arXiv](https://arxiv.org/search/?searchtype=author&query=Allan%2C+M+P).**

{% assign number_printed = 0 %}
{% for blog in site.data.bloglist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if blog.highlight == 1 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
 <div class="well">
  <pubtit>{{ blog.title }}</pubtit>
  <img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ blog.image }}" class="img-responsive" width="33%" style="float: left" />
  <p>{{ blog.description }}</p>
  <p><em>{{ blog.authors }}</em></p>
  <p><strong><a href="{{ blog.link.url }}">{{ blog.link.display }}</a></strong></p>
  <p class="text-danger"><strong> {{ blog.news1 }}</strong></p>
  <p> {{ blog.news2 }}</p>
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

<p> &nbsp; </p> -->

<!-- 
## Patents
<em>Milan P Allan, S Gröblacher, RA Norte, M Leeuwenhoek</em><br />Novel atomic force microscopy probes with phononic crystals<br /> PCT/NL20-20/050797 (2020)

<em>Milan P Allan</em><br /> Methods of manufacturing superconductor and phononic elements <br /> <a href="https://patents.google.com/patent/US10439125B2/en?inventor=Milan+ALLAN&oq=inventor:(Milan+ALLAN)">US10439125B2 (2016)</a> -->

<!-- ## Full List of blogcations -->

<!-- {% for blog in site.data.bloglist %}

  <a href="{{ blog.link.url }}">{{ blog.title }}</a> <br />
  <em>{{ blog.authors }} </em><br />{{ blog.link.display }}

{% endfor %} -->

<!-- (&#42; indicates equal contribution) -->

{% assign number = 0 %}
{% for blog in site.data.bloglist %}
{% assign number = number | plus: 1 %}
{{ number }}. {% if blog.link.url %}[**{{ blog.title }}**]({{ blog.link.url }}){:target="_blank"}{% else %}**{{ blog.title }}**{% endif %}<br />
<em>{{ blog.authors }}</em><br />
<!-- {{ blog.link.display }} -->
{% endfor %}
