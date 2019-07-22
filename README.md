# dotfiles
My config files for the iTerm2 + tmux + zsh + NeoVim setup.

<img width="1280" alt="Screenshot 2019-07-22 at 10 51 24 AM" src="https://user-images.githubusercontent.com/1298779/61608089-18447e00-ac6f-11e9-9dab-df4c14b5c65a.png">


### Installation

- `./makesymlinks.sh`

### Dependencies

- Vim built with `+python` for ternjs and gundo
- Npm and Node.js for ternjs

### Additional set-up/configs

- For YouCompleteMe, do `./install.py --tern-js` from `~/.vim/bundle/YouCompleteMe/`

#### Powerline setting up

- Install powerline with `pip install powerline-status`
- Install [powerline patched fonts](https://powerline.readthedocs.io/en/latest/installation.html#fonts-installation)
- Do `pip install psutil` for tmux network load segment
- troubleshooting `poweline tmux right`, `powerline-lint`,
  `powerline-render tmux right`
- Restarting powerline `powerline-daemon -k`, `powerline-daemon -q`
