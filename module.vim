call vice#Extend({
    \ 'addons': ['github:majutsushi/tagbar'],
    \ 'ft_addons': {'php': ['github:techlivezheng/tagbar-phpctags']}
\ })

let g:tagbar_compact = 1
nnoremap <leader>t :TagbarToggle<cr>

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

if executable('jsctags')
    let g:tagbar_type_javascript = {
        \ 'ctagsbin' : 'jsctags'
    \ }
endif
