
// main = line+
// line = indent? spc? toEOL+ linetail
// linetail =   newline toIndent* -- withContent
//            | newline? end -- withoutContent
// indent = indentChar+
// indentChar = ("#" | "*")
// toIndent = ~indentChar any
// toEOL = ~newline any

// newline = "\n"
// spc = " "

main =[ [line]+ ]
line = [ [indent]? [spc]? [toEOL]+ linetail ]
linetail_withContent = [ newline [toIdent]* ]
linetail_withoutContent = [ [newline]? end ]
indent = [ [indentChar]+ ]
indentChar = [ c ]
toIndent = [ c ]
toEOL = [ c ]
newline = [ c ]
spc = [ c ]
