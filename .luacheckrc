read_globals = { "vim" }
ignore = {
  "121", -- Setting a read-only global variable (vim.g.<...>)
  "122", -- Setting a read-only field of a global variable (vim.g.<...>)
}
