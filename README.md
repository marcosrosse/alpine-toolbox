# NOTE
This image is just for troubleshooting scenarios, do not use it in production environments.
After it's use, delete it!

## To execute the container image with SSHD service enabled
`podman run -d -p 2222:22 --rm docker.io/marcosrossem/alpine-toolbox:latest /usr/sbin/sshd -D -e "$@"`