-- If lspconfig not available just return without having errors
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("stepyt.lsp.lsp-installer")
require("stepyt.lsp.handlers").setup()
