{ }:

let
  config = {
    allowUnfree = true;
  };
  pkgs = import <nixpkgs> { inherit config; };

  phpVersion = "php84";

  phpPackage = pkgs.lib.attrByPath [ phpVersion ] null pkgs;
  phpPackages = pkgs.lib.attrByPath [ "${phpVersion}Packages" ] null pkgs;
  phpExtensions = pkgs.lib.attrByPath [ "${phpVersion}Extensions" ] null pkgs;
in
pkgs.mkShell {
  # build tools
  nativeBuildInputs = with pkgs; [
    phpPackage
    nodejs_18
  ];
  # dependencies
  buildInputs = with pkgs; [
    intelephense
    phpunit
    phpPackages.php-cs-fixer
    phpPackages.phpstan
    phpExtensions.xdebug

    gh # GitHub CLI
  ];
}
