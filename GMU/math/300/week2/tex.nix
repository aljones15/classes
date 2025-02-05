with import <nixpkgs> {  };
{
  texEnv = stdenv.mkDerivation rec {
    name="LaTeX Environment";
    buildInputs = [
      texlive.combined.scheme-basic
    ];
  };
}
