# nfs-client-onbuild

A small (~10 MB) Docker container based on alpine linux intended as a basis
for app containers connecting to remote nfs volumes.

## Usage

Base your docker container on this container:

```
FROM evquirk/nfs-client-onbuild

VOLUME /mnt/nfs

...
```

There is an onbuild instruction to automatically add `app.sh`, this file
is automatically run after the nfs share is mounted. Do not add an
ENTRYPOINT or CMD yourself, otherwise the mount will not take place.

```bash
docker run -it --cap-add SYS_ADMIN your-container 192.168.1.100:/mnt/nfs /mnt/nfs
```
