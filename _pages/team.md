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






<--### Undergrad Students

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

</div>
