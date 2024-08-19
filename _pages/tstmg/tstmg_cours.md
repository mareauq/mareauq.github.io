---
layout: single
title: "Cours de STMG"
permalink: /tstmg/cours.html
toc: true
toc_sticky: true
toc_label: "Chapitres"
toc_levels: 1..6
toc_icon: ""
sidebar:
  nav: "tstmg"
---

{% assign cptfc = 1 %}
{% assign cpthp = 1 %}
{% assign cpttop = 1 %}
{% assign cpttheme = 1 %}

<ul start="1" style="list-style-type:none">
{% for chap in site.data.tstmg.tstmg_cours.chapitres %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}
  
<li>
{% if chap.chapitre %}
<h2 class="mycss" id="chap_{{number}}"><a href="../_pages/tstmg/cours/tstmg-chap{{number}}.pdf">{{number}} - {{chap.titre}}</a></h2>
{% endif %}

{% if chap.td %}
<a href="../_pages/tstmg/exercices/tstmg-chap{{number}}.pdf">Exercices</a>
{% endif %}

{% if chap.tdsol %}
<a href="./exercices/tstmg-solchap{{number}}.pdf">Solutions</a>.
{% endif %}
</li>
{% endfor %}
</ul>
