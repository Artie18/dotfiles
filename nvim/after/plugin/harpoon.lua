local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", ";a", mark.add_file)
vim.keymap.set("n", ";h", ui.toggle_quick_menu)
