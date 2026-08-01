{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.python313.withPackages (ps: with ps; [
      astropy
      jplephem
      requests
      beautifulsoup4
      numpy
      scipy
      pandas
      plotly
      streamlit
      watchdog
      markdown
      latex2mathml
      pymdown-extensions
    ]))
  ];
}
