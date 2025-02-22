let
  pkgs = import <nixpkgs> {};
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-basic
      wrapfig ulem hyperref capt-of etoolbox parskip microtype enumitem lastpage
      fancyhdr xcolor titling titlesec amsmath;
  });
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    tex
  ];
}
