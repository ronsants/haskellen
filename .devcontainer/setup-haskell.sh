#!/usr/bin/env bash
set -eux

# Install ghcup non-interactively
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | \
  BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh

# Load ghcup environment
source /home/vscode/.ghcup/env

# Install toolchain
ghcup install ghc
ghcup install cabal
ghcup install hls

ghcup set ghc recommended
ghcup set cabal recommended
ghcup set hls recommended

# Update cabal package list
cabal update
