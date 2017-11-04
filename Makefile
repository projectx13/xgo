# Name of the project.
PROJECT = elgatito
IMAGE = xgo

# Set binaries and platform specific variables.
DOCKER = docker

# Platforms on which we want to build the project.
PLATFORMS = \
	1.9.0 \
	1.9.1 \
	1.9.2 \
	1.9.x #\
	#latest

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
	$(DOCKER) build -t $(IMAGE)-base docker/base/

$(PLATFORMS): base
	$(DOCKER) build -t $(IMAGE)-$@ docker/go-$@;

push:
	docker tag xgo-$(PLATFORM) $(PROJECT)/xgo-$(PLATFORM)
	docker push $(PROJECT)/xgo-$(PLATFORM)
