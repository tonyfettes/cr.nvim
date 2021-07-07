# cr.nvim

Helps you to get your `<cr>` more useful, like insert new line(s) without entering insert mode.

## Installation

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'tonyfettes/cr.nvim'
```

### Using [packer](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'tonyfettes/cr.nvim',
  as = 'cr',
}
```

## Usages

cr.nvim only provides some lua function, so you will have to define the keybindings yourself.

A typical keybindings will looks like:

```lua
vim.api.nvim_set_keymap('n', '<cr>', "<cmd>lua require'cr'.jump_new_lines_after()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-cr>', "<cmd>lua require'cr'.jump_new_lines_before()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-cr>', "<cmd>lua require'cr'.jump_new_lines_before()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-cr>', "<cmd>lua require'cr'.put_new_lines_after()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-cr>', "<cmd>lua require'cr'.put_new_lines_after()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-cr>', "<cmd>lua require'cr'.put_new_lines_before()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-S-cr>', "<cmd>lua require'cr'.put_new_lines_before()<cr>", { noremap = true, silent = true })
```

## Roadmap

- [ ] Write document (`cr.txt`)
