local function start_latex_preview() end

local function end_latex_preview() end

vim.api.nvim_create_user_command("StartLatexPreview", start_latex_preview, {})
vim.api.nvim_create_user_command("EndLatexPreview", end_latex_preview, {})
