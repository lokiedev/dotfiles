# Dotfiles



### Install with stow
Choose the config you want to install and run:
```bash
stow -t ~/ PACKAGE_NAME
```
For example:
```bash
stow -t ~/ foot
```
This will create a symlink at ~/.config/foot that points to the repo.

### Note
Be aware that environment variables like ```$CARGO_HOME``` or ```$HISTFILE``` is modified (to follow XDG directory specification)
before installing in case there is an issue. Check [here](./zsh).

Also, some packages might require further setup to run properly such as yazi:
```bash
ya pkg install
```
