if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

" comparators
syntax match jsOperator "<="  conceal cchar=≤
syntax match jsOperator ">="  conceal cchar=≥
syntax match jsOperator "!="  conceal cchar=≠
syntax match jsOperator "===" conceal cchar=≡
syntax match jsOperator "!==" conceal cchar=≢
syntax match jsOperator "<<<" conceal cchar=⋘

" arrow functions
syntax match jsArrowFunction /=>/ conceal cchar=⇒

hi! link Conceal Operator
hi! link Conceal StorageClass
hi! link Conceal Statement

setlocal conceallevel=1
