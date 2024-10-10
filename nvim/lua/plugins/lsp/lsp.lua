return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = { { path = "luvit-meta/library", words = { "vim%.uv" } } }, -- load luvit types, when vim.uv is found
      },
    },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local arduino_util = require("utils.arduino")
    local qt = require("utils.qt")

    local capabilities = cmp_nvim_lsp.default_capabilities()
    capabilities.workspace = { didChangeWatchedFiles = { dynamicRegistration = true } }

    capabilities = vim.tbl_deep_extend("force", capabilities, {
      offsetEncoding = { "utf-16" },
      general = {
        positionEncodings = { "utf-16" },
      },
    })

    -- LSP Servers Config
    -- C/C++ LSP: install c/c++ LSP (clangd) apt install clangd
    lspconfig.clangd.setup({
      cmd = { "clangd" },
      offset_encoding = "utf-16",
      capabilities = capabilities,
    })

    lspconfig.cmake.setup({
      capabilities = capabilities,
    })

    -- Python LSP
    lspconfig.pyright.setup({
      cmd = { "pyright-langserver", "--stdio" },
      capabilities = capabilities,
    })

    -- Bash LSP npm install -g bash-language-server
    -- install spellcheck: apt install spellcheck, brew install shellcheck
    lspconfig.bashls.setup({
      capabilities = capabilities,
    })

    -- YAML LSP: npm install -g yaml-language-server
    lspconfig.yamlls.setup({
      filetypes = { "yaml" },
      settings = {
        yaml = { keyOrdering = false },
        redhat = {
          telemetry = {
            enabled = false,
          },
        },
      },
    })

    for type, icon in pairs({ Error = "", Warn = "", Hint = "", Info = " " }) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    local keymap = vim.keymap
    keymap.set("n", "<leader>vd", ":Telescope lsp_definitions<CR>", { desc = "Go to definitions" })
    keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definitions" })
    keymap.set("n", "<leader>vD", ":Telescope lsp_type_definitions", { desc = "Go to declaration " })
    keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration " })
    keymap.set("n", "<leader>vr", ":Telescope lsp_references<CR>", { desc = "Go to references" })
    keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
    keymap.set("n", "<leader>vi", "Telescope lsp_implementations<CR>", { desc = "Go to implementations" })
    keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to implementations" })
    keymap.set("n", "<leader>vo", ":Telescope lsp_outgoing_calls<CR>", { desc = "Show outgoing calls" })
    keymap.set("n", "go", vim.lsp.buf.outgoing_calls, { desc = "Show outgoing calls" })
    keymap.set("n", "<leader>vi", ":Telescope lsp_incoming_calls", { desc = "Show incoming calls" })
    keymap.set("n", "gi", vim.lsp.buf.incoming_calls, { desc = "Show incoming calls" })
    keymap.set("n", "<leader>va", ":Telescope quickfix<CR>", { desc = "See available code actions" })
    keymap.set({ "n", "v" }, "ga", vim.lsp.buf.code_action, { desc = "See available code actions" })

    keymap.set("n", "<leader>vt", ":Telescope diagnostics bufnr=0<CR>")
    keymap.set({ "n", "i" }, "<C-h>", vim.lsp.buf.signature_help, { desc = "Show signature" })
    keymap.set("n", "gf", vim.diagnostic.open_float)
    keymap.set("n", "gR", vim.lsp.buf.rename, { desc = "Smart Rename" })
    keymap.set("n", "gh", vim.lsp.buf.hover)
    keymap.set("n", "gp", vim.diagnostic.goto_prev)
    keymap.set("n", "gn", vim.diagnostic.goto_next)

    keymap.set("n", "<leader>lr", ":LspRestart<CR>")
    keymap.set("n", "<leader>ll", ":LspLocationList<CR>")
  end,
}
