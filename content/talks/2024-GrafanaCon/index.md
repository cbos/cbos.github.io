---
title: "GrafanaCON"
date: 2024-04-09T02:00:00Z
pin: false

resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"

tags:
  - Grafana
  - Loki
  - Traces
  - Promtail
  - logcli
  
conference:
  name: GrafanaCON
  location: Amsterdam
  date: April 9-10, 2024
  url: https://grafana.com/events/grafanacon/2024
talk:
  url: https://grafana.com/events/grafanacon/2024/transform-log-files-into-custom-traces-to-identify-performance-issues/
  title: How visualizing logs converted to traces can uncover performance problems
  abstract:
    Interruptions in a service and no clue why it happened? Visualizations help to identify problems and give more insight into how a service actually behaved. 
    In some situations, logging is supported, but traces that can help find root cause are missing. 
    What if you could turn logs into traces? In this talk, OpenValue Software Engineer and SRE Cees Bos will show how to transform log files from two interacting services into custom traces and load them into Grafana, identify problems that are not visible without created traces, and then verify that the subsequent fixes worked. 
    Problem hunting isn’t always easy, but tools like Promtail, Loki, logcli, and the trace visualization in Grafana can be used to find issues in an uncommon way if the common way is not good enough.


carousel:
    images:
      - image: grafanacon.jpg
      - image: champions.jpg
      - image: presenting.jpg
      - image: presenting2.jpg
      - image: badge.jpg
      - image: unconference.jpg
        content_html: "Unconference topics, explore traces as first"
      - image: unconference2.jpg
        content_html: "Introduction of unconference topic explore traces"

---

During GrafanaCON I presented by talk and I also introduced the topic 'explore traces' during the Unconference track.

#### Talk

{{< youtube id=Z1E647KipA0 controls=true allowFullScreen=true  >}} 

#### Slides

{{< slideshare key=F05fJTCgAF5Qwd >}}

#### Photos

{{< carousel items="1" height="600" unit="px" duration="5000" >}}
