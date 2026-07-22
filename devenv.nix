{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
    neovim
  ];

  # https://devenv.sh/languages/
  languages.lua.enable = true;

  # https://devenv.sh/tests/
  enterTest = ''
    nvim -v
  '';

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    luacheck.enable = true;
    mdformat.enable = true;
    nixfmt.enable = true;
    selene.enable = true;
    stylua.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
