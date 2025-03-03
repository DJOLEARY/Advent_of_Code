{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  # build tools
  nativeBuildInputs = with pkgs; [
    go
  ];
  # dependencies
  buildInputs = with pkgs; [
    delve
    gopls
    gotools
    golangci-lint
  ];
}
