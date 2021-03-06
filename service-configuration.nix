# Service configurations for the various nixos profiles.

{ ... }:

{
  security.apparmor = {
    enable = true;
    killUnconfinedConfinables = true;
  };


  services = {
    ntp.enable = true;
    timesyncd.enable = true;

    openssh.enable = true;

    # Enable CUPS for printing documents.
    printing.enable = true;

    pipewire = {
      enable = true;
      alsa.enable = true;
      jack.enable = true;
      pulse.enable = true;
    };

    tlp = {
      enable = true;
    };
  };
}
