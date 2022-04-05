all: identity identity-lc math mangle lc-py lc-js lc-lisp

identity:
	./identity.bash

identity-lc:
	./identity-lc.bash

lc-lisp:
	./lc-lisp.bash >lisptest.lisp
	cat lisptest.lisp
	sbcl --eval `cat lisptest.lisp`

lc-js:
	./lc-js.bash >jstest.js
	cat jstest.js
	node jstest.js

lc-py:
	./lc-py.bash >pytest.py
	cat pytest.py
	python3 pytest.py

math:
	./math.bash

mangle:
	./mangle.bash

