---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: true

resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"

tags:
  - Grafana

summary:
  Add summary of the post

---

