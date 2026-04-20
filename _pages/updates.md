---
title: "Updates: ConvAI Lab @ UIUC"
layout: textlay
excerpt: "Updates: ConvAI Lab @ UIUC"
sitemap: false
permalink: /updates/
---

# Updates

<p class="updates-note">Featured posts from <a href="https://x.com/convai_uiuc" target="_blank" rel="noopener">@convai_uiuc</a> on X — paper drops, announcements, talks, and lab news.</p>

{% assign has_tweets = false %}
{% for t in site.data.tweets_rendered %}{% if t.body %}{% assign has_tweets = true %}{% endif %}{% endfor %}

{% if has_tweets %}
<div class="updates-feed" markdown="0">
{% for t in site.data.tweets_rendered %}{% if t.body %}
<article class="update-card{% if t.is_repost %} update-card--repost{% endif %}">
{% if t.is_repost %}<div class="update-repost-banner">↻ Reposted by <a href="https://x.com/convai_uiuc" target="_blank" rel="noopener">@convai_uiuc</a></div>{% endif %}
<header class="update-head">
{% if t.avatar %}<img class="update-avatar" src="{{ t.avatar }}" alt="{{ t.author }}" loading="lazy" />{% else %}<div class="update-avatar update-avatar--placeholder">{{ t.author | slice: 0, 1 }}</div>{% endif %}
<div class="update-meta">
<a href="{{ t.author_url }}" class="update-author" target="_blank" rel="noopener">{{ t.author }}</a>
<a href="{{ t.author_url }}" class="update-handle" target="_blank" rel="noopener">@{{ t.handle }}</a>
</div>
<a href="{{ t.url }}" class="update-date" target="_blank" rel="noopener">{{ t.date }}</a>
</header>
<div class="update-body">{{ t.body }}</div>
{% if t.images and t.images.size > 0 %}
<div class="update-media update-media--{{ t.images.size }}">
{% for img in t.images %}<a href="{{ t.url }}" target="_blank" rel="noopener"><img src="{{ img }}" alt="Post image" loading="lazy" /></a>{% endfor %}
</div>
{% endif %}
<footer class="update-foot">
<a class="update-view" href="{{ t.url }}" target="_blank" rel="noopener">View on X →</a>
</footer>
</article>
{% endif %}{% endfor %}
</div>
{% else %}
<div class="updates-empty">
  <p>No featured posts yet. Follow <a href="https://x.com/convai_uiuc" target="_blank" rel="noopener">@convai_uiuc</a> on X for live updates.</p>
</div>
{% endif %}
