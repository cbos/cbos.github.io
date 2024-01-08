---
title: "Adding deployment.environment to Grafana Faro traces"
date: 2024-01-08T20:10:00+01:00
pin: true

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

One of the great things about OpenTelemetry is the standardisation of span attributes and resource attributes.   
An example of this is `deployment.environment`.

| Attribute  | Type | Description  | Examples  | Requirement Level |
|---|---|---|---|---|
| `deployment.environment` | string | Name of the [deployment environment](https://wikipedia.org/wiki/Deployment_environment) (aka deployment tier). | `staging`; `production` | Recommended |

Source: https://opentelemetry.io/docs/specs/semconv/resource/deployment-environment/

With Grafana Faro you can configure the environment, as I explained in my [blog post](../20231124-blog-observability-with-grafana-faro) about the setup of Grafana Faro. This adds `environment` to the setup. 
In my [technical deep dive](../20231204-technical-deep-dive-into-grafana-faro) blog post I explained that the data is sent as logs and as traces.
The logs include the environment attribute which you can find that as `app_environment` attribute. 
But the information is **not available in the traces** stored in Tempo.

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

This is the result:

![traces with deployment environment](traces_with_deployment_environment.png)

![trace_details](trace_details.png)

### Span metrics per environment

With this as a result, you can create dashboards where you can distinguish between the different environments.
And if you use [span metrics](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/connector/spanmetricsconnector), it is possible to split the metrics of the environments with the `dimensions` configuration.