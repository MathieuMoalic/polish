{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs = {nixpkgs, ...}: {
    packages.x86_64-linux.default =
      nixpkgs.legacyPackages.x86_64-linux.writeTextDir
      "index.html"
      (builtins.readFile ./polish.html);
  };
}
