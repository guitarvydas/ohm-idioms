
| rule | args | |
| ---- | ---- | -------------------------------------------- |
| main | line | `[[[[[[#] [#]]]] [[]] [[c] [] [d]] [[] []]]]` |
| line | indent ; spc ; toEOL ; linetail | `[[[[#] [#]]]];[[]];[[c] [] [d]];[[] []]` |
| linetail_withContent | newline ; toindent | `[];[]` |
| toEOL | c | `["d"]` |
| toEOL | c | `[" "]` |
| toEOL | c | `["c"]` |
| sp | c | `[" "]` |
| indent | indentChar | `[["#"] ["#"]]` |

