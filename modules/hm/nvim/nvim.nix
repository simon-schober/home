{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    neovim
    neovim-remote
    neovide
    lua-language-server
    vscode-langservers-extracted
    nil
    clang-tools
    marksman
    python311Packages.python-lsp-server
    python311Packages.python-lsp-ruff
    python311Packages.pip
    typescript-language-server
    jdt-language-server
    dockerfile-language-server-nodejs
    docker-compose-language-service
    kotlin-language-server
    bash-language-server
    yaml-language-server
    sqls
    nmap
    rust-analyzer
    ripgrep
    black
  ];
  programs.neovim = {
    viAlias = true;
    vimAlias = true;
  };
  home.file.".config/nvim".source = ./.;
  home.file.".config/nvim".recursive = true;
  # home.file.".config/nvim/lua/themes/stylix.lua".source = config.lib.stylix.colors {
  #     template = builtins.readFile ./lua/themes/stylix.lua.mustache;
  #     extension = ".lua";
  # };
}
