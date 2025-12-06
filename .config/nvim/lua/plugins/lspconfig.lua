return { 
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", version = "^1.0.0", config = true },
		{ "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
		"hrsh7th/cmp-nvim-lsp",
		"nvimtools/none-ls.nvim",
		"nvim-lua/plenary.nvim",
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},
	config = function()
		require("mason").setup()
		
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		
		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					-- 各サーバーをvim.lsp.configで設定
					vim.lsp.config[server_name] = {
						capabilities = capabilities,
						autostart = true,
					}
					vim.lsp.enable(server_name)
				end,
			}
		})

		-- キーマッピングの設定（変更なし）
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
				vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
				vim.keymap.set("n", "<space>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, opts)
				vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "<space>f", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
			end,
		})
	end,
}
