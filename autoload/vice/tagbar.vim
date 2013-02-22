func! vice#tagbar#before()
    let g:tagbar_autofocus = 1
    let g:tagbar_compact = 1
    let g:tagbar_expand = 0
    let g:tagbar_iconchars = ['▸','▾']
    let g:tagbar_singleclick = 1
    let g:tagbar_width = 30

    if executable('coffeetags')
        let g:tagbar_type_coffee = {
            \ 'ctagsbin': 'coffeetags',
            \ 'ctagsargs': '',
            \ 'sro' : ".",
            \ 'kinds': [
                \ 'f:functions',
                \ 'o:object'
            \ ],
            \ 'kind2scope': {
                \ 'f': 'object',
                \ 'o': 'object'
            \ }
        \ }
    endif

    if executable('lushtags')
        let g:tagbar_type_haskell = {
            \ 'ctagsbin': 'lushtags',
            \ 'ctagsargs': '--ignore-parse-error --',
            \ 'sro': '.',
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
            \ 'kind2scope': {
                \ 'd': 'data',
                \ 'n': 'newtype',
                \ 'c': 'constructor',
                \ 't': 'type'
            \ },
            \ 'scope2kind': {
                \ 'data': 'd',
                \ 'newtype': 'n',
                \ 'constructor': 'c',
                \ 'type': 't'
            \ }
        \ }
    endif
endf
