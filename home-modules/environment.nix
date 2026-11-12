inputs:

{ config, lib, pkgs, ... }:

let
  cfg = config.programs.illogical-impulse;
  pythonEnv = cfg.internal.pythonEnv;
in
{
  config = lib.mkIf cfg.enable {
    # Environment variables for Illogical Impulse
    home.sessionVariables = {
      QT_QPA_PLATFORMTHEME = "kde";  # Same as the dots: Qt reads its theme from kdeglobals
      QT_STYLE_OVERRIDE = "";
      ILLOGICAL_IMPULSE_DOTFILES_SOURCE = "${config.home.homeDirectory}/.config";
    };

    home.packages = [ pkgs.kdePackages.plasma-integration ];
  };
}
