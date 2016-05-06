# pandoc-boilerplate
simple setup to get started using pandoc to produce pdfs

## how to use

- put/modify your metadata in metadata.yaml
- modify template.tex if needed (it shouldn't be)
- write in main.md (or in whatever file(s) you want, but in that case update the `Makefile`)
- run `make`

## dependencies

- pandoc (of course!)
- latex
- if you want to use the `make watch` feature you need to install the `watchdog` python package
