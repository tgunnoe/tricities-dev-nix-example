{
  inputs = {
    dream2nix.url = "github:nix-community/dream2nix";
  };

  outputs = {
    self,
    dream2nix,
  } @ inp:
    (dream2nix.lib.makeFlakeOutputs {
      systems = ["x86_64-linux"];
      #pkgs = pkgs;
      config = {
        projectRoot = ./.;
        overridesDirs = [./nix];
      };
      source = ./.;
      autoProjects = true;

    })
    // {
      checks = self.packages;
    };
}
