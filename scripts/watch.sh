#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

typst watch ./resume.typ ./resume.pdf --font-path ./src/fonts/
