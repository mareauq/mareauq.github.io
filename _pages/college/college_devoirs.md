---
layout: single
title: Devoirs au collège
permalink: /college/devoirs.html
sidebar:
  nav: "college"
---

{% assign dl = 1 %}
{% assign dc = 1 %}
{% assign ds = 1 %}

<ol>
{% for s in site.data.college.college_devoirs.devoirs %}
{% if s.type == "dl" %}
{% if dl < 10 %}
{% assign cpt = "0" | append:dl %}
{% else %}
{% assign cpt = dl %}
{% endif %}
<li id="{{s.type}}_{{cpt}}">
<h2 class="mycss" id="devoirs_{{number}}"><a href="../_pages/college/devoirs/college-devoir{{number}}.pdf">Évaluation N°{cpt}</a></h2>
</li>
{% assign dl = dl | plus: 1 %}

{% else %}
{% if s.type == "dc" %}
{% if dc < 10 %}
{% assign cpt = "0" | append:dc %}
{% else %}
{% assign cpt = dc %}
{% endif %}
<li>
<a href="./devoirs/d2-dc{{cpt}}.pdf">dc n°{{cpt}}</a> : {{s.title}}
</li>
{% assign dc = dc | plus: 1 %}

{% else %}
{% if s.type == "ds" %}
{% if ds < 10 %}
{% assign cpt = "0" | append:ds %}
{% else %}
{% assign cpt = ds %}
{% endif %}
<li>
<a href="./devoirs/d2-ds{{cpt}}_enonce.pdf">ds n°{{cpt}}</a> : {{s.title}}
</li>
{% assign ds = ds | plus: 1 %}
{% endif %}
{% endif %}
{% endif %}
{% endfor %}
</ol>
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


<ul start="1" style="list-style-type:none">
{% for dl in site.data.college.college_devoirs.devoirs %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}
  
<li>
<h2 class="mycss" id="devoirs_{{number}}"><a href="../_pages/devoirs/college-devoir{{number}}.pdf">Devoir N°{{number}}</a></h2>
