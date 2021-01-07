HUGO_VERSION ?= 0.79.1
HUGO_PORT ?= 1313

.PHONY: all
all:

.PHONY: bump-version-hugo
bump-version-hugo:
	@grep -lR "$(HUGO_VERSION)" . | \
		grep -v "^\./\.git/" | \
		grep -v "\.swp\$$"

.PHONY: doc
doc:
	@echo "http://localhost:$(HUGO_PORT)/en/projects/docker-hugo/"
	@echo "http://localhost:$(HUGO_PORT)/es/projects/docker-hugo/"
	@docker run --rm -it \
		-e PORT=$(HUGO_PORT) \
		-p $(HUGO_PORT):$(HUGO_PORT) \
		-v "$$PWD/.ntweb":/site/content/projects/docker-hugo/ \
		ntrrg/ntweb:editing --port $(HUGO_PORT)

