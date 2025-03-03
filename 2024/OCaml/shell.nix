{ }:
let
  config = {
    allowUnfree = true;
  };
  pkgs = import <nixpkgs> { inherit config; };

  # choose the ocaml version you want to use
  ocamlPackages = pkgs.ocaml-ng.ocamlPackages_5_2;
in
pkgs.mkShell {
  # build tools
  nativeBuildInputs = with ocamlPackages; [
    pkgs.opam
    ocaml
    findlib
    dune_3
  ];
  # dependencies
  buildInputs = with ocamlPackages; [
    bisect_ppx
    findlib
    menhir
    ocaml-lsp
    earlybird
    ocamlformat
    ocamlgraph
    odoc
    ounit2
    re2
    utop

    pkgs.gh # GitHub CLI
  ];
}
