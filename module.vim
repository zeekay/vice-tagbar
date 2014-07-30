call vice#Extend({
    \ 'addons': ['github:majutsushi/tagbar']
\ })

" Global setting, can muck with other things
if !exists('g:vice.tagbar.updatetime')
    let g:vice.tagbar = {'updatetime': 500}
elseif g:vice.tagbar.updatetime < 100
    " Prevent settings below 100
    let g:vice.tagbar.updatetime = &updatetime
endif

exe 'set updatetime='.g:vice.tagbar.updatetime

let g:tagbar_compact     = 1
let g:tagbar_iconchars   = ['▸', '▾']
let g:tagbar_singleclick = 1

nnoremap <leader>t :TagbarToggle<cr>

" gem install CoffeeTags
" if executable('coffeetags')
"     let g:tagbar_type_coffee = {
"         \ 'ctagsbin': 'coffeetags',
"         \ 'ctagsargs': '',
"         \ 'kinds': [
"             \ 'f:functions',
"             \ 'o:object',
"         \ ],
"         \ 'sro': ".",
"         \ 'kind2scope': {
"             \ 'f': 'object',
"             \ 'o': 'object',
"         \ }
"     \ }
" endif

let g:tagbar_type_coffee = {
    \ 'ctagstype': 'coffee',
    \ 'kinds': [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

" go get -u github.com/jstemmer/gotags
if executable('gotags')
    let g:tagbar_type_go = {
        \ 'ctagstype': 'go',
        \ 'kinds': [
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
        \ 'sro': '.',
        \ 'kind2scope': {
            \ 't': 'ctype',
            \ 'n': 'ntype'
        \ },
        \ 'scope2kind': {
            \ 'ctype': 't',
            \ 'ntype': 'n'
        \ },
        \ 'ctagsbin':  'gotags',
        \ 'ctagsargs': '-sort -silent'
    \ }
endif

" npm install -g git://github.com/ramitos/jsctags.git
if executable('jsctags')
    let g:tagbar_type_javascript = {
        \ 'ctagsbin': 'jsctags'
    \ }
endif

" cabal install lushtags
if executable('lushtags')
    let g:tagbar_type_haskell = {
        \ 'ctagsbin':  'lushtags',
        \ 'ctagsargs': '--ignore-parse-error --',
        \ 'kinds': [
            \ 'm:module:0',
            \ 'e:exports:1',
            \ 'i:imports:1',
            \ 't:declarations:0',
            \ 'd:declarations:1',
            \ 'n:declarations:1',
            \ 'f:functions:0',
            \ 'c:constructors:0'
        \ ],
        \ 'sro': '.',
        \ 'kind2scope': {
            \ 'd': 'data',
            \ 'n': 'newtype',
            \ 'c': 'constructor',
            \ 't': 'type'
        \ },
        \ 'scope2kind': {
            \ 'data':        'd',
            \ 'newtype':     'n',
            \ 'constructor': 'c',
            \ 'type':        't'
        \ }
    \ }
endif
