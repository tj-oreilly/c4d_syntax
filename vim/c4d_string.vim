" Vim syntax file
" Language: Cinema 4D String Files

if exists("b:current_syntax")
  finish
endif

" Set syntax name
let b:current_syntax = "c4d_string"

" Define the syntax groups
syntax keyword c4dStringKeyword STRINGTABLE

" Comments
syntax match c4dStringComment "//.*$"

" Strings in double quotes with escape characters
syntax region c4dStringDoubleQuoted start=+"+ end=+"+ contains=c4dStringEscape
syntax match c4dStringEscape "\\." contained

" Semicolons
syntax match c4dStringSemicolon ";"

" Curly braces
syntax match c4dStringBraces "[{}]"

" Define highlighting
highlight default link c4dStringKeyword Keyword
highlight default link c4dStringComment Comment
highlight default link c4dStringDoubleQuoted String
highlight default link c4dStringEscape SpecialChar
highlight default link c4dStringSemicolon Delimiter
highlight default link c4dStringBraces Delimiter
