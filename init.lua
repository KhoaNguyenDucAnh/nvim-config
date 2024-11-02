-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Auto compile
-- vim.api.nvim_create_autocmd("BufWritePost", {
--	pattern = "*.java",
--	command = '!javac "%:p"',
-- })
