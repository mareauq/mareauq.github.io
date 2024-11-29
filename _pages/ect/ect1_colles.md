---
layout: single
title: "Colles d'ECT1"
permalink: /ect/ect1colles.html
toc: false
sidebar:
  nav: "ect"
---

<ol>
{% for s in site.data.ect.ect1.ect_colles.colle %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}

<li>
<h2 class="mycss" id="divers_{{number}}"><a href="../_pages/ect/ect1/colles/ect-colle{{number}}.pdf">{{s.title}}</a></h2>
</li>
{% endfor %}
</ol>