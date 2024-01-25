

![App Screenshot](https://i.imgur.com/syychPI.png)

![App Screenshot](https://i.imgur.com/q5rf5ZG.png)

# 🗿 Essential.nvim

More than Kickstart less than LazyVim. All Essential plugins, options, autocmds, and keymaps (some from the great Vimeagen) with no extra bs for web devs  

## ⭐ Features
- Transform your Neovim into an IDE with essentials only

- Easily customize and extend your config with Essential.nvim

- Blazingly fast

- Sane default settings for options, autocmds, and keymaps

- It's good 😁👍


## ⚡️ Requirements

- Neovim >= **0.9.0** 

- Git >= **2.19.0** (for partial clones support)

- a [Nerd Font](https://www.nerdfonts.com/) **_(optional)_**

- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)


# 🛠️ Installation


import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
<TabItem value="local" label="Linux/MacOS" default>

Install the [Essential Starter](https://github.com/Harish-Khandre/essential.nvim)

- Make a backup of your current Neovim files:

  ```sh
  # required
  mv ~/.config/nvim{,.bak}

  # optional but recommended
  mv ~/.local/share/nvim{,.bak}
  mv ~/.local/state/nvim{,.bak}
  mv ~/.cache/nvim{,.bak}
  ```

- Clone the starter

  ```sh
  git clone https://github.com/Harish-Khandre/essential.nvim ~/.config/nvim
  ```

- Remove the `.git` folder, so you can add it to your repo later

  ```sh
  rm -rf ~/.config/nvim/.git
  ```

- Start Neovim!

  ```sh
  nvim
  ```

  Refer to the comments in the files on how to customize **Essential**.

</TabItem>

<TabItem value="windows" label="Windows">

Install the [Essential Starter](https://github.com/Harish-Khandre/essential.nvim)
with [PowerShell](https://github.com/PowerShell/PowerShell)

- Make a backup of your current Neovim files:

  ```powershell
  # required
  Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

  # optional but recommended
  Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
  ```

- Clone the starter

  ```powershell
  git clone https://github.com/Harish-Khandre/essential.nvim $env:LOCALAPPDATA\nvim
  ```

- Remove the `.git` folder, so you can add it to your repo later

  ```powershell
  Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
  ```

- Start Neovim!

  ```powershell
  nvim
  ```


</TabItem>
</Tabs>

:::tip

It is recommended to run `:checkhealth` after installation

:::
