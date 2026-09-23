-- AUTOCOMMANDS (EVENT HANDLERS)

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Configure LSP --
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		vim.lsp.completion.enable(true, client.id, args.buf, {
			autotrigger = true,
		})
	end,
})

-- Trigger completion on identifier insert --
vim.api.nvim_create_autocmd("InsertCharPre", {
	callback = function()
		local char = vim.v.char

		if char:match("[%w_]") then
			vim.schedule(function()
				vim.lsp.completion.get()
			end)
		end
	end,
})

-- USER COMMANDS: DEFINE CUSTOM COMMANDS

-- Add user commands here
