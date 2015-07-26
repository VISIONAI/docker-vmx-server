docker-vmx-server
=================

This is a data-only container which puts the pre-built VMX vision
engine binaries in /vmx/build and the required pretrained data in
/vmx/data

**NOTE:** The container is very slim because it is based on busybox,
but it
doesn't support https for the built-in wget, so we retrieve files from
http://files.vision.ai instead.

This container overwrites the default `config.json` file which ships
with the VMXserver binary.

The container is built on DockerHub, see
[visionai/vmx-server](https://registry.hub.docker.com/u/visionai/vmx-server/)

The master branch retrieves **VMXserver_Linux.stable.tar.gz** and the
dev
branch retrieves **VMXserver_Linux.latest.tar.gz**

If you're trying to install VMX, you should probably checkout
[VISIONAI/vmx-docker-manager](https://github.com/VISIONAI/vmx-docker-manager)
on GitHub.
