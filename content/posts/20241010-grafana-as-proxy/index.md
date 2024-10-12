---
title: "Grafana as proxy"
date: 2024-10-10T12:23:23Z
pin: true
draft: true

resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"

tags:
  - Grafana
  - Scenes
summary:
  Local development no data sources, use production datasources for local (scenes) plugin development

---









![Setup](grafana_as_proxy.png)



Service accounts

https://grafana.com/docs/grafana/latest/administration/service-accounts/

![Create service account](create_service_account.png)

![Create service account token](create_token.png)
![Create service account token](token_local_development.png)


Locally create a new datasource.


https://cbos.grafana.net/api/datasources/proxy/uid/grafanacloud-prom/

![Configure Authorization header](authorization_header.png)

![Result](result.png)

## Cookie based
If service keys is not possible for a reason, you can use a cookie as well.

![Configure Cookie header](cookie_header.png)

## Provision as datasources

```yaml
apiVersion: 1

datasources:
  # Example datasource with a Service key
  - name: production-proxy-service-key
    type: prometheus
    access: proxy
    url: https://cbos.grafana.net/api/datasources/proxy/uid/grafanacloud-prom/
    jsonData:
      httpMethod: POST
      # Name of the header
      httpHeaderName1: Authorization
    secureJsonFields: { }
    secureJsonData:
      # Value of the header
      httpHeaderValue1: Bearer <paste here the service key token>

  # Example datasource with a cookie
  - name: production-proxy-with-cookie
    type: prometheus
    access: proxy
    url: https://cbos.grafana.net/api/datasources/proxy/uid/grafanacloud-prom/
    jsonData:
      httpMethod: POST
      # Name of the header
      httpHeaderName1: Cookie
    secureJsonFields: { }
    secureJsonData:
      # Value of the header
      httpHeaderValue1: <paste here the cookie value from the browser>
```