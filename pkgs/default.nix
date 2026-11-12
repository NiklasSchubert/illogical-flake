{ pkgs }:

{
  breeze-plus                    = pkgs.callPackage ./breeze-plus { };
  illogical-impulse-oneui4-icons = pkgs.callPackage ./illogical-impulse-oneui4-icons { };
  material-symbols               = pkgs.callPackage ./material-symbols { };
}
