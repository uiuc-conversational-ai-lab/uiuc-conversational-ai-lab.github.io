---
title: "News: ConvAI Lab @ UIUC"
layout: textlay
excerpt: "News: ConvAI Lab @ UIUC"
sitemap: false
permalink: /news/
---

# News

<div class="news-container">
  {% for article in site.data.news %}
    <div class="news-item">
      <p class="news-date">{{ article.date }}</p>
      <h3 class="news-headline">{{ article.headline | markdownify }}</h3>

      {% if article.content %}
        <p class="news-content">{{ article.content | markdownify }}</p>
      {% endif %}

      {% if article.link %}
        <p><a href="{{ article.link }}" target="_blank">Read more</a></p>
      {% endif %}
    </div>
    <hr>
  {% endfor %}
</div>
