# Docker Multistage Build Example

This is a companion to a [blog post](https://fireboltsacquired.com) on building quality into Dockerized delivery chains.

## Before you begin

Normally, you wouldn't want to include any sensitive information in your git repository. This data is included via `secrets.txt` here to serve as a self-sufficient example.

There is also more than one way to solve the problem, and you might be left wondering why I chose to `COPY .` rather than specifying individual dirs/files, or why I ignored a directory rather than an individual filename in `.dockerignore`. As the post explains: the purpose isn't necessarily to show how to test your ignore logic; rather, it's to demonstrate the potential value of including pre-build validation steps in your Dockerized flow.

## Running the example

You'll need to have Docker installed and running as a prerequisite.

From there, build the image from the root of the cloned directory.

```bash
$ docker build -t docker-ignore-firebolt .
```

This should result in a successfully-built image. To see what happens on failure, modify the name of the directory where `secrets.txt` resides without adjusting `.dockerignore`. Running the build command again should fail.
