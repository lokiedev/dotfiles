
-- Automatically disable search highlighting after 'updatetime' and when going to insert mode.
vim.cmd('packadd! nohlsearch')

-- Theme
vim.pack.add( {"https://github.com/vague-theme/vague.nvim" })
vim.cmd.colorscheme("vague")

-- mini.nvim

vim.pack.add({ "https://github.com/nvim-mini/mini.nvim" })

local mini_icons = require("mini.icons")

mini_icons.setup({})


local mini_tabline = require("mini.tabline")

mini_tabline.setup({})


local mini_pick = require("mini.pick")
local mini_pick_builtin = mini_pick.builtin

mini_pick.setup({})
vim.keymap.set("n", "<leader>pf", mini_pick_builtin.files)
vim.keymap.set("n", "<leader>pg", mini_pick_builtin.grep)
vim.keymap.set("n", "<leader>pl", mini_pick_builtin.grep_live)
vim.keymap.set("n", "<leader>ph", mini_pick_builtin.help)
vim.keymap.set("n", "<leader>pb", mini_pick_builtin.buffers)
vim.keymap.set("n", "<leader>pc", mini_pick_builtin.cli)
vim.keymap.set("n", "<leader>pr", mini_pick_builtin.resume)
