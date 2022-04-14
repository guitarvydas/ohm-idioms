#!/bin/bash
prep=./prep
cid=`realpath .`
${prep} '.' '$' lc.ohm lc-py.fmt --stop=1 --support=${cid}/support.js <nested.lc

