# geyser-docker
just stupid Dockerfile that will download Geyser.jar and run it.

## Run
```bash
docker run -it -d -v geyser-config:/app podter/geyser-docker
```

`-v vol:/app` mounts the config directory to the container. (you will see Geyser.jar and config files there)

## Build
```bash
docker build -t podter/geyser-docker .
```
