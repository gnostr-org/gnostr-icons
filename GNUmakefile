-:docs
.PHONY: docs
docs:
	@mkdir -p docs
	cd icons && ./make-sizes.sh && cd ..
	./make-icns.sh
	@install -v README.md docs/index.md
	@sed 's/images/.\/images/' README.md > docs/index.md
	@cp -R ./icons ./docs/
	cd banner && ./make-sizes.sh && cd ..
init:initialize
initialize:
	cd scripts && ./initialize && cd ..
nuke-docker:
	cd scripts && ./nuke-docker && cd ..
