vim.g.mapleader = " "

local keymap = vim.keymap

--keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window managment
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" }) 
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("o", "<leader>se", "<C-w>=", { desc = "set windows equals sizes" }) 
keymap.set("n", "<leader>x", ":close<CR>", { desc = "close current window" }) 

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) 
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) 
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) 
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) 
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 

-- delete buffer
keymap.set("n", "<leader>db", ":bd<CR>", { desc = "delete buffer" })
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "delete buffer" })

