---
title: "Sharing thoughts and experience via this Observability blog"
date: 2023-11-18T20:13:23+01:00
pin: true
resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"
---

I am passionate about Observabilty already for a long time. Monitoring tools have been helping me already for quite some years to get insights in the behavior of a service and especially a landscape of services.
In **2016** I was working at a project where we were facing a number of problems and did not really have a clue what was going on in our application landscape. 
I suggested to work on more insights and we stared using [Telegraf](https://github.com/influxdata/telegraf), [InfluxDB](https://github.com/influxdata/influxdb), [Prometheus](https://github.com/prometheus/prometheus) and [Grafana](https://github.com/grafana/grafana). Grafana _3.1_ was the first release we used.
The more metrics we put into InfluxDB the more insight we gained. We were able to move from reactive to proactive. 
The load on the systems was doubling every year, so we knew we had to make sure we were prepared. And because of the insights we were able to invest in the next bottleneck so we could serve customers with the right quality.

### Long time ago ...
Observability is not limited to the tools we know nowadays. Before I started working with tools like Grafana, back in **2013** I started a project [https://github.com/cbos/AnalysisDashboard](https://github.com/cbos/AnalysisDashboard).
The aim of the AnalysisDashboard was to gain more in control over the quality of the buildstreet. Due to the size of the product and the number of teams working on it, this was quite a challenge. We sometimes faced failed builds but we faced even more flaky test. Some were pretty consistent, others failed every now and then.

With the AnalysisDashboard we were able to see more history of a testcase, whether it failed on Windows and/or Linux.
Over time we were able to get it more and more stable, as we you can see in the image below. **These insights helped us in delivery better quality to our customers**.

{{< imgproc analysisdashboard_job_summary Resize "1000x" >}}
Summary of a Jenkins job, 1 square is 1 day. The result is the 'worse' score of that day
{{< /imgproc >}}

### Developer and SRE
With my experience as developer and SRE (Site Reliability Engineer) I am able to look from the outside to a system, but also from the inside.
This is what I like about the whole evolution of [OpenTelemetry](https://opentelemetry.io). OpenTelemetry with OTLP as the format, but also OpenTelemetry instrumentation for languages like Java on one side to make service observable from the inside.
[OpenTelemetry Collector](https://opentelemetry.io/docs/collector/) on the other hand as receiver of Observability signals, actively collecting metrics in a similar way as Telegraf does, and finally pushing all the metrics, logs and traces to multiple storages to be able to bring it all together.

The power of Observability is bringing is all together to get the best insights. Insights in the current state, but also providing insights in the behavior over time.
Over the past years, I have created numerous dashboards for different projects and each time it has helped to get a better understanding of what is actually going on.

Sharing that experience is something I love to do. 

### Inspired by a book
This blog is also inspired by Henk Stoorvogel's book about a 'being man in the second half' [(In Dutch: Man zijn in de tweede helft)](https://www.henkstoorvogel.nl/webshop/geestelijkegroei/man-zijn-in-de-tweede-helft/30)
The book describes a man's journey through life and how to deal with the second half. Being a craftsman and sharing your knowledge with others is one of the things mentioned in the book that has helped me in this direction.
I have a lot of experience because of all the work I have done, from the experience I can now share.

### Sharing knowledge through training
This blog will be a place where I will share my thoughts on Observability, but we also created a training, mainly for developers to get started with OpenTelemetry, but also to bring it the next level.
More info available at: https://openvalue.training/observability_for_developers/