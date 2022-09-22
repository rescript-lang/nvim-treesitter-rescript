# Reason parser for nvim-treesitter

This repository contains a thin wrapper around [Reason parser for Tree-sitter](https://github.com/danielo515/tree-sitter-reason/) to make it an easy-to-install NeoVim plugin.

## Requirements

- NeoVim 0.5.0+
- Installed and configured [`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter) plugin

## Installation

Add the plugin in your `init.vim`:

```vim
Plug 'danielo515/nvim-treesitter-reason'
```

or using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'danielo515/nvim-treesitter-reason'
```

Install the newly available parser:

```
:TSInstall reason
```

## Contributing

This is a technical repo containing a copy of the upstream [Reason parser for Tree-sitter](https://github.com/danielo515/tree-sitter-reason/). Please, open issues and PR’s there. Unless the problem is indeed related to the plugin wrapping.
