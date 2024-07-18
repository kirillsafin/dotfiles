return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    {
      "folke/lazydev.nvim",
      ft = "lua",                                                            -- only load on lua files
      opts = {
        library = { { path = "luvit-meta/library", words = { "vim%.uv" } } } -- load luvit types, when vim.uv is found
      },
    }
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local arduino_util = require("mijikhna.utils.arduino")
    local qt = require("mijikhna.utils.qt")

    local capabilities = cmp_nvim_lsp.default_capabilities()
    capabilities.workspace = { didChangeWatchedFiles = { dynamicRegistration = true } }

    capabilities = vim.tbl_deep_extend('force', capabilities, {
      offsetEncoding = { 'utf-16' },
      general = {
        positionEncodings = { 'utf-16' },
      },
    })

    -- LSP Servers Config

    -- Lua LSP: install lua lsp server; official installation guide for sumneko_l
    lspconfig.lua_ls.setup({
      capabilitie = capabilities,
      settings = { Lua = { telemetry = { enable = false } } },
    })

    -- Typescript LSP: install typescript LSP (tsserver) npm install -g typescript typescript-language-server
    lspconfig.tsserver.setup({
      capabilities = capabilities,
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = os.getenv("HOME") .. "/.nvm/versions/node/v20.12.0/lib/node_modules/@vue/language-server",
            languages = { "vue" },
          },
        },
      },
      filetypes = {
        "javascript",
        "typescript",
        "vue",
      },
    })

    -- Vue3 LSP
    -- lspconfig.volar.setup({})

    -- C/C++ LSP: install c/c++ LSP (clangd) apt install clangd
    lspconfig.clangd.setup({
      cmd = { 'clangd' },
      offset_encoding = "utf-16",
      capabilities = capabilities,
    })

    -- Java LSP:
    --1: clone repository git clone https://github.com/eclipse/eclipse.jdt.ls.git,
    --2: mvn clean verify -DskipTests=true
    --3: set JDTLS_HOME to .../eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository
    lspconfig.jdtls.setup({
      capabilities = capabilities,
    })


    lspconfig.cmake.setup({
      capabilities = capabilities,
    })

    -- JSON LSP: install json LSP npm install -g vscode-langservers-extracted
    lspconfig.jsonls.setup({
      capabilities = capabilities,
      cmd = { "vscode-json-language-server", "--stdio" }
    })

    lspconfig.cssls.setup({
      capabilities = capabilities,
    })

    -- HTML LSP: seems not to be useful
    lspconfig.html.setup({
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

    -- npm install -g emmet-ls
    lspconfig.emmet_ls.setup({
      capabilities = capabilities,
    })

    -- Docker-Compose LSP: npm install -g @microsoft/compose-language-service
    lspconfig.docker_compose_language_service.setup({ filetypes = { 'yaml.docker-compose' } })

    -- Dockerfile LSP: npm install -g dockerfile-language-server-nodejs
    lspconfig.dockerls.setup({})

    -- YAML LSP: npm install -g yaml-language-server
    lspconfig.yamlls.setup({
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
    lspconfig.salt_ls.setup({})

    -- Arduino LSP: go install github.com/arduino/arduino-language-server@latest; install arduino-cli
    -- local fqbn = "esp8266:esp8266:d1_mini_pro"
    lspconfig.arduino_language_server.setup({
      general = { positionEncodings = { "utf-16" } },
      capabilities = capabilities,
      cmd = {
        "arduino-language-server",
        "-cli-config", os.getenv('HOME') .. '/.arduino15/arduino-cli.yml',
        "-fqbn", arduino_util.get_arduino_board_fqbn(),
        "-cli", os.getenv('HOME') .. "/prog/arduino/arduino-cli",
        "-clangd", "/usr/bin/clangd"
      }
    })

    -- Rust LSP
    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      settings = {
        ['rust-analyzer'] = {
          diagnostics = {
            enable = true,
          }
        }
      },
    })

    lspconfig.qmlls.setup({
      capabilities = capabilities,
      cmd = { qt.get_qmlls_path() }
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
    keymap.set("n", "<leader>vo", ":Telescope lsp_outgoing_calls", { desc = "Show outgoing calls" })
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
