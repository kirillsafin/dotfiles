return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim",                   opts = {} },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local utils = require("mijikhna.config.utils")

    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Lua LSP: install lua lsp server; official installation guide for sumneko_l
    -- require('neodev').setup()
    lspconfig.lua_ls.setup({
      capabilitie = capabilities,
      settings = {
        Lua = {
          telemetry = {
            enable = false,
          },
        },
      },
    })

    -- Typescript LSP: install typescript LSP (tsserver) npm install -g typescript typescript-language-server
    lspconfig.tsserver.setup({})

    -- C/C++ LSP: install c/c++ LSP (clangd) apt install clangd
    lspconfig.clangd.setup({
      cmd = { 'clangd' },
      offsetEncoding = "utf-16",
      capabilities = capabilities,
    })
    require('lspconfig').cmake.setup({
      capabilities = capabilities,
    })

    -- JSON LSP: install json LSP npm install -g vscode-langservers-extracted
    require("lspconfig").jsonls.setup({
      capabilities = capabilities,
      cmd = { "vscode-json-language-server", "--stdio" }
    })

    require("lspconfig").cssls.setup({
      capabilities = capabilities,
    })

    -- HTML LSP: seems not to be useful
    -- require 'lspconfig'.html.setup()

    -- Python LSP
    require("lspconfig").pyright.setup({
      cmd = { "pyright-langserver", "--stdio" },
      capabilities = capabilities,
    })

    -- Bash LSP npm install -g bash-language-server
    -- install spellcheck: apt install spellcheck, brew install shellcheck
    require("lspconfig").bashls.setup({
      capabilities = capabilities,
    })

    -- Vue3 LSP
    require 'lspconfig'.volar.setup {
      capabilities = capabilities,
      init_options = {
        typescript = {
          tsdk = os.getenv("HOME") .. "/.nvm/versions/node/v20.12.0/lib/node_modules/typescript/lib",
        },
      },
    }

    -- npm install -g emmet-ls
    require("lspconfig").emmet_ls.setup({})

    -- Docker-Compose LSP: npm install -g @microsoft/compose-language-service
    require("lspconfig").docker_compose_language_service.setup({ filetypes = { 'yaml.docker-compose' } })

    -- Dockerfile LSP: npm install -g dockerfile-language-server-nodejs
    require("lspconfig").dockerls.setup({})

    -- YAML LSP: npm install -g yaml-language-server
    require("lspconfig").yamlls.setup({
      filetypes = { 'yaml' },
      settings = {
        yaml = { keyOrdering = false },
        redhat = {
          telemetry = {
            enabled = false
          }
        }
      }
    })

    -- Salt
    require("lspconfig").salt_ls.setup({})

    -- Arduino LSP: go install github.com/arduino/arduino-language-server@latest; install arduino-cli
    -- local fqbn = "esp8266:esp8266:d1_mini_pro"
    require("lspconfig").arduino_language_server.setup({
      general = { positionEncodings = { "utf-16" } },
      capabilities = capabilities,
      cmd = {
        "arduino-language-server",
        "-cli-config", os.getenv('HOME') .. '/.arduino15/arduino-cli.yml',
        "-fqbn", utils.getArduinoBoardFQBN(),
        "-cli", os.getenv('HOME') .. "/prog/arduino/arduino-cli",
        "-clangd", "/usr/bin/clangd"
      }
    })

    -- Rust LSP
    require("lspconfig").rust_analyzer.setup({
      capabilities = capabilities,
      settings = {
        ['rust-analyzer'] = {
          diagnostics = {
            enable = true,
          }
        }
      },
    })

    for type, icon in pairs({ Error = "", Warn = "", Hint = "", Info = " " }) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    local keymap = vim.keymap

    keymap.set("n", "<leader>vd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions" })
    keymap.set("n", "<leader>vD", vim.lsp.buf.declaration, { desc = "Got to declaration " })
    keymap.set("n", "<leader>vr", ":Telescope lsp_references<CR>", { desc = "Show LSP references" })
    keymap.set("n", "<leader>vi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show LSP implementations" })
    keymap.set({ "n", "i" }, "<C-h", vim.lsp.buf.signature_help, { desc = "Show signature" })
    keymap.set("n", "<leader>vr", vim.lsp.buf.rename, { desc = "Smart Rename" })
    keymap.set("n", "<leader>vh", vim.lsp.buf.hover)
    keymap.set({ "n", "v" }, "<leader>va", vim.lsp.buf.code_action, { desc = "See available code actions" })
    keymap.set("n", "<leader>gd", "<cmd>Telescope diagnostics bufnr=0<CR>")
    keymap.set("n", "<leader>vf", vim.diagnostic.open_float)
    keymap.set("n", "<leader>vn", vim.diagnostic.goto_prev)
    keymap.set("n", "<leader>vp", vim.diagnostic.goto_next)

    keymap.set("n", "vt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Show LSP type definitions " })
    keymap.set("n", "<leader>rs", ":LspRestart<CR>")
    keymap.set("n", "<leader>vl", ":call LspLocationList")
  end,
}
