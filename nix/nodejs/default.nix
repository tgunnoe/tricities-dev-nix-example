{ lib, pkgs, ... }:
{
  tridev-nix.method.installMethod = "symlink";
  tridev-nix.error.nativeBuildInputs = [
    pkgs.yarn
  ];
  pkg1.method.installMethod = "symlink";
  pkg2.method.installMethod = "symlink";
}
