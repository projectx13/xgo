# Name of the project.
PROJECT = projectx13
IMAGE = xgo

# Set binaries and platform specific variables.
DOCKER = docker

# Platforms on which we want to build the project.
PLATFORMS = \
	1.10 \
	1.10.1 \
	1.10.2 \
	1.10.3 \
	1.10.4 \
	1.10.5 \
	1.10.6 \
	1.10.7 \
	1.10.x \
	1.11 \
	1.11.1 \
	1.11.2 \
	1.11.3 \
	1.11.4 \
	1.11.x \
	latest

.PHONY: $(PLATFORMS)

all:
	for i in $(PLATFORMS); do \
		$(MAKE) $$i; \
	done

push-all:
	for i in $(PLATFORMS); do \
		PLATFORM=$$i $(MAKE) push; \
	done

base:
	$(DOCKER) build -t $(PROJECT)/$(IMAGE)-base docker/base/

$(PLATFORMS): base
	$(DOCKER) build -t $(PROJECT)/$(IMAGE)-$@ docker/go-$@;

push:
	docker push $(PROJECT)/$(IMAGE)-$(PLATFORM)
