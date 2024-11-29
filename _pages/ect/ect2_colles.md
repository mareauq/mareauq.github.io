---
layout: single
title: Colles d'ECT2
permalink: /ect/ect2colles.html
toc: false
sidebar:
  nav: "ect2"
---

<ol>
{% for s in site.data.ect.ect2.ect_colles.colle %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}

<li>
<h2 class="mycss" id="divers_{{number}}"><a href="../_pages/ect/ect2/colles/ect-colle{{number}}.pdf">{{s.title}}</a></h2>
</li>
{% endfor %}
</ol>