#!/bin/bash

if [[ $(file --mime-type "$1") =~ image/* || $(file --mime-type "$1") =~ video/* ]]; then
  kitten icat --clear --transfer-mode=memory --stdin=no --place=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@0x0 "$1"
else
  bat --color=always --line-range :500 "$1"
fi
