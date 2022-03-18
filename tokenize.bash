#!/bin/bash
prep=./prep
cid=`realpath .`
echo
${prep} '.' '$' tokens.ohm identity-tokens.fmt --stop=1 --support=${cid}/support.js <tokens.txt 1>&2
echo
${prep} '.' '$' tokens.ohm tokens1.fmt --stop=1 --support=${cid}/support.js <tokens.txt 1>&2
echo
${prep} '.' '$' tokens.ohm tokens2.fmt --stop=1 --support=${cid}/support.js <tokens.txt 1>&2
