# nfs-client

A small (~10 MB) Docker container based on alpine linux intended for connecting to
remote nfs volumes.

## Caveat

Currently isn't very useful beyond being the basis for other containers, 
[internally mounted nfs volumes can't be shared to other
containers.](https://github.com/docker/docker/issues/4213)

See [onbuild branch.](/../../tree/onbuild)

## Usage

```bash
docker run -it --cap-add SYS_ADMIN -v /mnt/nfs evquirk/nfs-client
192.168.1.100:/mnt/nfs /mnt/nfs
```
