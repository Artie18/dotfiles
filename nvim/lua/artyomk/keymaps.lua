-- nnoremap <silent> ;fr <cmd>Telescope live_grep<CR>
-- nnoremap <silent> ;ff <cmd>Telescope find_files<CR>
-- 
-- nnoremap <silent> ;j <cmd>tabprevious<CR>
-- nnoremap <silent> ;l <cmd>tabnext<CR>
-- nnoremap <silent> ;n <cmd>tabnew<CR>
-- nnoremap <silent> ;gi <cmd>GoImports<CR>
--
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

--- Telescope finder
keymap("", ";ff", "<cmd>Telescope find_files<CR>", default_opts)
keymap("", ";fr", "<cmd>Telescope live_grep<CR>", default_opts)

-- Tabs
keymap("", ";j", "<cmd>tabprevious<CR>", default_opts)
keymap("", ";l", "<cmd>tabnext<CR>", default_opts)
keymap("", ";n", "<cmd>tabnew<CR>", default_opts)

