---
layout: single
title: "Évaluations en TSPE"
permalink: /tspe/devoirs.html
toc: true
toc_sticky: true
toc_label: "Évaluations"
toc_levels: 1..6
toc_icon: ""
sidebar:
  nav: "tspe"
---

{% assign ds = 1 %}
{% assign inte = 1 %}

<ol>
{% for dev in site.data.tspe.tspe_devoirs.devoirs %}

{% if dev.type == "ds" %}

{% if ds < 10 %}
{% assign cpt = "0" | append:ds %}
{% else %}
{% assign cpt = ds %}
{% endif %}
<li id="{{dev.type}}_{{cpt}}">
<h2 class="mycss" id="devoirs_{{cpt}}"><a href="../_pages/tspe/devoirs/tspe-ds{{cpt}}.pdf">Devoir surveillé n°{{cpt}}</a></h2>
</li>
{% if dev.correc %}
<a href="../_pages/tspe/devoirs/tspe-correcds{{cpt}}.pdf">Correction</a>
{% endif %}
{% assign ds = ds | plus: 1 %}

{% else %}

{% if dev.type == "inte" %}

{% if inte < 10 %}
{% assign cpt = "0" | append:inte %}
{% else %}
{% assign cpt = inte %}
{% endif %}
<li id="{{dev.type}}_{{cpt}}">
<h2 class="mycss" id="devoirs_{{cpt}}"><a href="../_pages/tspe/devoirs/tspe-inte{{cpt}}.pdf">Interrogation n°{{cpt}}</a></h2>
</li>
{% if dev.correc %}
<a href="../_pages/tspe/devoirs/tspe-correcinterro{{cpt}}.pdf">Correction</a>
{% endif %}
{% assign inte = inte | plus: 1 %}

{% endif %}

{% endif %}
{% endfor %}
</ol>
