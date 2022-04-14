#!/bin/bash
prep=./prep
cid=`realpath .`
${prep} '.' '$' identity.ohm identity.fmt --stop=1 --support=${cid}/support.js <identity.txt
${prep} '.' '$' identity.ohm identity2.fmt --stop=1 --support=${cid}/support.js <identity.txt
