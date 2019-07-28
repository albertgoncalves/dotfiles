{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
    name = "dotfiles";
    buildInputs = [
        shellcheck
    ];
    shellHook = ''
        . .shellhook
    '';
}
