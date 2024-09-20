---
title: "Team: ConvAI Lab @ UIUC"
layout: gridlay
excerpt: "Team: ConvAI Lab @ UIUC"
sitemap: false
permalink: /team
---


## Lab Members


### Faculty

{% assign number_printed = 0 %}
{% for member in site.data.faculty %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="member-container" style="display: flex; align-items: center; margin-bottom: 20px;">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="150px" style="border-radius: 10px; margin-right: 20px;" />
  <div>
    <h4 style="color: #007bff;"><a href="{{ member.webpage }}" style="text-decoration: none;">{{ member.name }}</a></h4>
    <p><strong>{{ member.info }}</strong></p>

    {% if member.number_educ == 1 %}
    <p>{{ member.education1 }}</p>
    {% endif %}

    {% if member.number_educ == 2 %}
    <p>{{ member.education1 }}, {{ member.education2 }}</p>
    {% endif %}

    {% if member.has_past_aff == 1 %}
    <p>Past Affiliations: {{ member.past_aff }}</p>
    {% endif %}

    {% if member.has_hobbies == 1 %}
    <p>Hobbies: {{ member.hobbies }}</p>
    {% endif %}

    <p><a href="mailto:{{ member.email }}" style="color: #007bff;">{{ member.email }}</a></p>
  </div>
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








### PhD Students

{% assign number_printed = 0 %}
{% for member in site.data.phd_students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="33%" style="float: left" />
  <h4><a href="{{ member.webpage }}">{{ member.name }}</a></h4>
  <i>{{ member.info }} </i> 

  {% if member.number_educ == 1 %}
  {{ member.education1 }}
  {% endif %}

  {% if member.number_educ == 2 %}
  {{ member.education1 }}, {{ member.education2 }} 
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_hobbies == 1 %}
  Hobbies: {{ member.hobbies }} 
  {% endif %}

  <a href="mailto:{{ member.email }}">{{ member.email }}</a>
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





### Undergrad Students

{% assign number_printed = 0 %}
{% for member in site.data.bs_students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="33%" style="float: left" />
  <h4><a href="{{ member.webpage }}">{{ member.name }}</a></h4>
  <i>{{ member.info }} </i> 

  {% if member.number_educ == 1 %}
  {{ member.education1 }}
  {% endif %}

  {% if member.number_educ == 2 %}
  {{ member.education1 }}, {{ member.education2 }} 
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_hobbies == 1 %}
  Hobbies: {{ member.hobbies }} 
  {% endif %}

  <a href="mailto:{{ member.email }}"> {{ member.email }} </a>
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
















































































<!-- ## Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
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


## Administrative Support
<a href="mailto:Rijsewijk@Physics.LeidenUniv.nl">Ellie van Rijsewijk</a> is helping us (and other groups) with administration. -->
