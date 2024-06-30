---
layout: single
title: Devoirs au college
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
<a href="./devoirs/college-devoir{{cpt}}.pdf">Évaluation n°{{cpt}}</a> : 
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
