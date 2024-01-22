---
title: "Observability Toolkit"
date: 2024-01-22T20:58:23+01:00
pin: true

resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"

tags:
  - Observability Toolkit
  - Grafana
  - Loki
  - Tempo
  - Prometheus
  - OpenTelemetry
---

Already for years I use several tools locally for all kind of situations for development and troubleshooting.

> Can you share the setup you locally use?

Last year I was involved in the investigation of major incidents where I used `Promtail`, `Loki` and `Grafana` to find the cause.
Colleagues asked: Can you share the setup you use locally? Of course, and I shared a zip file with a `docker-compose.yml` and some config files.



With the new posts I will also try to update the Observability Toolkit as reference material (if applicable).

# As Docker Extension?

With Docker Desktop it is possible to install [Docker extensions](https://www.docker.com/products/extensions/) which will help the life of users.   
My thoughts are that is can be helpful to make the Observability Toolkit available as Docker extension.   
I have some ideas on how that should look like and how it can be created.   
Before spending time in creating an extension which will not be used at all, I would like to know if there is interest in such a Docker extension.    
Please leave a message below if you are interested.
