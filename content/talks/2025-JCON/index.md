---
title: "JCON"
date: 2025-04-21T02:00:00Z
pin: false

resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"

tags:
  - Grafana
  - OpenTelemetry
  - Traces
  - Java
  
conference:
  name: JCON
  location: Cologne, Germany
  date: May 12 – 15, 2025
  url: https://2025.europe.jcon.one/
talk:
  url: https://schedule.jcon.one/session/781034
  title: How I solved production issues with OpenTelemetry (and how you can too)
  abstract:
    Ensuring the reliability of your Java applications is critical in today's fast-paced world. But how do you identify and fix production issues before they get worse? With cloud-native applications, it can be even more difficult because you can't log into the system to get some of the data you need. The answer lies in observability - and in particular, OpenTelemetry.<BR>
    <BR>
    In this session, I'll show you how I used OpenTelemetry to solve several production problems. You'll learn how I uncovered critical issues that were invisible without the right telemetry data - and how you can do the same. OpenTelemetry provides the tools you need to understand what's happening in your application in real time, from tracking down hidden bugs to uncovering system bottlenecks. These solutions have significantly improved our applications' performance and reliability.<BR>
    <BR>
    A key concept we will use is traces. Architecture diagrams often don't tell the whole story, especially in microservices landscapes. I'll show you how traces can help you build a service graph and save you hours in a crisis. A service graph gives you an overview and helps to find problems.<BR>
    <BR>
    Whether you're new to observability or a seasoned professional, this session will give you practical insights and tools to improve your application's observability and change the way how you handle production issues. Solving problems is much easier with the right data at your fingertips.

carousel:
    images:
      - image: speaker_banner.png

---

#### Slides

{{< slideshare key="cSGMpae1hwkaJa" >}}

#### Details about code examples

An overview of the demo setup I used during the presentation:   
![Demo setup](demo_services.png)   

The `K6` scripts and the code of `Alpha` en `Beta` services can be found here:   
🖵 [https://github.com/cbos/solving-problems-with-opentelemetry](https://goto.ceesbos.nl/solving-problems-with-otel)

The `OpenTelemetry collector`, `Prometheus`, `Tempo`, `Loki` and `Grafana` are part of the Observability Toolkit:   
🖵 [https://github.com/cbos/observability-toolkit](https://goto.ceesbos.nl/observability-toolkit)

##### OpenTelemetry documentation

As mentioned during the talk, OpenTelemetry has a lot of good documentation.   
Here are some links:   
- 🗎 [Java support introduction](https://opentelemetry.io/docs/languages/java/intro/)

And some more links on zero code/auto-instrumentation:   
- 🗎 [Java agent](https://opentelemetry.io/docs/zero-code/java/agent/)   
- 🗎 [Annotations](https://opentelemetry.io/docs/zero-code/java/agent/annotations/) to create internal spans for example   
- 🗎 [API](https://opentelemetry.io/docs/zero-code/java/agent/api/) to enrich your spans and create custom metrics    

#### 📣 Application Observability Code Challenges

With [Application Observability Code Challenges](/posts/application-observability-code-challenges) you can practice yourself.    
The goals of the challenges:


The goals of the challenges:
- 🎉 - Have fun !
- 🖵 - Learn to understand the behaviour of the code
- 📈 - Learn how to use observability tools to understand code behaviour 📈
- 🔍 - Spot the unexpected behaviour!
- 🤗 - Practice and learn!
- 🎁 - Share your findings and solution, either as a comment or as a pull request


Here is a list of available code challenges:

{{< challenges >}}

#### JCON Talk announcement

![Announcement](speaker_banner.png)







