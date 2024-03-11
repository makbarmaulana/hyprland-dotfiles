local map = function(mode, key, result)
    vim.keymap.set(mode, key, result, { noremap = true, silent = true })
end

-- Exit insert mode
map("i", "jj", "<Esc>")

-- Move by line even with `wrap` set
map("n", "j", "gj")
map("n", "k", "gk")

-- Split panel
map("n", "<C-\\>", ":split<CR>")		-- Horizontal split
map("n", "<C-\\><C-\\>", ":vsplit<CR>")	-- Vertical split
map("n", "<C-w>", ":q<CR>")				-- Close panel

-- Move between panel
map("n", "<C-h>", "<C-w>h") -- Focus Left
map("n", "<C-j>", "<C-w>j") -- Focus Down
map("n", "<C-k>", "<C-w>k") -- Focus Up
map("n", "<C-l>", "<C-w>l") -- Focus Right

