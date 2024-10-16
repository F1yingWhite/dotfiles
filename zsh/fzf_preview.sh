#!/bin/bash

if [[ $(file --mime-type "$1") =~ image/* || $(file --mime-type "$1") =~ video/* ]]; then
  kitten icat --clear --transfer-mode=memory --stdin=no --place=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@20x1 "$1"
else
  bat --color=always --line-range :500 "$1"
fi
