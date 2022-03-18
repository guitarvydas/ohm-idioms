#!/bin/bash
prep=./prep
cid=`realpath .`
echo
${prep} '.' '$' math.ohm identity-math.fmt --stop=1 --support=${cid}/support.js <math.txt 1>&2
echo
${prep} '.' '$' math.ohm math3.fmt --stop=1 --support=${cid}/support.js <math.txt >/tmp/out.json
./jsonprettyprint.bash /tmp/out.json
echo
${prep} '.' '$' math.ohm math1.fmt --stop=1 --support=${cid}/support.js <math.txt 1>&2
echo
${prep} '.' '$' math.ohm math2.fmt --stop=1 --support=${cid}/support.js <math.txt 1>&2
