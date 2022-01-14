local lsp = require "lspconfig"
local coq = require "coq"

lsp.bashls.setup{coq.lsp_ensure_capabilities()}
lsp.clangd.setup{coq.lsp_ensure_capabilities()}
lsp.cssmodules_ls.setup{coq.lsp_ensure_capabilities()}
lsp.dockerls.setup{coq.lsp_ensure_capabilities()}
lsp.eslint.setup{coq.lsp_ensure_capabilities()}
lsp.emmet_ls.setup{coq.lsp_ensure_capabilities()}
lsp.grammarly.setup{coq.lsp_ensure_capabilities()}
lsp.html.setup{coq.lsp_ensure_capabilities()}
lsp.jsonls.setup{coq.lsp_ensure_capabilities()}
lsp.tsserver.setup{coq.lsp_ensure_capabilities()}
lsp.remark_ls.setup{coq.lsp_ensure_capabilities()}
lsp.pyright.setup{coq.lsp_ensure_capabilities()}}
lsp.vimls.setup{coq.lsp_ensure_capabilities()}}