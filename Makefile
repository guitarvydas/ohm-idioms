all: identity identity-lc math mangle lc-js lc-lisp

identity:
	./identity.bash

identity-lc:
	./identity-lc.bash

lc-lisp:
	./lc-lisp.bash

lc-js:
	./lc-js.bash >jstest.js
	cat jstest.js
	node jstest

math:
	./math.bash

mangle:
	./mangle.bash

