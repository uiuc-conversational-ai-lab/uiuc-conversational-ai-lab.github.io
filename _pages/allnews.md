---
title: "News: ConvAI Lab @ UIUC"
layout: textlay
excerpt: "News: ConvAI Lab @ UIUC"
sitemap: false
permalink: /allnews.html
---

# News

{% for article in site.data.news %}
<p>{{ article.date }} <br> {{ article.headline | markdownify}}</p>
{% endfor %}
