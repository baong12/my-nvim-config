# A Basic Stable IDE config for Neovim
My customized config for nvim-basic-ide. ([source](https://github.com/LunarVim/nvim-basic-ide))

## Install the config

Make sure to remove or backup your current `nvim` directory

```powershell
Remove-Item $env:LOCALAPPDATA\nvim -Recurse -Force
git clone https://github.com/baong12/my-nvim-config.git $env:LOCALAPPDATA\nvim
```

Run `nvim` and wait for the plugins to be installed

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

- Neovim node support (optional)

  ```powershell
  npm i -g neovim
  ```

- Ripgrep

  ```powershell
  scoop install main/ripgrep
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

## Fonts

I recommend using the following repo to get a "Nerd Font" (Font that supports icons)

[getnf](https://github.com/ronniedroid/getnf)

**NOTE** Go to [scoop.sh](https://scoop.sh/) to install your favorite nerd font.

## Configuration

### LSP

**NOTE** rename the file lua/utils/init.sample.lua to init.lua

1. You can add the lsp name in [mason lsp block](https://github.com/LunarVim/nvim-basic-ide/tree/master/user/utils/init.lua#L3-L13)

```lua
-- lua/utils/init.lua
M.servers = {
	"lua_ls",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
    "terraform_lsp" -- New LSP
}
```

2. Manually install the binary of the lsp and put it in your path by downloading the binary or through your package manager. For terraform_lsp [example](https://github.com/juliosueiras/terraform-lsp/releases)

### Formatters and linters

Make sure the formatter or linter is installed and add it to this setup function: [null-ls](https://github.com/LunarVim/nvim-basic-ide/blob/e6b6c96280ca730a2564f2e36050df055acfb1a8/lua/user/null-ls.lua#L22)

**NOTE** Some are already setup as examples, remove them if you want

### Plugins

### You can install new plugins here: [plugins](https://github.com/LunarVim/nvim-basic-ide/tree/master/lua/user)

Heres the wiki for installing new plugins refer to this: [wiki](https://github.com/LunarVim/nvim-basic-ide/wiki/adding_new_plugins)
