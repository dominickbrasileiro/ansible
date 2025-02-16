local o = vim.opt

o.colorcolumn = nil

-- Line numbers etc in Netrw
vim.cmd [[let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro']]

return {}
