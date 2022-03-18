#!/bin/bash
prep=./prep
cid=`realpath .`
${prep} '.' '$' mangle.ohm mangle.fmt --stop=1 --support=${cid}/support.js <mangle.txt 1>&2
