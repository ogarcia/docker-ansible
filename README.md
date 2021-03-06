# Small Ansible docker based on Alpine Linux [![CircleCI](https://circleci.com/gh/ogarcia/docker-ansible.svg?style=svg)](https://circleci.com/gh/ogarcia/docker-ansible)

(c) 2017-2021 Óscar García Amor

Redistribution, modifications and pull requests are welcomed under the terms
of GPLv3 license.

[Ansible][1] is a radically simple IT automation system. It handles
configuration-management, application deployment, cloud provisioning, ad-hoc
task-execution, and multinode orchestration - including trivializing things
like zero downtime rolling updates with load balancers.

This docker packages **Ansible** under [Alpine Linux][2], a lightweight
Linux distribution.

Visit [Docker Hub][3], [Quay][4] or [GitHub][5] to see all available tags.

[1]: https://ansible.com/
[2]: https://alpinelinux.org/
[3]: https://hub.docker.com/r/connectical/ansible/
[4]: https://quay.io/repository/connectical/ansible/
[5]: https://github.com/orgs/connectical/packages/container/package/ansible

## Run

To run this container, simply exec.

```sh
docker run -t -i --rm \
  --name=ansible \
  connectical/ansible
```

Warning: this is a basic run, all data will be destroyed after container
stop.

## Persistent volumes

This container exports `/etc/ansible` and `/root` volumes.

You can exec the following to store data.

```sh
docker run -t -i --rm \
  --name=ansible \
  -v /docker/ansible/cfg:/etc/ansible \
  -v /docker/ansible/root:/root \
  connectical/ansible
```

Please note that the `--rm` modifier destroy the docker after shell exit.
