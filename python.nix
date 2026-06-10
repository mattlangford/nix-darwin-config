{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.python313.withPackages (ps: with ps; [
      astropy
      jplephem
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
