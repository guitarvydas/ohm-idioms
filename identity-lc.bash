#!/bin/bash
prep=./prep
cid=`realpath .`
${prep} '.' '$' lc.ohm identity-lc.fmt --stop=1 --support=${cid}/support.js <nested.lc

