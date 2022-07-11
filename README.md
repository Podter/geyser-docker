# geyser-docker
just stupid Dockerfile that will download Geyser.jar and run it.

## Run
```bash
docker run -it -d -v geyser-config:/app -e XMS=512M -e XMX=1024M podter/geyser-docker
```

`-v vol:/app` mounts the config directory to the container. (you will see Geyser.jar and config files there)
`-e XMS=512M` sets the initial heap size to 512MB.
`-e XMX=1024M` sets the maximum heap size to 1024MB.

## Build
```bash
docker build -t podter/geyser-docker .
```
