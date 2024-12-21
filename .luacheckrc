read_globals = { "vim" }
max_line_length = 150
ignore = {
  "121", -- Setting a read-only global variable (vim.g.<...>)
  "122", -- Setting a read-only field of a global variable (vim.g.<...>)
}
