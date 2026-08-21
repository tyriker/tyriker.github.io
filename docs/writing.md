---
layout: default
title: Notes, Ideas, and Lessons
permalink: /writing/
---

# Notes, Ideas, and Lessons

Notes, experiences, and ideas.

{% if site.posts.size > 0 %}
<ul>
  {% for post in site.posts %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
    <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %-d, %Y" }}</time>
  </li>
  {% endfor %}
</ul>
{% else %}
<p>Posts will appear here.</p>
{% endif %}
