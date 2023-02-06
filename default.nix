{stdenv, fetchurl }:

stdenv.mkDerivation {
  name = "sozi";
  version = "222.3.25";

  src = fetchurl {
    url = "https://github.com/sozi-projects/Sozi/releases/download/v22.03.25/sozi_22.3.25-1648241936_amd64.deb";
    sha256 = "1zv48m8g7y6f40y9zp1vcyjg6z8bdy193945kif5c6d5kfzgvvxy";
  };

  installPhase = ''
    mkdir -p $out
    ar x $src
    tar xf data.tar.*
    mv usr $out
  '';

  meta = {
    description = "Sozi, a 2D vector animation tool";
    homepage = "https://sozi.baierouge.fr";
  };
}
