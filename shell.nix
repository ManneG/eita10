{ pkgs ? import <nixpkgs> {} }:
let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-basic circuitikz standalone pgf;
  });
  pypkgs = pkgs.python3Packages;
  property-cached = pypkgs.buildPythonPackage rec {
    pname = "property-cached";
    version = "1.6.4";
    src = pkgs.fetchurl {
      url = "https://files.pythonhosted.org/packages/e4/b9/5467f18d629e717fb346d4968b3fc0deaa6961317710ec77dfac539d231f/property-cached-1.6.4.zip";
      hash = "sha256-PpxO8e02U5CRR1EEgdffYqPPtINGGmmGpvHc0Jsuu3M=";
    };
    propagatedBuildInputs = with pypkgs; [ ];
    doCheck = false;
  };
  lcapy = pypkgs.buildPythonPackage rec {
    pname = "lcapy";
    version = "1.24";
    src = pkgs.fetchPypi {
      inherit pname version;
      sha256 = "sha256-5swFdRlJQD6ni1yA+jA+8mdpw1AA4Tj9oOSIPOHLt1I=";
    };
    propagatedBuildInputs = with pypkgs; [ scipy sympy numpy matplotlib networkx property-cached ];
    doCheck = false;
  };
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (p: with p; [
      jupyterlab
      ipympl
      sounddevice

      lcapy
    ]))
    tex
    pkgs.ghostscript
  ];

  shellHook = ''
	jupyter-lab
  '';
}
