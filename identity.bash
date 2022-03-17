#!/bin/bash
prep=./prep
cid=`realpath .`
${prep} '.' '$' identity.ohm identity.glue --stop=1 --support=${cid}/support.js <identity.txt
