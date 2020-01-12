with import <nixpkgs> {};
mkShell {
    buildInputs = [
        cmark
        shellcheck
    ];
    shellHook = ''
        . .env
        . .shellhook
    '';
}
