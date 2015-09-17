all:
	npm install
	cd node_modules/jspm/node_modules/ && rm -rf systemjs &&git clone https://github.com/systemjs/systemjs.git && cd systemjs && npm install
	cd node_modules/jspm/node_modules/systemjs-builder/node_modules/ && rm -rf systemjs && git clone https://github.com/systemjs/systemjs.git && cd systemjs && npm install
	./node_modules/.bin/jspm install
	./node_modules/.bin/jspm bundle src/a.js a_bundle.js
	./node_modules/.bin/jspm bundle src/b.js - a_bundle.js b_bundle.js

