nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>pl <cmd>Telescope live_grep<CR>
nnoremap <leader>pg <cmd>Telescope git_files<CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>
