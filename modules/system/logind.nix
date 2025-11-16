{ pkgs, ... }:

{
  services.logind = {
    lidSwitch = "suspend";                 # ignore the lid switch so Hyprland binding takes effect
    lidSwitchExternalPower = "suspend";    # optional: ignore lid when external power connected if you like
    lidSwitchDocked = "suspend";           # optional: ignore when docked
  };
}
