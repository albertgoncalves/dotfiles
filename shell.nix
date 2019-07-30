with import <nixpkgs> {};
mkShell {
    buildInputs = [
        shellcheck
    ];
    shellHook = ''
        . .shellhook
    '';
}
