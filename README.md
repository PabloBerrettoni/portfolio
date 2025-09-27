# Pablo Berrettoni — Portfolio

This repository contains the source code and infrastructure for my personal portfolio site. It features a static HTML/CSS frontend, Docker + Nginx setup, resume hosting, and a CI/CD pipeline for automated Docker builds.

## Features

- **Static Site**: Built with [index.html](index.html) and [style.css](style.css).
- **Resume Hosting**: Downloadable PDF ([resume-PabloBerrettoni.pdf](resume-PabloBerrettoni.pdf)).
- **Profile Image**: [profile.png](profile.png).
- **Dockerized**: Uses [Dockerfile](Dockerfile) to build and serve the site with Nginx.
- **Custom Nginx Config**: See [nginx/default.conf](nginx/default.conf).
- **CI/CD**: Automated Docker build and push via GitHub Actions ([.github/workflows/docker-build.yaml](.github/workflows/docker-build.yaml)).

## Usage

### Local Development

Just open [index.html](index.html) in your browser to preview.

### Docker

Build and run the site locally with Docker:

```sh
docker build -t portfolio .
docker run -p 8080:80 portfolio
```

Then visit [http://localhost:8080](http://localhost:8080).

### Nginx

The site is served using Nginx with the config in [nginx/default.conf](nginx/default.conf).

### CI/CD

On push to `main`, GitHub Actions will build and push the Docker image to Docker Hub (`clepo123/main:latest`). See [.github/workflows/docker-build.yaml](.github/workflows/docker-build.yaml).