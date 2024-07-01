---
layout: single
title: "Cours au collège"
permalink: /college/cours.html
toc: true
toc_sticky: true
toc_label: "Chapitres"
toc_levels: 1..6
toc_icon: "infinity"
sidebar:
  nav: "college"
---

{% assign cptfc = 1 %}
{% assign cpthp = 1 %}
{% assign cpttop = 1 %}
{% assign cpttheme = 1 %}

<ul start="1" style="list-style-type:none">
{% for chap in site.data.college.college_cours.chapitres %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}
  
<li>
<h2 class="mycss" id="chap_{{number}}"><a href="./cours/college-chap>{{number}} - {{chap.titre}}</a>
{% if chap.ref %}
<a href="./ref/{{chap.ref}}" class="ref">&Sigma;</a>
{% endif %}</h2>
{% if chap.chapitre %}
<h2><a href="./cours/college-chap{{number}}.pdf">Cours</a></h2>
<nospace/>
{%if chap.td or chap.tdsol%},{%else%}.{%endif%}
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
