{ lib, stdenvNoCC, fetchFromGitHub }:

stdenvNoCC.mkDerivation rec {
  pname = "breeze-plus";
  version = "6.28.0";

  src = fetchFromGitHub {
    owner = "mjkim0727";
    repo = "breeze-plus";
    rev = version;
    hash = "sha256-HyXf0Bn6Z9tOy1jncFHqZctNdqW6GQIH8hYdhDsKPCQ=";
  };

  dontBuild = true;

  installPhase = ''
    install -d $out/share/icons
    cp -dr --no-preserve=mode src/breeze-plus{,-dark} $out/share/icons/
  '';

  meta = {
    description = "Breeze styled extra icon theme for KDE";
    homepage = "https://github.com/mjkim0727/breeze-plus";
    license = lib.licenses.lgpl21;
  };
}
