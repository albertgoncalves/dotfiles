with import <nixpkgs> {};
mkShell {
    buildInputs = [
        shellcheck
    ];
    shellHook = ''
        . .env
        . .shellhook
    '';
}
