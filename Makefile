TITLE="Introduction to Software Engineering"
OUT=_book
SRC=.
GITBOOK=gitbook
OPTIONS=--title $(TITLE) --output $(OUT)
BUILD=$(GITBOOK) build $(SRC) $(OPTIONS)
SERVE=$(GITBOOK) serve $(SRC) $(OPTIONS)

all: html pdf

html:
	$(BUILD) --format site

pdf:
	$(BUILD) --format pdf

preview:
	$(SERVE)
