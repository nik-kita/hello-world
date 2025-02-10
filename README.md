# Github Actions Self Hosted Runner (docker in docker plus sysbox)

### [github-actions-runner](https://github.com/docker/github-actions-runner)

### The inspiration video

- [Docker-in-Docker: Containerized CI Workflows (DockerCon 2023)](https://www.youtube.com/watch?v=JyEwKm-OfxA)
  - [About Github-Actions Containereized Runner](https://youtu.be/JyEwKm-OfxA?si=V0uKRKlW8Z69VbQw&t=1262)
  - [Begin of example](https://youtu.be/JyEwKm-OfxA?si=2aCorRL0RzKuOl-l&t=1591)
  - [Get Github token](https://youtu.be/JyEwKm-OfxA?si=Qhvs-eOPzNMdsmT9&t=1711)
  - [Init runner](https://youtu.be/JyEwKm-OfxA?si=NuOFwPX4xg9TVhKJ&t=1797)
  - [Multiple runners example](https://youtu.be/JyEwKm-OfxA?si=l9jXJhi_r1IFO2WP&t=1960)

### Steps to configure runner on some host:

1. clone the repo

```bash
https://github.com/docker/github-actions-runner.git
```

2. init runner

```bash
./github-actions-runner/gha_runner_create.sh <runner-name> <github-account> <repo> <token>
```

3. check _(optional)_

```bash
docker logs <runner-name>
```
