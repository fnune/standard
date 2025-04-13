# `standard` colors

> I've just started working on this. Any claims in this repository are to be
> taken with a grain of salt.

An accessible color scheme inspired by GOV.UK colors. Built to be clear,
consistent, and something you can stick with long-term.

Principles:

- Text and information should use very accessible colors
- Interface elements can blend more into the background, and this should aid in
  making the content stand out

## Installation

### Neovim

```lua
-- Using lazy.nvim
{
  "fnune/standard",
  lazy = false,
  priority = 1000,
  config = function()
    require("standard").setup({})
    vim.cmd("colorscheme standard")
  end,
}
```

#### Lualine

```lua
require('lualine').setup {
  options = {
    theme = 'standard'
  }
}
```

### Kitty

Add to your kitty.conf:

```
include /path/to/standard/kitty/standard.dark.conf
```

### Tmux

Add to your tmux.conf:

```
source-file /path/to/standard/tmux/standard.dark.conf
```

### FZF

Source the script:

```bash
source /path/to/standard/fzf/standard.dark.sh
```

### Bat

Works well with the base16 theme in Bat:

```bash
export BAT_THEME="base16"
```
