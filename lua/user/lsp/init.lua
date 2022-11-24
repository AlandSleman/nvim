local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- USER START
_.tailwindcss.setup {}
_.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  -- cmd = { "typescript-language-server", "--stdio" },
  -- on_attach = function(client)
  --   client.server_capabilities.document_formatting = false
  --   require("lsp/on_attach")(client)
  -- end,
}
require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
