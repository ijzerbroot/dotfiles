-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- MAPPINGS
local map = require("core.utils").map

map("n", "<C-\\>", ":bd<CR>")
--map("n", "y", "y`]")
map("n","ge","<S-g>")
map("n","gh","0")
map("v","gh","0")
map("n","gl","$")
map("v","gl","$")
map("n","gs","^")
map("v","gs","^")
map("n","gt","H")
map("v","gt","H")
map("n","gc","M")
map("v","gc","M")
map("n","gb","L")
map("v","gb","L")
map("n","mm","%")
map("i","jj","<C-o>")
map("n","<leader>wq", "<cmd>:q<cr>")
map("n","<leader>wo", "<C-w>o")
map("n","<leader>ws", "<cmd>:split<cr>")
map("n","<leader>wv" ,"<cmd>:vsplit<cr>")
map("n","<leader>bq", "<cmd>:bdelete<cr>")
map("n","gn","<cmd>:bnext<cr>")
map("n","gp","<cmd>:bprev<cr>")
map("n","%","ggVG")
map("n","vv","viw")
map("n","vl","<S-v>")
--imap <BS> <C-o>"_X
map("i","<C-d>","<C-o><C-d>")
map("i","<C-a>","<C-o>^")
map("i","<C-e>","<C-o>$")
map("i","<C-u>","<C-o><C-u>")
map("i","<C-b>","<C-o>viw")
map("i","<C-Right>","<C-o>w")
map("i","<C-Left>","<C-o>b")
map("i","<C-s>","<C-o>s")
map("i","<S-Left>","<C-o><S-Left>")
map("i","<S-Right>","<C-o><S-Right>")
map("i","<C-\>","<C-o>:bdelete<cr>")
map("i","<C-z>","<C-o>u")
-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.o.gfn = "mononoki Nerd Font Mono:h18"
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
--require("hop").setup { keys = "etovxqpdygfblzhckisuran" }

--vim.api.nvim_set_keymap("n", "s", "<cmd>lua require'hop'.hint_char2()<cr>", {})
--vim.api.nvim_set_keymap("n", "S", "<cmd>lua require'hop'.hint_patterns()<cr>", {})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
