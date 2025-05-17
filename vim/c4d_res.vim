" Vim syntax file
" Language: Cinema 4D Resource Files

if exists("b:current_syntax")
  finish
endif

" Define the syntax file name
let b:current_syntax = "c4d_res"

" Keywords
syntax keyword c4dResKeyword CONTAINER GROUP NAME INCLUDE ID ACCEPT CYCLE LONG LINK
syntax keyword c4dResKeyword SHADERLINK REAL STATICTEXT SPLINE VECTOR SEPARATOR 
syntax keyword c4dResKeyword JOINENDSCALE UNIT MIN MAX MAXSLIDER STEP CUSTOMGUI
syntax keyword c4dResKeyword MINSLIDER SCALE_H ACCEPT DEFAULT COLUMNS LINE HIDDEN
syntax keyword c4dResKeyword BOOL COLOR BASETIME BUTTON

" Comments
syntax match c4dResComment "//.*$"

" Curly braces
syntax match c4dResBraces "{\|}"

" Numbers - integers, decimals, and scientific notation
syntax match c4dResNumber "\<\d\+\(\.\d\+\)\?\([eE][+-]\?\d\+\)\?\>"
syntax match c4dResNumber "\<\.\d\+\([eE][+-]\?\d\+\)\?\>"

" Link highlighting groups to standard syntax groups
highlight def link c4dResKeyword Keyword
highlight def link c4dResComment Comment
highlight def link c4dResBraces Delimiter
highlight def link c4dResNumber Number

