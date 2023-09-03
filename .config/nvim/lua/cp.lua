vim.g.runcpp = false
vim.g.runpy = false

vim.api.nvim_create_autocmd(
    {"BufEnter", "BufWinEnter"},
    {
        pattern = {"*.cpp"},
        callback = function()
            if vim.g.runcpp == true then
                vim.keymap.set('n', '<leader>rr', ':w <bar> !g++ -std=c++14 % -o %:r &> output && ./%:r < input > output && rm ./%:r<CR><CR>')
                vim.keymap.set('n', '<leader>tt', ':!cp ~/repos/CP/templates/template.cpp % <CR><CR>')
            end
            vim.g.runcpp = true

        end
    }
    -- command = "nnoremap <leader>rr :w <bar> !g++ -std=c++14 % -o %:r &> output && ./%:r < input > output && rm ./%:r<CR><CR>"
)

vim.api.nvim_create_autocmd(
    {"BufEnter", "BufWinEnter"},
    {
        pattern = {"*.py"},
        callback = function()
            if vim.g.runpy == true then
                vim.keymap.set('n', '<leader>rr', ':w <bar> !python3 % < input > output 2>&1<CR><CR>')
                vim.keymap.set('n', '<leader>tt', ':!cp ~/repos/CP/templates/template.py % <CR><CR>')
            end
            vim.g.runpy = true
        end
    }
)

