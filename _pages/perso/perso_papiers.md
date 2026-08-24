---
layout: single
title: Papiers
permalink: /perso/papiers.html
toc: true
toc_sticky: true
toc_label: "Papiers"
toc_levels: 6
toc_icon: ""
sidebar:
  nav: "perso"
---

{% assign papiers = site.data.perso.perso_papiers.papier | sort: "annee" | reverse %}

<style>
  .papier {
    margin-bottom: 1.5rem;
  }

  .papier h3 {
    margin-bottom: 0.25rem;
  }

  .papier-meta {
    display: flex;
    justify-content: space-between;
    gap: 1rem;
    font-size: 0.9rem;
  }
</style>

## Papiers publiés

{% for papier in papiers %}
  {% if papier.published %}
    {% assign has_published = true %}
<div class="papier">
  <h3><a href="{{ papier.url }}">{{ papier.titre }}</a></h3>
  <div class="papier-meta">
    <span>{{ papier.context }}</span>
    <span>{{ papier.annee }}</span>
  </div>
</div>
  {% endif %}
{% endfor %}

## Papiers non publiés

{% assign has_unpublished = false %}
{% for papier in papiers %}
  {% unless papier.published %}
    {% assign has_unpublished = true %}
<div class="papier">
  <h3><a href="{{ papier.url }}">{{ papier.titre }}</a></h3>
  <div class="papier-meta">
    <span>{{ papier.context }}</span>
    <span>{{ papier.annee }}</span>
  </div>
</div>
  {% endunless %}
{% endfor %}

{% unless has_unpublished %}
Aucun papier non publié pour le moment.
{% endunless %}