call vice#Extend({
    \ 'ft_addons': {
        \ 'php': [
            \ 'github:techlivezheng/tagbar-phpctags',
        \ ],
    \ },
\ })

call vice#CreateCommand('TagbarToggle', ['github:majutsushi/tagbar'], 'vice#tagbar#Init')
nnoremap <leader>t :TagbarToggle<cr>
