NODE_SASS := ./node_modules/.bin/node-sass
CSSO := ~/.nvm/versions/node/v10.0.0/bin/csso
# ./node_modules/.bin/csso
# ~/.nvm/versions/node/v10.0.0/bin/csso
# ~/.nvm/versions/node/v10.0.0/lib/node_modules/csso-cli/bin/csso
SCSSFMT := ./node_modules/.bin/scssfmt

all: build format

format:
	${SCSSFMT} --recursive src/*.scss src/**/*.scss

dev:
	transpile

deps:
	npm install

build: deps transpile optimize

clean:
	rm -rf dist node_modules

transpile:
	${NODE_SASS} -q --precision=10 src/main.scss -o dist --sourceComments=true

optimize:
	${CSSO} -i dist/main.css -o dist/main.css
