{
  imports = [
    ./cli.nix
  ];

  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = 0;
      mouse_hide_wait = "-1.0";
      window_padding_width = 2;

      font_family = "FiraCode Nerd Font";
    };
  };
  catppuccin.kitty = {
    enable = true;
    flavor = "mocha";
  };
}
