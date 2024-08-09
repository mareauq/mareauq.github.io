---
layout: single
title: DM de TSPE
permalink: /tstmg/dm.html
toc: true
toc_sticky: true
toc_label: "Devoirs maison"
toc_levels: 6
toc_icon: ""
sidebar:
  nav: "tstmg"
---

<ol>
{% for s in site.data.tstmg.tstmg_dm.dm %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}

<li>
<h2 class="mycss" id="dm_{{number}}"><a href="../_pages/tstmg/dm/tstmg-dm{{number}}.pdf">Devoir Maison n°{{number}}</a></h2>
</li>
{% if s.correc %}
<a href="../_pages/tspe/dm/tstmg-correcdm{{number}}.pdf">Correction</a>
{% endif %}
{% endfor %}
</ol>
