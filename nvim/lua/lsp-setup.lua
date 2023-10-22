-- Setup nvim-cmp.lsp
local lspkind = require('lspkind')
local luasnip = require('luasnip')
local cmp = require('cmp')

local helper_func = require('nvim-helper-functions')


cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<C-n>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
    ['<C-p>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      presets = 'codicons',
      maxwidth = 50,
      --[[
      symbol_map = {
        Text = "",
        Method = "",
        Function = "",
        Constructor = "",
        Field = "ﰠ",
        Variable = "",
        Class = "ﴯ",
        Interface = "",
        Module = "",
        Property = "ﰠ",
        Unit = "塞",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "פּ",
        Event = "",
        Operator = "",
        TypeParameter = ""
      },
      ]]--
      before = function (entry, vim_item)
        return vim_item
      end
    })
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
    { name = 'nvim_lsp_signature_help' },
  }, {
    { name = 'buffer' },
    { name = 'path' },
  })
})


-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?'}, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = { { name = 'buffer' } }
})


-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources(
    { { name = 'path' } },
    { { name = 'cmdline' } }
  )
})


-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.offsetEncoding = "utf-8"

-- Lua LSP
-- install lua lsp server; official installation guide for sumneko_lua
require'lspconfig'.lua_ls.setup{
  cmd = { os.getenv('HOME') .. '/prog/language-servers/lua-language-server/bin/lua-language-server' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ','),
      },
      diagnostics = {
        globals = {'vim', 'use'}
      },
      telemetry = {
        enable = false,
      },
    },
  },
  capabilities = capabilities,
}

-- Typescript LSP
-- install typescript LSP (tsserver) npm install -g typescript-language-server
require'lspconfig'.tsserver.setup{
  capabilities = capabilities
}

-- C/C++ LSP
-- install c/c++ LSP (clangd) apt install clangd
require'lspconfig'.clangd.setup{
  capabilities = capabilities,
  cmd = { 'clangd', '--enable-config' },
}

require'lspconfig'.cmake.setup{
  capabilities = capabilities
}

-- Json LSP
-- install json LSP npm install -g vscode-langservers-extracted
require'lspconfig'.jsonls.setup{
  cmd = { "vscode-json-language-server", "--stdio" },
  capabilities = capabilities
}

require'lspconfig'.cssls.setup{
  capabilities = capabilities,
}

-- html LSP
-- seems not to be useful
require'lspconfig'.html.setup{
  capabilities = capabilities,
}

-- python LSP
-- install python lsp: python3 -m pip install --user 'python-language-server[all]'
require'lspconfig'.pylsp.setup{
  cmd = { 'pylsp' },
  single_file_support = true,
  capabilities = capabilities
}

-- Bash LSP npm install -g bash-language-server
-- install spellcheck: apt install spellcheck, brew install shellcheck
require'lspconfig'.bashls.setup{
  capabilities = capabilities
}

-- Vue3 LSP
require'lspconfig'.volar.setup{
  capabilities = capabilities,
}

-- npm install -g emmet-ls
require'lspconfig'.emmet_ls.setup{
  capabilities = capabilities
}

-- Java LSP
--install jdtls LSP server: 1: clone repository git clone https://github.com/eclipse/eclipse.jdt.ls.git, 2: mvn clean verify -DskipTests=true 3: set JDTLS_HOME to .../eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository
require'lspconfig'.jdtls.setup{
  cmd = {
    'java', -- or '/path/to/java17_or_newer/bin/java'
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', os.getenv('HOME') .. '/prog/language-servers/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', os.getenv('HOME') .. '/prog/language-servers/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux',
    '-data', os.getenv('HOME') .. '/.cache/jdtls/workspace' ..  vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
  },
  capabilities = capabilities,
  init_options = {
    bundles = {
      os.getenv('HOME') .. '/prog/debug-servers/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.45.0.jar'
    }
  },
  on_attach = function(client, bufnr)
    require('jdtls').setup_dap({ hotcodereplace = 'auto' })
  end,
}
--
-- local config = {
--   capabilities = capabilities,
--   autostart = true,
--   cmd = {
--     'java', -- or '/path/to/java17_or_newer/bin/java'
--     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
--     '-Dosgi.bundles.defaultStartLevel=4',
--     '-Declipse.product=org.eclipse.jdt.ls.core.product',
--     '-Dlog.protocol=true',
--     '-Dlog.level=ALL',
--     '-Xmx1g',
--     '--add-modules=ALL-SYSTEM',
--     '--add-opens', 'java.base/java.util=ALL-UNNAMED',
--     '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
--     '-jar', os.getenv('HOME') .. '/prog/language-servers/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
--     '-configuration', os.getenv('HOME') .. '/prog/language-servers/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux',
--     '-data', os.getenv('HOME') .. '/.cache/jdtls/workspace' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
--   },
--   filetypes = { 'java' },
--   root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew', 'pom.xml'}),
--   settings = {
--     java = {
--       configuration = {
--         runtimes = {
--           {
--             name = "JavaSE-11",
--             path = "/usr/lib/jvm/java-11-openjdk-amd64/",
--           },
--           {
--             name = "JavaSE-17",
--             path = "/usr/lib/jvm/java-17-openjdk-amd64/",
--           },
--         }
--       }
--     }
--   },
--   init_options = {
--     bundles = {
--       os.getenv('HOME') .. '/prog/debug-servers/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.45.0.jar'
--     }
--   },
--   on_attach = function(client, bufnr)
--     require('jdtls').setup_dap({ hotcodereplace = 'auto' })
--   end,
-- }

-- require('jdtls').start_or_attach(config)

-- Docker-Compose
-- npm install -g @microsoft/compose-language-service
require'lspconfig'.docker_compose_language_service.setup{
  capabilities = capabilities,
  filetypes = { 'yaml.docker-compose' }
}

-- Docker
-- npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup{
  capabilities = capabilities
}

-- YAML
-- npm install -g yaml-language-server
require'lspconfig'.yamlls.setup{
  capabilities = capabilities,
  filetypes = { 'yaml' },
  settings = {
    yaml = {
        keyOrdering = false
    },
    redhat = {
      telemetry = {
        enabled = false
      }
    }
  }
}

-- Salt
require'lspconfig'.salt_ls.setup{
  capabilities = capabilities,
}

-- Arduino
-- go install github.com/arduino/arduino-language-server@latest
-- install arduino-cli
-- local fqbn = "esp8266:esp8266:d1_mini_pro"

require'lspconfig'.arduino_language_server.setup{
  capabilities = capabilities,
  cmd = {
    "arduino-language-server",
    "-cli-config", os.getenv('HOME') .. '.arduino15/arduino-cli.yml',
    "-fqbn", helper_func.getArduinoBoardFQBN(),
  }

}

-- load snippets
require('luasnip/loaders/from_vscode').lazy_load()
require('luasnip/loaders/from_vscode').lazy_load({
  paths = '~/.config/nvim/my-snippets'
})
