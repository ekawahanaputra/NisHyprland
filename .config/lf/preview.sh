#!/bin/sh

file="$1"

case "$(file --mime-type -Lb "$file")" in
  image/*)
    chafa "$file" --size=40x20
    ;;
  *)
    bat --color=always --style=plain "$file" || cat "$file"
    ;;
esac
