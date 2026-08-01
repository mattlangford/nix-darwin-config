{ self, ... }:

{
  system.primaryUser = "mattlangford";
  programs.bash.enable = true;

  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.stateVersion = 6;

  nixpkgs.hostPlatform = "aarch64-darwin";

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };

  security.pam.services.sudo_local.touchIdAuth = true;

  services.tailscale.enable = true;

  system.defaults.WindowManager.EnableStandardClickToShowDesktop = false;
  
  environment.etc."gitconfig".text = ''
    [core]
      editor = vim
  '';
}
