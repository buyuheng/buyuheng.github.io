#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
ROOT=$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)
SOURCE_ROOT="$ROOT/src/jemdoc"
JEMDOC="$ROOT/tools/jemdoc.py"

cd "$SOURCE_ROOT"
python "$JEMDOC" -o "$ROOT/index.html" index.jemdoc
python "$JEMDOC" -o "$ROOT/publications.html" publications.jemdoc
python "$JEMDOC" -o "$ROOT/group.html" group.jemdoc
python "$JEMDOC" -o "$ROOT/teaching.html" teaching.jemdoc
python "$JEMDOC" -o "$ROOT/optimization.html" courses/optimization.jemdoc
python "$JEMDOC" -o "$ROOT/itml.html" courses/itml.jemdoc
python "$JEMDOC" -o "$ROOT/itml_UF.html" courses/itml_UF.jemdoc
