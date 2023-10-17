
local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  lint.pylint.with({
    diagnostics_postprocess = function(diagnostic)
      diagnostic.code = diagnostic.message_id
    end,
  }),

  formatting.isort,
  formatting.black.with({
    extra_args = { "--line-length", "100" },
  }),

  formatting.djlint,
  lint.djlint,

  lint.eslint_d,
  -- lint.eslint.with({
  --   extra_args = { "--config", vim.fn.expand("~/.config/nvim/rc/.eslintrc.cjs") },
  -- }),
  formatting.prettier.with({
    extra_args = { "--config", vim.fn.expand("~/.config/nvim/rc/.prettierrc.cjs") },
  }),
}

null_ls.setup {
  debug = true,
  sources = sources,
}
