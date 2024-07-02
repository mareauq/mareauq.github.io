---
layout: single
title: "Cours au collège"
permalink: /college/cours.html
toc: true
toc_sticky: true
toc_label: "Chapitres"
toc_levels: 1..6
toc_icon: ""
sidebar:
  nav: "college"
---

{% assign week = 7 | times: 86400 %}
{% assign quatrejours = 4 | times: 86400 %}
{% assign debutsemaine = site.data.d2.d2_colles.startdate | date : "%s" %}
{% assign finsemaine = site.data.d2.d2_colles.startdate | date : "%s" | plus: quatrejours %}
{% assign number = 1 %}

<ol>
{% for s in site.data.d2.d2_colles.semaines %}
{% if number < 10 %}
{% assign cpt = "0" | append:number %}
{% else %}
{% assign cpt = number %}
{% endif %}

{% if s.holidays != true %}
<li>
<h6 id="colle_{{cpt}}">{{debutsemaine| date:"%d/%m"}}-{{finsemaine| date:"%d/%m"}}</h6>
<a href="./colles/d2-colles{{cpt}}.pdf">{{s.title}}</a>
</li>
{% assign number = number | plus: 1 %}
{% else %}
{{s.title}}
{% endif %}

{% if chap.td %}
<a href="./exercices/college-chap{{number}}.pdf">Exercices</a>
{%if chap.tdsol%},{%else%}.{%endif%}
{% endif %}

{% if chap.tdsol %}
<a href="./exercices/college-exos_s{{number}}.pdf">Solutions</a>.
{% endif %}
</li>
{% endfor %}
</ul>
