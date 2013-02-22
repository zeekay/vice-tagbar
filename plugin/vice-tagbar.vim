if !exists('g:vice.tagbar')
    let g:vice.tagbar = {}
endif

if !exists('g:vice.tagbar.loaded') || &cp
    let g:vice.tagbar.loaded = 1
else
    finish
endif

let addon_dir = expand('<sfile>:p:h:h')
let &rtp.=','.addon_dir

call vice#Extend({
    \ 'ft_addons': {
        \ 'php': [
            \ 'github:techlivezheng/tagbar-phpctags',
        \ ],
    \ },
\ })

call vice#CreateCommand('TagbarToggle', ['github:majutsushi/tagbar'], 'vice#tagbar#Init')
nnoremap <leader>t :TagbarToggle<cr>
