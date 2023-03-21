require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules/", "venv/", 'plugged/', 'undodir/', '.git/', 'dist/', 'build/', '/bin', 'target/'},
  }
}
