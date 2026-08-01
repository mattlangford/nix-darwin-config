{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
    btop
    jq
    silver-searcher
    fd
    cowsay
    ncdu
    tailscale
    pi-coding-agent
  ];
}
