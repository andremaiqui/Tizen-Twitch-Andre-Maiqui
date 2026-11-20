#!/usr/bin/env bash
# Calcula la versión compartida por los releases de Android (APK) y Tizen (.wgt).
#
# La secuencia se guarda en tags internos twitch-tizen-version-vX.Y.Z.
# El prefijo nuevo reinicia la numeración en 1.0.0 sin reutilizar tags antiguos.
#
# Ambos workflows comparten el mismo tag interno para un mismo commit.
set -euo pipefail

START="${VERSION_START:-1.0.0}"
SEQUENCE_TAG_RE='^twitch-tizen-version-v[0-9]+\.[0-9]+\.[0-9]+$'
HEAD_SHA="$(git rev-parse HEAD)"

EXISTING="$(git tag --points-at "$HEAD_SHA" | grep -E "$SEQUENCE_TAG_RE" | sed 's/^twitch-tizen-version-v//' | sort -V | tail -n1 || true)"

if [ -n "$EXISTING" ]; then
  VERSION="$EXISTING"
  echo "Reutilizando la versión interna de este commit: $VERSION" >&2
else
  LAST="$(git tag --list 'twitch-tizen-version-v*' | grep -E "$SEQUENCE_TAG_RE" | sed 's/^twitch-tizen-version-v//' | sort -V | tail -n1 || true)"
  if [ -z "$LAST" ]; then
    VERSION="$START"
  else
    IFS=. read -r MA MI PA <<< "$LAST"
    if [ "$PA" -ge 9 ]; then
      MI=$((MI + 1))
      PA=0
    else
      PA=$((PA + 1))
    fi
    VERSION="$MA.$MI.$PA"
  fi
  echo "Última versión de la secuencia: ${LAST:-ninguna} -> nueva versión: $VERSION" >&2
fi

if [ -n "${GITHUB_ENV:-}" ]; then
  echo "APP_VERSION=$VERSION" >> "$GITHUB_ENV"
fi
echo "$VERSION"
