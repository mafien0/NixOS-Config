{

  nix = {
      gc = {
        automatic = true;
        dates = "*-*-* 00:00:00/3";
        options = "--delete-old-generations 10";
      };
  };
}
