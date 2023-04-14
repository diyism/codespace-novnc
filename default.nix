{ pkgs ? import <nixpkgs> { } }:

let
  dockerImage = pkgs.dockerTools.pullImage {
    imageName = "accetto/debian-vnc-xfce-python-g3";
    imageTag = "vscode";
    sha256 = "032b83c0f2f221eac50659767bb48375e35df96246602b150d85061fefb0232e";
  };
in pkgs.dockerTools.buildImage {
  name = "my-nixpacks-image";
  fromImage = dockerImage;
  contents = [ ];

  runAsRoot = ''
    # The original command should be wrapped and executed
    ${pkgs.tini}/bin/tini -- /dockerstartup/startup.sh
  '';

  config = {
    Cmd = [ "sh" "-c" "sudo -E ${pkgs.tini}/bin/tini -- /dockerstartup/startup.sh" ];
    EntryPoint = [ "${pkgs.tini}/bin/tini" "--" "/dockerstartup/startup.sh" ];
  };
}
