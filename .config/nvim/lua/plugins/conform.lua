return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  config = function()
    require("conform").setup({
      format_on_save = true,
      formatters_by_ft = {
        javascript = { "oxfmt" },
        typescript = { "oxfmt" },
        vue = { "oxfmt" },
      },
    })
  end,
}
