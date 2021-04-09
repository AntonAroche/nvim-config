nnoremap <leader>ss :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leadper>sl <cmd>Telescope live_grep<CR>
nnoremap <leader>sg <cmd>Telescope git_files<CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>
