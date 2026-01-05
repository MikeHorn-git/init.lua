{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
    lua54Packages.luacheck
    mdformat
    neovim
    nixfmt-classic
    selene
    stylua
    unixtools.xxd
    unzip
  ];

  # https://devenv.sh/languages/
  languages.go.enable = true;
  languages.lua.enable = true;
  languages.rust.enable = true;

  # https://devenv.sh/scripts/
  enterShell = ''
    XDG_CONFIG_HOME=$(pwd)/.config \
    XDG_DATA_HOME=$(pwd)/.data \
    nvim -u ./test/init.lua
  '';

  # https://devenv.sh/tasks/
  scripts = {
    "lint:run".exec = ''
      mdformat README.md
      nixfmt devenv.nix
      luacheck lua/ test/
      selene lua/ test/
      stylua lua/ test/'';
    "clean:run".exec = "rm -rf .config .data";
  };

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
