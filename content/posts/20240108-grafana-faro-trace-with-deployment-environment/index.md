---
title: "Grafana Faro traces with deployment.environment"
date: 2024-01-08T16:45:00+01:00
pin: true
draft: true

resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"
tags:
  - OpenTelemetry
  - Grafana
  - Faro
  - Tempo
  - Hugo
  - Traces
---

One of the great things of OpenTelemetry is standardisation on span attributes and resource attributes.   
An example of that is `deployment.environment`

https://opentelemetry.io/docs/specs/semconv/resource/deployment-environment/

| Attribute  | Type | Description  | Examples  | Requirement Level |
|---|---|---|---|---|
| `deployment.environment` | string | Name of the [deployment environment](https://wikipedia.org/wiki/Deployment_environment) (aka deployment tier). [1] | `staging`; `production` | Recommended |

With Grafana Faro you can configure the environment, as I explained in my [blog post](../20231124-blog-observability-with-grafana-faro) about the setup of Grafana Faro. This adds `environment` to the setup. 
In my [technical deep dive](../20231204-technical-deep-dive-into-grafana-faro) blog post I explained that the data is send as logs and as traces.
The logs contain the environment attribute, but traces do not have the environment attribute.

### Adding deployment.environment to traces

It is very easy to add `deployment.environment` to traces as well.

```js
webTracingScript.onload = () => {
    window.GrafanaFaroWebSdk.faro.instrumentations.add(
        new window.GrafanaFaroWebTracing.TracingInstrumentation({
            resourceAttributes: {
                "deployment.environment": "production"
            }
        })
    );
};
```
That is what I added to the Hugo Faro Analytics module:   
https://github.com/cbos/hugo-faro-analytics/commit/d4aeb1f973d4d38864d580bf32086ac1508d9506   

![git commmit](git_change.png)



![traces with deployment environment](traces_with_deployment_environment.png)


