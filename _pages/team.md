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

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="33%" style="float: left" />
  <h4><a href="{{ member.webpage }}">{{ member.name }}</a></h4>
  {% assign _info = member.info | default: "" | strip %}{% if _info != "" %}<i>{{ _info }}</i>{% endif %}

  {% if member.number_educ == 1 %}
  {{ member.education1 }}
  {% endif %}

  {% if member.number_educ == 2 %}
  {{ member.education1 }}, {{ member.education2 }} 
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_research_interests == 1 %}
  Research Interests: {{ member.research_interests }} 
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


{% if site.data.postdoc and site.data.postdoc != empty %}
### Postdocs

{% assign number_printed = 0 %}
{% for member in site.data.postdoc %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="33%" style="float: left" />
  <h4><a href="{{ member.webpage }}">{{ member.name }}</a></h4>
  {% assign _info = member.info | default: "" | strip %}{% if _info != "" %}<i>{{ _info }}</i>{% endif %}

  {% if member.number_educ == 1 %}
  {{ member.education1 }}
  {% endif %}

  {% if member.number_educ == 2 %}
  {{ member.education1 }}, {{ member.education2 }} 
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_research_interests == 1 %}
  Research Interests: {{ member.research_interests }} 
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
  {% assign _info = member.info | default: "" | strip %}{% if _info != "" %}<i>{{ _info }}</i>{% endif %}

  {% if member.number_educ == 1 %}
  {{ member.education1 }}
  {% endif %}

  {% if member.number_educ == 2 %}
  {{ member.education1 }}, {{ member.education2 }} 
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_research_interests == 1 %}
  Research Interests: {{ member.research_interests }} 
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


### Masters Students

{% assign number_printed = 0 %}
{% for member in site.data.ms_students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="33%" style="float: left" />
  <h4><a href="{{ member.webpage }}">{{ member.name }}</a></h4>
  {% assign _info = member.info | default: "" | strip %}{% if _info != "" %}<i>{{ _info }}</i>{% endif %}

  {% if member.number_educ == 1 %}
  {{ member.education1 }}
  {% endif %}

  {% if member.number_educ == 2 %}
  {{ member.education1 }}, {{ member.education2 }} 
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_research_interests == 1 %}
  Research Interests: {{ member.research_interests }} 
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

{% if site.data.visiting_scholars and site.data.visiting_scholars != empty %}
### Visiting Scholars

{% assign number_printed = 0 %}
{% for member in site.data.visiting_scholars %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="33%" style="float: left" />
  <h4><a href="{{ member.webpage }}">{{ member.name }}</a></h4>
  {% assign _info = member.info | default: "" | strip %}{% if _info != "" %}<i>{{ _info }}</i>{% endif %}

  {% assign _affiliation = member.affiliation | default: "" | strip %}
  {% if _affiliation != "" %}
  Affiliation: {{ _affiliation }}
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_research_interests == 1 %}
  Research Interests: {{ member.research_interests }} 
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
{% endif %}

<!--### Undergrad Students

{% assign number_printed = 0 %}
{% for member in site.data.bs_students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/convai_members/{{ member.photo }}" class="img-responsive" width="33%" style="float: left" />
  <h4><a href="{{ member.webpage }}">{{ member.name }}</a></h4>
  {% assign _info = member.info | default: "" | strip %}{% if _info != "" %}<i>{{ _info }}</i>{% endif %}

  {% if member.number_educ == 1 %}
  {{ member.education1 }}
  {% endif %}

  {% if member.number_educ == 2 %}
  {{ member.education1 }}, {{ member.education2 }} 
  {% endif %}

  {% if member.has_past_aff == 1 %}
  Past Affiliations: {{ member.past_aff }} 
  {% endif %}

  {% if member.has_research_interests == 1 %}
  Research Interests: {{ member.research_interests }} 
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
-->

## Alumni

{% include alumni-grid.html %}


