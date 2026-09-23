vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, { desc = "Open diagnostic" })
vim.keymap.set("i", "<C-C>", function()
	vim.lsp.completion.get()
end)

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

vim.keymap.set("n", "<leader>gbn", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>gbp", vim.cmd.bprevious, { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>cb", vim.cmd.bdelete, { desc = "Close current buffer" })
