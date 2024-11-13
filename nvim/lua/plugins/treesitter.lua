return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-context",
  },
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "arduino",
        "bash",
        "c",
        "cmake",
        "cpp",
        "dockerfile",
        "html",
        "http",
        "java",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "latex",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "mermaid",
        "ninja",
        "python",
        "qmldir",
        "qmljs",
        "regex",
        "scss",
        "todotxt",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "vue",
        "yaml",
      },
      sync_install = false,
      ignore_install = { "all" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enanble = true },
      -- autotag = {
      --   enable = true,
      -- },
      interactive_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = false,
          node_decremental = "grm",
        },
      },
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = "o",
          toggle_hl_groups = "i",
          toggle_injected_languages = "t",
          toggle_anonymous_nodes = "a",
          toggle_language_display = "I",
          focus_language = "f",
          unfocus_language = "F",
          update = "R",
          goto_node = "<cr>",
          show_help = "?",
        },
      },
    })

    require("treesitter-context").setup()

    local opt = vim.opt
    opt.foldmethod = "expr"
    opt.foldexpr = "nvim_treesitter#foldexpr()"

    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.latex = {
      install_info = {
        url = "~/prog/tree-sitter/tree-sitter-latex",
        files = { "src/parser.c" },
      },
    }

    -- save and restore folds
    local function is_not_fold_buffer()
      return vim.api.nvim_buf_get_name(0) == ""
        or vim.bo.filetype == "toggleterm"
        or vim.bo.filetype == "NvimTree"
        or vim.bo.filetype == "dapui_console"
        or vim.bo.filetype == "dapui_scopes"
        or vim.bo.filetype == "dapui_breakpoints"
        or vim.bo.filetype == "dapui_stacks"
        or vim.bo.filetype == "dapui-repl"
        or vim.bo.filetype == ""
        or vim.bo.filetype == "DiffviewFiles"
    end
    local fold_augroup = vim.api.nvim_create_augroup("Folds", { clear = true })

    vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
      group = fold_augroup,
      pattern = "*",
      callback = function()
        if is_not_fold_buffer() then
          return
        end
        vim.cmd("mkview")
      end,
    })

    vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
      group = fold_augroup,
      pattern = "?*",
      callback = function()
        if is_not_fold_buffer() then
          return
        end
        vim.cmd("silent! loadview")
      end,
    })

    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      pattern = "*.hbs",
      command = "set filetype=html",
    })
  end,
}
