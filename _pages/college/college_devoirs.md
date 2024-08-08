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
{% assign dc = 1 %}
{% assign ds = 1 %}

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

{% else %}
{% if dev.type == "dc" %}
{% if dc < 10 %}
{% assign cpt = "0" | append:dc %}
{% else %}
{% assign cpt = dc %}
{% endif %}
<li>
<a href="./devoirs/d2-dc{{cpt}}.pdf">dc n°{{cpt}}</a> : {{dev.title}}
</li>
{% assign dc = dc | plus: 1 %}

{% else %}
{% if dev.type == "ds" %}
{% if ds < 10 %}
{% assign cpt = "0" | append:ds %}
{% else %}
{% assign cpt = ds %}
{% endif %}
<li>
<a href="./devoirs/d2-ds{{cpt}}_enonce.pdf">ds n°{{cpt}}</a> : {{dev.title}}
</li>
{% assign ds = ds | plus: 1 %}
{% endif %}
{% endif %}
{% endif %}
{% endfor %}
</ol>
