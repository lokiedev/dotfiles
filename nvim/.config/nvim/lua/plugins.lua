-- Automatically disable search highlighting after 'updatetime' and when going to insert mode.
vim.cmd("packadd! nohlsearch")

vim.pack.add({
	"https://github.com/vague-theme/vague.nvim",

	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",

	"https://github.com/nvim-treesitter/nvim-treesitter",

	"https://github.com/stevearc/conform.nvim",

	"https://github.com/nvim-mini/mini.nvim",
})

-- Theme
vim.cmd.colorscheme("vague")

-- mason.nvim

local mason = require("mason")

mason.setup({})

-- mason-lspconfig.nvim

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({})

-- nvim-treesitter

local nvim_treesitter = require("nvim-treesitter")

nvim_treesitter.setup({})

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})

vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and kind == "update" then
			if not ev.data.active then
				vim.cmd.packadd("nvim-treesitter")
			end
			vim.cmd("TSUpdate")
		end
	end,
})

-- conform.nvim

local conform_nvim = require("conform")

conform_nvim.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		html = { "superhtml" },
		php = { "pint" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})

-- mini.nvim

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
