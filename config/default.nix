{ pkgs ?  import <nixpkgs> {} }:

let
  firmware = import ../src {};

  glove80_left  = firmware.zmk.override { board = "glove80_lh"; keymap = ./glove80.keymap; };
  glove80_right = firmware.zmk.override { board = "glove80_rh"; keymap = ./glove80.keymap; };

in firmware.combine_uf2 glove80_left glove80_right
