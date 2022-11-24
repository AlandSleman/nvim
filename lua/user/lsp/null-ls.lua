local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- USER START EDITED
null_ls.setup({
	debug = false,
	sources = {
    formatting.prettier.with({ cli_options = {
      arrow_parens = "always",
      bracket_spacing = true,
      bracket_same_line = false,
      embedded_language_formatting = "auto",
      end_of_line = "lf",
      html_whitespace_sensitivity = "css",
      -- jsx_bracket_same_line = false,
      jsx_single_quote = false,
      print_width = 200,
      prose_wrap = "preserve",
      quote_props = "as-needed",
      semi = true,
      single_attribute_per_line = false,
      single_quote = true,
      tab_width = 2,
      trailing_comma = "es5",
      use_tabs = false,
      vue_indent_script_and_style = false,
    } }),
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.stylua,
    -- diagnostics.flake8

	},
})
