# init.lua

![image](https://raw.githubusercontent.com/neovim/neovim.github.io/master/static/logos/neovim-logo-300x87.png)

## Table of content

- [Plugins](https://github.com/MikeHorn-git/LowVim#plugins)
- [LSPs](https://github.com/MikeHorn-git/LowVim#lsps)
- [Installation](https://github.com/MikeHorn-git/LowVim#installation)
- [Test](https://github.com/MikeHorn-git/LowVim#test)
- [Credits](https://github.com/MikeHorn-git/LowVim#credits)

## Plugins

- [harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mason](https://github.com/mason-org/mason.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [tokyonight](https://github.com/folke/tokyonight.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [trouble](https://github.com/folke/trouble.nvim)
- [vim-be-good](https://github.com/ThePrimeagen/vim-be-good)
- [which-key](https://github.com/folke/which-key.nvim)

## LSPs

- [clangd](https://github.com/clangd/clangd)
- [python-lsp-server](https://github.com/python-lsp/python-lsp-server)
- [ruff](https://github.com/astral-sh/ruff/)
- [rust-analyzer](https://github.com/rust-lang/rust-analyzer)

## Installation

> [!Note]
> Use your plugin manager.

```lua
{
  "MikeHorn-git/init.lua",
  lazy = false,
  import = "init.plugins",
},
```

## Credits

- [LazyVim](https://github.com/LazyVim/LazyVim)
- [NvChad](https://github.com/NvChad/NvChad)
- [ThePrimeagen](https://github.com/ThePrimeagen/init.lua)
