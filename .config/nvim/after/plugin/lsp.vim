:lua << EOF
	local completion = require 'completion'

	vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
		vim.lsp.diagnostic.on_publish_diagnostics, {
			-- This will disable virtual text, like doing:
			-- let g:diagnostic_enable_virtual_text = 0
			virtual_text = true,

			-- This is similar to:
			-- let g:diagnostic_show_sign = 1
			-- To configure sign display,
			--  see: ":help vim.lsp.diagnostic.set_signs()"
			signs = false,

			-- This is similar to:
			-- "let g:diagnostic_insert_delay = 1"
			update_in_insert = true,
			underline = true,
		}
	)

  local nvim_lsp = require('lspconfig')
  local on_attach = function(_, bufnr)
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

    --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>/', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>cw', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    --vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xd', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)
  end

  local servers = {'clangd', 'pyls'}

  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = function(...)
				on_attach(...)
				completion.on_attach(...)
			end
    }
  end
EOF

set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

command! Format execute 'lua vim.lsp.buf.formatting()'
