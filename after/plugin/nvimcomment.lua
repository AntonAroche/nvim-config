require('nvim_comment').setup({
  operator_mapping = "gc",
  line_mapping = "<leader>vbleh",
})

vim.keymap.set("n", "gc", "<Cmd>set operatorfunc=CommentOperator<CR>g@l")
