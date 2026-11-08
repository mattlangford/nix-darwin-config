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
    bazel_8
    pi-coding-agent
    inputs.pi-sandbox.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
