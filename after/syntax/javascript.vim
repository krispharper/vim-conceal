if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

" comparators
syntax match jsOperator "<=" conceal cchar=≤
syntax match jsOperator ">=" conceal cchar=≥
syntax match jsOperator "!=" conceal cchar=≢

" math related
syntax match jsOperator " / " conceal cchar=÷
syntax match jsOperator " \* " conceal cchar=×
syntax match jsOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match jsOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match jsOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
syntax match jsKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

" keywords
syntax keyword jsOperator sum conceal cchar=∑
syntax keyword jsStatement lambda conceal cchar=λ

hi link jsOperator Operator
hi link jsStatement Statement
hi link jsKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
