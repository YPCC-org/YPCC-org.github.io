all: clean build

clean:
	rm -rf ./docs

build:
	cd src; mkdocs build
	mv ./src/site ./docs

install_dependence:
	pip3 install mkdocs
	pip3 install mkdocs-material
	pip3 install fontawesome_markdown
