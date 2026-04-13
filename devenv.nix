{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [ git neovim stylua unixtools.xxd unzip ];

  # https://devenv.sh/languages/
  languages.lua.enable = true;
  languages.rust.enable = true;

  # https://devenv.sh/scripts/
  scripts = {
    "test:run".exec = ''
      XDG_CONFIG_HOME=$(pwd)/.config \
      XDG_DATA_HOME=$(pwd)/.data \
      nvim -u ./test/init.lua
    '';
    "clean:run".exec = "rm -rf .config .data";
  };

  # https://devenv.sh/basics/
  enterShell = ''
    echo "Available commands:"
    echo " - test         : Launch neovim with config"
    echo " - clean        : Remove .config .data"
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    nvim -v
  '';

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    luacheck.enable = true;
    mdformat.enable = true;
    nixfmt-classic.enable = true;
    selene.enable = true;
    stylua.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
