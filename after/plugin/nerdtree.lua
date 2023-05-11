vim.g.NERDTreeShowHidden = 1

vim.api.nvim_create_autocmd("StdinReadPre", {pattern="*", command="let s:std_in=1"})
vim.api.nvim_create_autocmd("VimEnter", {
    pattern="*",
    command="NERDTree | if argc() > 0 || exists('s:std_in') | wincmd p | endif "
})
