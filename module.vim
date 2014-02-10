call vice#Extend({
    \ 'addons': ['github:majutsushi/tagbar']
\ })

let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_singleclick = 1

nnoremap <leader>t :TagbarToggle<cr>

" gem install CoffeeTags
" if executable('coffeetags')
"     let g:tagbar_type_coffee = {
"         \ 'ctagsbin' : 'coffeetags',
"         \ 'ctagsargs' : '',
"         \ 'kinds' : [
"             \ 'f:functions',
"             \ 'o:object',
"         \ ],
"         \ 'sro' : ".",
"         \ 'kind2scope' : {
"             \ 'f' : 'object',
"             \ 'o' : 'object',
"         \ }
"     \ }
" endif

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

" npm install -g git://github.com/ramitos/jsctags.git
if executable('jsctags')
    let g:tagbar_type_javascript = {
        \ 'ctagsbin' : 'jsctags'
    \ }
endif

" go get -u github.com/jstemmer/gotags
if executable('gotags')
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
endif
