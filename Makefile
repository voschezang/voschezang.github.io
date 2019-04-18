.PHONY: sass js

# js:
# 	$(MAKE) -C js
default:
	make show
	make sass-watch

show:
	open docs/index.html

sass:
	# mkdir -p ./docs/css
	$(MAKE) -C scss
	cp scss/dist/main.css ./docs/css/main.css

sass-dev:
	$(MAKE) -C scss dev
	cp scss/dist/main.css ./docs/css/main.css

sass-watch:
	find scss/ -name *.scss -type f | entr make sass
