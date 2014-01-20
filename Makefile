NODE_VERSION=0.10.24
NODE_URL?=http://nodejs.org/dist/v$(NODE_VERSION)/node-v$(NODE_VERSION)-linux-x64.tar.gz
DOCKER_REPO?=lightsofapollo

NODE_TAR=node-$(NODE_VERSION).tar.gz

$(NODE_TAR):
	curl $(NODE_URL) > $(NODE_TAR)

.PHONY: release
build: node
	docker build -t $(DOCKER_REPO)/node:$(NODE_VERSION) .

push: build
	docker push $(DOCKER_REPO)/node

node: $(NODE_TAR)
	mkdir -p node
	tar xzf $(NODE_TAR) -C node --strip-components=1

.PHONY: clean
clean:
	rm -Rf $(wildcard node*)
