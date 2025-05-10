# Explore how to automate ci/cd with dockerhub by utilizing github webhooks

- initial doc source:
  [https://docs.docker.com/docker-hub/repos/manage/builds/setup/](https://docs.docker.com/docker-hub/repos/manage/builds/setup/)
-

# notes

1. for better, cleaner and optimize build, ci/cd... the understanding about
   <s>_where_</s> **when** the environment variable is used is critical! Only if
   it is used for building image - only then it should be declared or passed on
   container build. And if not - during run, reading from .env or even directly
   from cli
