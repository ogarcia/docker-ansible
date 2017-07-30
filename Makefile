DOCKER_USER := ogarcia
DOCKER_ORGANIZATION := connectical
DOCKER_IMAGE := ansible

docker-image:
	docker build -t $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE) .

docker-image-test: docker-image
	docker run --rm $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE) /usr/bin/ansible --version
	docker run --rm $(DOCKER_ORGANIZATION)/$(DOCKER_IMAGE) /usr/bin/git --version

ci-test: docker-image-test

.PHONY: docker-image docker-image-test ci-test
# vim:ft=make
