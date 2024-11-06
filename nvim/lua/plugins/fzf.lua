return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      file_ignore_patterns = {
        "node_modules/",
        "dist/",
        "venv",
        ".venv",
        "plugged/",
        "undodir/",
        "%.git/",
        "build/",
        ".cache",
        "bin/",
        "target/",
        "lib/",
        "vcpkg_installed/",
        ".nuxt/",
        "%.jpg",
        "%.png",
        "package%-lock%.json",
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "<C-p>", ":FzfLua files<CR>", { desc = "Find files" })
    keymap.set("n", "<leader>fg", ":FzfLua live_grep<CR>", { desc = "Live grep" })
    -- keymap.set("n", "<leader>fS", ":Telescope grep_string<CR>", { desc = "Grep string" })
    keymap.set("n", "<leader>fb", ":FzfLua buffers<CR>", { desc = "Buffers" })
    keymap.set("n", "<leader>fh", ":FzfLua helptags<CR>", { desc = "Help tags" })
    keymap.set("n", "<leader>fl", ":FzfLua lsp_document_symbols<CR>", { desc = "LSP document symbols" })
    keymap.set("n", "<leader>fs", ":FzfLua lsp_workspace_symbols<CR>", { desc = "LSP workspace symbols" })
    -- keymap.set("n", "<leader>ft", ":Telescope treesitter<CR>", { desc = "Treesitter" })
    keymap.set("n", "<leader>fd", ":FzfLua lsp_definitions<CR>", { desc = "LSP definitions" })
    keymap.set("n", "<leader>fr", ":FzfLua lsp_references<CR>", { desc = "LSP references" })
    -- keymap.set("n", "<leader>fw", ":Telescope grep_string<CR>", { desc = "Grep string" })
    keymap.set("n", "<leader>fd", ":FzfLua diagnostics_document<CR>", { desc = "Diagnostics" })
    keymap.set("n", "<leader>fc", ":FzfLua commands<CR>", { desc = "Commands" })
    keymap.set("n", "<leader>fo", ":FzfLua lsp_outgoing_calls<CR>", { desc = "Outgoing calls" })
    keymap.set("n", "<leader>fi", ":FzfLua lsp_incoming_calls<CR>", { desc = "Outgoing calls" })
    -- keymap.set("n", "<leader>ff", ":Telescope current_buffer_fuzzy_find<CR>", { desc = "Current buffer fuzzy find" })
    keymap.set("n", "<leader>fG", ":FzfLua live_grep_grob<CR>", { desc = "Live grep args" })
    -- keymap.set("n", "<leader>fS", ":Telescope grep_string<CR>", { desc = "Grep string" })
  end,
}
