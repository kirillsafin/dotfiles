require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ensure_installed = "maintained",
  ensure_installed = {
    'arduino',
    'bash',
    'c',
    'cmake',
    'cpp',
    'dockerfile',
    'html',
    'http',
    'java',
    'javascript',
    'jsdoc',
    'json',
    'json5',
    'lua',
    'make',
    'markdown',
    'markdown_inline',
    'mermaid',
    'ninja',
    'python',
    'regex',
    'scss',
    'todotxt',
    'tsx',
    'typescript',
    'vim',
    'vue',
    'yaml',
  },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = { 'all' },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enanble = true
  },

  autotag = {
    enable = true,
    filetypes = { 'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'lua', 'vim' },
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
  --incremental_selection = {
  --  enable = true
  --},
  --textobjects = {
  --  enable = true
  --}
}
