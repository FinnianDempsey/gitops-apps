#!/usr/bin/env bash
# FD-220723 repro: what does a step actually get when its script is sourced from Git?
echo "=== FD-220723 git resource repro ==="
echo "--- pwd (cwd is the script's own folder) ---"
pwd
ROOT="$(dirname "$PWD")"
echo "--- extraction root: $ROOT ---"
find "$ROOT" -maxdepth 3 | sort
echo "--- variables ---"
echo "ExtractedPath : [$(get_octopusvariable 'Octopus.Action.GitResource[].ExtractedPath')]"
echo "CommitHash    : [$(get_octopusvariable 'Octopus.Action.GitResource[].CommitHash')]"
echo "RepositoryUrl : [$(get_octopusvariable 'Octopus.Action.GitResource[].RepositoryUrl')]"
echo "=== end ==="
