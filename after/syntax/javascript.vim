if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

" comparators
syntax match jsOperator "<=" conceal cchar=≤
syntax match jsOperator ">=" conceal cchar=≥
syntax match jsOperator "!==" conceal cchar=≢
syntax match jsOperator "<<<" conceal cchar=⋘
syntax match jsFlowDefinition "=>" conceal cchar=⇒
syntax match jsOperator "&&" conceal cchar=∧
syntax match jsOperator "||" conceal cchar=∨
syntax match jsOperator "++" conceal cchar=Δ
syntax match jsOperator "--" conceal cchar=∇

" math related
syntax match jsOperator " / " conceal cchar=÷
syntax match jsOperator " \* " conceal cchar=×
syntax match jsOperator "\<\%(Math\.\)\?sqrt\>" conceal cchar=√
syntax match jsOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match jsOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³

syntax match jsKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π
syntax match jsNull "null" conceal cchar=∅

syntax keyword jsBooleanTrue true conceal cchar=⊤
syntax keyword jsBooleanFalse false conceal cchar=⊥

syntax match jsConditional "if" conceal cchar=▸
syntax match jsConditional "else" conceal cchar=▪

syntax keyword jsRepeat for conceal cchar=∀
syntax keyword jsRepeat while conceal cchar=∀
syntax keyword jsKeyword in conceal cchar=∈

syntax keyword jsReturn return conceal cchar=⤺
syntax keyword jsThis this conceal cchar=⟐

" keywords
syntax keyword jsOperator sum conceal cchar=∑
syntax keyword jsStatement function conceal cchar=∫
syntax keyword jsStatement lambda conceal cchar=λ

hi link jsOperator Operator
hi link jsStatement Statement
hi link jsKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
