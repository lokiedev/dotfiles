vim.diagnostic.config({
	virtual_text = true, -- Enables inline error/warning text
	signs = true, -- Shows error icons in the line number gutter
	underline = true, -- Underlines the problematic code
	update_in_insert = false, -- Don't update diagnostics while you're typing
	severity_sort = true, -- Sort errors/warnings by severity
})
