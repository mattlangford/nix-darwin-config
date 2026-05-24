{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    htop
    jq
    silver-searcher
    fd
    bazel
    cowsay
  ];

  environment.etc."gitconfig".text = ''
    [core]
      editor = vim
  '';
}
