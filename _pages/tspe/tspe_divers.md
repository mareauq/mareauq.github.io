---
layout: single
title: Divers
permalink: /tspe/divers.html
toc: false
sidebar:
  nav: "tspe"
---

<ol>
{% for s in site.data.tspe.tspe_divers.doc %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}

<li>
<h2 class="mycss" id="divers_{{number}}"><a href="../_pages/tspe/divers/divers-doc{{number}}.pdf">{{s.title}}</a></h2>
</li>
{% endfor %}
</ol>
