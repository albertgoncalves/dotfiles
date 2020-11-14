syn match Function "[A-Za-z_][A-Za-z0-9_]*("me=e-1

syn match Type "[ (][A-Z]\+[a-z][A-Za-z0-9]*$"
syn match Type "^[A-Z]\+[a-z][A-Za-z0-9]*$"
syn match Type "[ (][A-Z]\+[a-z][A-Za-z0-9]*[ *;,)\[]"me=e-1
syn match Type "^[A-Z]\+[a-z][A-Za-z0-9]*[ *;,\[]"me=e-1

syn keyword Boolean true false
