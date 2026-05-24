{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.python313.withPackages (ps: with ps; [
      requests
      beautifulsoup4
      numpy
      pandas
      plotly
      streamlit
      watchdog
    ]))
  ];
}
