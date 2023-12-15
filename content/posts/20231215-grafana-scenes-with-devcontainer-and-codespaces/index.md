---
title: "Grafana Scenes & dev container & Codespaces"
date: 2023-12-15T21:45:00+01:00
pin: true
resources:
  - src: "**.{png,jpg,webp}"
    title: "Image #:counter"
tags:
  - Grafana
  - Scenes
  - Codespaces
---

{{< imgproc scenes_and_codespaces Resize "850x" >}}
{{< /imgproc >}}

With Grafana Scenes it is possible to create more than just dashboards. There are options to create dashboards that guide the user.
Deep dives with [drill down pages](https://grafana.com/developers/scenes/scene-app-drilldown) can help to analyse problems.
And with a feature like [time range comparison](https://grafana.com/developers/scenes/advanced-time-range-comparison) it is even possible to use a feature that is not available with normal dashboards.

But how do you start developing with Grafana Scenes? One trend is to develop remotely, rather than on your local machine.
Let's see how we can combine this.

In this blog post I will describe what I did using a Github repository and Github Codespaces.

### Create a new git repository and configure initial setup

I just created a new git repository and after that I just choose to create an initial `devcontainer.json`:

{{< imgproc codespace_configure_devcontainer Resize "850x" >}}
{{< /imgproc >}}

This file is added as `.devcontainer/devcontainer.json`, the initial content is just this:

```json 
{
  "image": "mcr.microsoft.com/devcontainers/universal:2",
  "features": {
  }
}
```

Then I launched the Codespace environment.
Once it was loaded, I opened the terminal at the bottom and ran the first step of the [instructions](https://grafana.com/developers/scenes):
```shell
npx @grafana/create-plugin@latest
```

I followed the steps and the files were created in a new subfolder. Then I moved the files to the main directory.

### Update devcontainer.json for development

For development, there are two main commands to use:
- `npm run dev` to continuously compile the modified code
- npm run server' to start a Grafana docker container with the plugin loaded.

As part of the `devcontainer.json` file, it is possible to add a startup command that will be executed as soon as the codespace environment is opened.

{{< imgproc npm_run_dev Resize "850x" >}}
{{< /imgproc >}}

As part of the `npm run dev` command, a port is opened for the [livereload plugin](https://www.npmjs.com/package/webpack-livereload-plugin), which by default listens on port `35729`.
And Grafana is started on port `3000`. So these ports need to be opened.
The setup looks like this:

{{< imgproc setup Resize "850x" >}}
{{< /imgproc >}}

### Exposing ports

To be able to reach Grafana and the livereload port, these ports need to be opened.
You can do this manually, but I have also added it to `devcontainer.json` as that makes it reproducible:

```json 
{
  "image": "mcr.microsoft.com/devcontainers/universal:2",
  "waitFor": "onCreateCommand",
  "updateContentCommand": "npm install",
  "postCreateCommand": "",
  "postAttachCommand": {
    "server": "npm run dev",
    "grafana": "npm run server"
  },
  "portsAttributes": {
    "35729": {
      "label": "Application",
      "onAutoForward": "silent"
    },
    "3000": {
      "label": "Grafana",
      "onAutoForward": "openPreview"
    }
  },
  "forwardPorts": [35729, 3000]
}
```
Once the ports are configured, you can see that in Codespaces and you can open it is in the browser:

{{< imgproc ports_open_browser Resize "850x" >}}
{{< /imgproc >}}

By default the Grafana Scenes setup assumes the livereload to be running on http://localhost:35729, but that is different now.
In I changed that as well, more details in the [commit](https://github.com/cbos/grafana-scenes-playground/commit/cf5866d6e4f1399503f9ea080b239fc7e968867a)

The final result looks like this:

{{< imgproc scene_live Resize "850x" >}}
{{< /imgproc >}}