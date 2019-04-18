NODE_SASS := ./node_modules/.bin/node-sass
CSSO_PATH := ~/.nvm/versions/node/v10.0.0/bin/csso
# ./node_modules/.bin/csso
# ~/.nvm/versions/node/v10.0.0/bin/csso
# ~/.nvm/versions/node/v10.0.0/lib/node_modules/csso-cli/bin/csso
SCSSFMT_PATH := ./node_modules/.bin/scssfmt

all: build format

format:
	${SCSSFMT_PATH} --recursive src/*.scss src/**/*.scss

dev:
	transpile

deps:
	npm install

build: deps transpile  optimize

clean:
	rm -rf dist node_modules

transpile:
	${NODE_SASS} -q --precision=10 src/main.scss -o dist --sourceComments=true

optimize:
	${CSSO_PATH} -i dist/main.css -o dist/main.css
