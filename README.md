# nvim cheatsheet
my nvim config

## fuzzy find - telescope

```
space + ff
space + fg
space + fb
space + fh
space + fo  (old files)
https://github.com/nvim-telescope/telescope.nvim#usage
```

## buffers

```
:b <partial>
:new, :vnew, :enew
:bd, :bdel (delete)
https://alpha2phi.medium.com/neovim-for-beginners-managing-buffers-91367668ce7
```

## split

```
:sp
:vp
switch: CRTL+W
https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally
```

## replace

```
v (visual) + :s/old/new/g
```

## flake8

```
:!flake8 echo %
```

## black

<leader>fm

## comments via visual block

```
CRTL+v, Shift+i, #, ESC
CRTL+v, x
```


## nerdtree

```
<C-n>
:NERDTree
```

## remote file editing - netrw (disabled by default on NvChad)

```
vim scp://[user@]machine//absolute/path/to/dir/
:h netrw
https://gist.github.com/RRethy/ad8a9a3b1112a48226ec3336fa981224
```

## extra plugins to look (from NvChad)

https://github.com/lewis6991/gitsigns.nvim
https://github.com/rafamadriz/friendly-snippets
https://github.com/folke/which-key.nvim


# vim-odoo snippets

TODO

