return {
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")

      lint.linters_by_ft = {
        python = { "flake8", "mypy" },
      }

      -- mypy: более подробный вывод
      lint.linters.mypy = vim.tbl_deep_extend("force", lint.linters.mypy or {}, {
        args = {
          "--show-column-numbers",
          "--show-error-codes",
          "--ignore-missing-imports",
          "--pretty",
        },
      })

      -- дебаунс, чтобы не спамить линтерами при вводе
      local group = vim.api.nvim_create_augroup("LintOnTheFly", { clear = true })
      local timer = nil
      local function debounced_lint()
        if timer then vim.fn.timer_stop(timer) end
        timer = vim.fn.timer_start(250, function()
          pcall(lint.try_lint)
        end)
      end

      -- линтинг в реальном времени и при ключевых событиях
      vim.api.nvim_create_autocmd({
        "BufEnter",
        "BufWritePost",
        "InsertLeave",
        "TextChanged",
        "TextChangedI",
      }, {
        group = group,
        callback = debounced_lint,
      })

      -- отображение диагностик
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
      })
    end,
  },
}

