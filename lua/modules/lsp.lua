local on_attach = require'completion'.on_attach
require'lspconfig'.tsserver.setup{ on_attach=on_attach }
require'lspconfig'.pyright.setup{on_attach=on_attach}
require'lspconfig'.html.setup{on_attach=on_attach}
require'lspconfig'.clangd.setup{on_attach=on_attach}
