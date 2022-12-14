# { pkgs ? import <nixpkgs> {}}: # here we import the nixpkgs package store
# commit from https://status.nixos.org/
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/95ce0f52ec10.tar.gz") {}}:

pkgs.mkShell {               # mkShell is a helper function
  name="dev-environment";    # that requires a name
  nativeBuildInputs =  with pkgs; [
    nodejs-14_x
    yarn
  ];
  # bash to run when you enter the shell
  shellHook = ''
  '';
}
