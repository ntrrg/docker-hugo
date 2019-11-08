hugo_port := 1313

.PHONY: all
all:

.PHONY: docs
docs:
	@echo "http://localhost:$(hugo_port)/en/projects/docker-hugo/"
	@echo "http://localhost:$(hugo_port)/es/projects/docker-hugo/"
	@docker run --rm -it \
		-e PORT=$(hugo_port) \
		-p $(hugo_port):$(hugo_port) \
		-v "$$PWD/.ntweb":/site/content/projects/docker-hugo/ \
		ntrrg/ntweb:editing --port $(hugo_port)

