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

{% assign week = 7 | times: 86400 %}
{% assign quatrejours = 4 | times: 86400 %}
{% assign debutsemaine = site.data.d2.d2_colles.startdate | date : "%s" %}
{% assign finsemaine = site.data.d2.d2_colles.startdate | date : "%s" | plus: quatrejours %}

<ol>
{% for s in site.data.college.college_dm.dm %}
{% assign number = forloop.index | plus: 0 %}
{% if number < 10 %}
{% assign number = "0" | append:number %}
{% endif %}

<li>
<h2 class="mycss" id="dm_{{number}}"><a href="../_pages/college/dm/college-dm{{number}}.pdf">Devoir Maison N°{{number}}</a></h2>
</li>

{% endfor %}
</ol>
