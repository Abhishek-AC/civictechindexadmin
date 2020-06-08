RAWVERSION = $(filter-out __version__ = , $(shell grep __version__ civictechindexadmin/__init__.py))
VERSION = $(strip $(shell echo $(RAWVERSION)))
PACKAGE = civictechindexamdin

clean:
		rm -rf *.tar.gz dist *.egg-info *.rpm *.xml pylint.out
		find . -name "*.pyc" -exec rm '{}' ';'

version:
		@echo ${VERSION}

image_name:
		@echo ${PACKAGE}:${VERSION}

build:
		docker-compose -f local.yml build

local:
		docker-compose -f local.yml up -d
