local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>m", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>n", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>e", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>i", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>,", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>.", function() ui.nav_file(6) end)
vim.keymap.set("n", "<leader>l", function() ui.nav_file(7) end)
