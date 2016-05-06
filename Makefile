TITLE=title
SECTIONS = main.md


TEMPLATE = template.tex
OUTDIR = out

.PHONY: all clean pdf open watch

all: pdf

$(OUTDIR):
	mkdir -p $@

clean:
	rm -rf $(OUTDIR)

$(OUTDIR)/$(TITLE).pdf: $(SECTIONS) metadata.yaml | $(OUTDIR)
	pandoc --toc --filter pandoc-crossref -o "$@" --template=$(TEMPLATE) $(SECTIONS) metadata.yaml

pdf: $(OUTDIR)/$(TITLE).pdf

open: pdf
	xdg-open "$(OUTDIR)/$(TITLE).pdf"

watch:
	watchmedo shell-command --patterns="*.md" --command="make pdf"
