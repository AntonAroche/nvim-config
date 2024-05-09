vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- Autosave
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.api.nvim_command('silent update')
    end
  end,
})

--Filetree
vim.keymap.set("n", "<leader>b", vim.cmd.Ex)

-- Move line in visual mode
vim.keymap.set("v", "R", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "S", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

-- Keeps search terms and movements in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- paste without replacing buffer
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
-- TODO fix for d

-- yank into clipboard with leader y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Sane defaults
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "U", "<C-R>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- TODO figure out how to use quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader><C-g>", "<cmd>GitBlameOpenCommitURL<CR>")

-- leader r to replace word on character
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--Colemak
vim.keymap.set("n", "a", "h")
vim.keymap.set("n", "h", "a")
vim.keymap.set({"n", "v"}, "j", "r")
vim.keymap.set({"n", "v"}, "r", "j")
vim.keymap.set({"n", "v"}, "k", "s")
vim.keymap.set({"n", "v"}, "s", "k")
vim.keymap.set("n", "l", "t")
vim.keymap.set("n", "t", "l")
vim.keymap.set("n", "A", "H")
vim.keymap.set("n", "H", "A")
vim.keymap.set("n", "K", "S")
vim.keymap.set("n", "L", "T")
vim.keymap.set("n", "T", "L")
vim.keymap.set("n", "R", "J")
vim.keymap.set("n", "S", "K")
