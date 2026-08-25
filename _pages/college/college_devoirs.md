---
layout: single
title: "Évaluations du collège"
permalink: /college/devoirs.html
toc: true
toc_sticky: true
toc_label: "Évaluations"
toc_levels: 1..6
toc_icon: ""
sidebar:
  nav: "college"
---

{% assign dl = 1 %}

<ol>
{% for dev in site.data.college.college_devoirs.devoirs %}
{% if dev.type == "dl" %}
{% if dl < 10 %}
{% assign cpt = "0" | append:dl %}
{% else %}
{% assign cpt = dl %}
{% endif %}
<li id="{{dev.type}}_{{cpt}}">
<h2 class="mycss" id="devoirs_{{cpt}}"><a href="../_pages/college/devoirs/college-devoir{{cpt}}.pdf">Évaluation N°{{cpt}}</a></h2>
</li>
{% if dev.correc %}
<a href="../_pages/college/devoirs/college-correcdevoir{{cpt}}.pdf">Correction</a>
{% endif %}
{% assign dl = dl | plus: 1 %}
{% endif %}
{% endfor %}
</ol>
