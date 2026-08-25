---
layout: single
title: Les DM au collège
permalink: /college/dm.html
toc: true
toc_sticky: true
toc_label: "Devoirs maison"
toc_levels: 6
toc_icon: ""
sidebar:
  nav: "college"
---

<ol>
{% for s in site.data.college.college_dm.dm %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}

<li>
<h2 class="mycss" id="dm_{{number}}"><a href="../_pages/college/dm/college-dm{{number}}.pdf">Devoir Maison N°{{number}}</a></h2>
</li>
{% if s.correc %}
<a href="../_pages/college/dm/college-correcdm{{number}}.pdf">Correction</a>
{% endif %}
{% endfor %}
</ol>
