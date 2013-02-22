call vice#Extend({'ft_addons': {'php': ['github:techlivezheng/tagbar-phpctags']}})
call vice#CreateCommand('TagbarToggle', ['github:majutsushi/tagbar'], {'before':'vice#tagbar#before'})

nnoremap <leader>t :TagbarToggle<cr>
