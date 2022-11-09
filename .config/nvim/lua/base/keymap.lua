local vkey = vim.api

-- Rust keymap
vkey.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {})
vkey.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', {})
vkey.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', {})
vkey.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {})

--" Use K to show documentation in preview window.
--nnoremap <silent> K :call <SID>show_documentation()<CR>
--
--function! s:show_documentation()
--  if (index(['vim','help'], &filetype) >= 0)
--    execute 'h '.expand('<cword>')
--  else
--    call CocAction('doHover')
--  endif
--endfunction
