| rule name | match |
| --------- | ----- ||
| main | `[ [line]+ ] `|
| line | `[ [indent]? [spc]? [toEOL]+ linetail ] `|
| linetail_withContent | `[ newline [toIdent]* ] `|
| linetail_withoutContent | `[ [newline]? end ] `|
| indent | `[ [indentChar]+ ] `|
| indentChar | `[ c ] `|
| toIndent | `[ c ] `|
| toEOL | `[ c ] `|
| newline | `[ c ] `|
| spc | `[ c ] `|

`## c d`

main | `[ `

indentChar+ | `[ [#] [#] ]`
indent | `[ [ [#] [#] ] ]`

indent? | `[ [ [ [#] [#] ] ] ]`
spc? | `[ [ ] ]`
toEOL+ | `[ [c] [ ] [d] ]`
linetail_withoutContent | `[ [[\n]] ]`

| line | `[` | `[indent]?`       | `[spc]?` | `[toEOL]+`    | `linetail` | `]` |
| ---- | --- | ---------------- | -------- | ------------- | ---------- | --- |
|      |     |  `[[[[[#][#]]]]` | `[[ ]]`  | `[[c][ ][d]]` | `[[[\n]]]` |     |
