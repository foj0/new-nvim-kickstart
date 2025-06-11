-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.o.number = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`

-- I think this has to be on for indent_line.lua to work
-- vim.o.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- PERF:
-- =====================
-- My custom options
-- =====================

vim.o.relativenumber = true -- relative number on side, to help with jumping

-- Indent settings:
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.smartindent = true -- idk about this one. May not need. Supposed to help with c type languages

vim.opt.hlsearch = false -- Turns off search highlights
vim.opt.incsearch = true -- Incremental searching

vim.opt.guicursor = '' -- Fat insert cursor

-- Make cursor change color on insert mode
-- vim.api.nvim_set_hl(0, 'InsertCursor', { bg = '#ffaa00', fg = '#ffffff' })
-- vim.opt.guicursor = {
--   'n-v:block-Cursor', -- Normal/visual mode: block cursor with default styling
--   'i:block-InsertCursor', -- Insert mode: block cursor with custom yellow-orange color
-- }

vim.opt.wrap = false -- Disable line wrapping

vim.o.cursorline = false -- Show which line your cursor is on

vim.g.have_nerd_font = true -- use terminal nerd font and devicons

vim.opt.conceallevel = 1 -- added this for obsidian.nvim formatting concealment features

vim.opt.colorcolumn = '80'

-- vim.g.loaded_netrw = 0
--
-- vim.g.loaded_netrwPlugin = 0
-- vim: ts=2 sts=2 sw=2 et
