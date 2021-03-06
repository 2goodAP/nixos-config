# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system-configuration.nix
    ./network-configuration.nix
    ./user-configuration.nix
    ./package-configuration.nix
    ./service-configuration.nix
    ./program-configuration.nix
    (import ./kde-gui-configuration.nix { driver = "nvidia"; })
  ];
}
