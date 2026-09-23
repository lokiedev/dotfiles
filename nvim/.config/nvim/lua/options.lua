local opt = vim.o

-- LOOKS

opt.number = true -- Show line number.
opt.signcolumn = "yes" -- Preserve column for diagnostic sign.
opt.cursorline = true -- Highlight the line where the cursor is on.
opt.scrolloff = 10 -- Keep this many screen lines above/below the cursor.
opt.list = true -- Show <tab> and trailing spaces.

opt.expandtab = false
opt.tabstop = 4
opt.shiftwidth = 4

-- BEHAVIOR

opt.timeoutlen = 1000

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term.
opt.ignorecase = true
opt.smartcase = true

-- If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s). See `:h 'confirm'`
opt.confirm = true

opt.completeopt = "menu,menuone,noselect,popup"
opt.autocomplete = true
