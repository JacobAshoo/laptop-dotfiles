vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window managment
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" }) -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "set windows equals sizes" }) -- equal width and height
keymap.set("n", "<leader>x", ":close<CR>", { desc = "close current window" }) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "close current tab" }) -- close current tab

-- delete buffer
keymap.set("n", "<leader>db", ":bd<CR>", { desc = "delete buffer" })
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "delete buffer" })

-- plugin keymap

--vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "max or min split window" }) -- maximize or unmax split window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "toggle file explorer" }) -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find file [telescope]" }) -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find string [telescope]" }) -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "list help tags [telescope]" }) -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "list all git commits [telescope]" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set(
	"n",
	"<leader>gfc",
	"<cmd>Telescope git_bcommits<cr>",
	{ desc = "list commits for current file [telescope]" }
) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "list git branch [telescope]" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "list git status [telescope]" }) -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

--harpoon
keymap.set("n", "<leader>t1", ':lua require("harpoon.term").gotoTerminal(1)<cr>i')
keymap.set("t", "<leader>x", "exit<CR><CR>")

-- jabs
keymap.set("n", "<leader>j", ":JABSOpen<CR>", { desc = "view open buffers [jabs]" })

--hop
keymap.set("n", "<leader>hw", ":HopWord<CR>", { desc = "hop to word [hop]" })

-- symbols-outline
keymap.set("n", "<leader>so", ":SymbolsOutline<Cr>", { desc = "veiw symbols [SymbolsOutline]" })

-- cokline
keymap.set("n", "<S-Tab>", "<Plug>(cokeline-focus-prev)", { silent = true, desc = "next buffer [cokeline]" })
keymap.set("n", "<Tab>", "<Plug>(cokeline-focus-next)", { silent = true, desc = "prev buffer [cokeline]" })

for i = 1, 9 do
	keymap.set(
		"n",
		("<Leader>%s"):format(i),
		("<Plug>(cokeline-focus-%s)"):format(i),
		{ silent = true, desc = "focus on buffer i [cokeline]" }
	)
end

-- toggleterm
keymap.set("n", "<leader><Tab>", ":ToggleTerm<CR>", { desc = "open terminal [ToggelTerm]" })
keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "exit terminal mode" })
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "focus left" })
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "focus down" })
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "focus up" })
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "move focus right" })
keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])

--misc
keymap.set("n", "<C-O>", "<C-O><Cr>zz")
