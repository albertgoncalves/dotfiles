# dotfiles

### Install
 * [Conda](https://anaconda.org/)
 * [Nix](https://nixos.org/nix/)

---
### Prepare
 * `path/to/dotfiles/.env` exporting:

```
export GIT_URL="https://raw.githubusercontent.com/..."
```

---
### Invoke
(This may be a **little** destructive.)
```
$ nix-shell
[nix-shell:path/to/dotfiles]$ ./main
```
