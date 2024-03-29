---
layout: page
permalink: /publications/
title: publications
description: 
years: [2024,2023, 2022, 2021, 2020, 2019]
nav: true
nav_order: 1
---
<!-- _pages/publications.md -->

Please refer to [Google Scholar](https://scholar.google.com/citations?user=Do2NTNsAAAAJ&hl=en) for the most up-to-date publications list. 
<div class="publications">


{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
