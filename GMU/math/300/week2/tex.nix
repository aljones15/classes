with import <nixpkgs> {  };
{
  texEnv = stdenv.mkDerivation rec {
    name="LaTeX Environment";
    tex = (texlive.combine {
      inherit (pkgs.texlive) scheme-full;
      inherit (pkgs.texlivePackages) titlesec footmisc greek-fontenc;
    });
    buildInputs = [
      tex
    ];
  };
}
