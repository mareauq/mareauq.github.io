---
layout: single
title: Divers
permalink: /college/divers.html
toc: false
sidebar:
  nav: "college"
---

<ol>
{% for s in site.data.college.college_divers.doc %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}

<li>
<h2 class="mycss" id="divers_{{number}}"><a href="../_pages/college/divers/divers-doc{{number}}.pdf">{{s.title}}</a></h2>
</li>
{% endfor %}
</ol>
