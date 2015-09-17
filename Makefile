all:
	npm install
	./node_modules/.bin/jspm install
	./node_modules/.bin/jspm bundle src/a.js a_bundle.js
	./node_modules/.bin/jspm bundle src/b.js - a_bundle.js b_bundle.js

