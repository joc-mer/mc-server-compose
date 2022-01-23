#!/bin/bash

# Platform agnostic sed
function ased() {
  case $(uname -s) in
        *[Dd]arwin* | *BSD* ) gsed "$@";;
        *) sed "$@";;
  esac
}

export RCON_SECRET=$(ased -rn 's/^RCON_SECRET=([^\n]+)$/\1/p' local-config.properties)
export MC_MAIN_PORT=$(ased -rn 's/^MC_MAIN_PORT=([^\n]+)$/\1/p' local-config.properties)
export MC_RCON_PORT=$(ased -rn 's/^MC_RCON_PORT=([^\n]+)$/\1/p' local-config.properties)
