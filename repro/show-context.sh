#!/usr/bin/env bash
# FD-220723 repro: what does a step actually get when its script is sourced from Git?
echo "=== FD-220723 git resource repro ==="
echo "--- pwd ---"
pwd
echo "--- ls -la . ---"
ls -la .
echo "--- find . -maxdepth 4 ---"
find . -maxdepth 4 | sort
echo "--- git resource variables (primary dependency has Name=\"\") ---"
echo "ExtractedPath : [$(get_octopusvariable 'Octopus.Action.GitResource[].ExtractedPath')]"
echo "CommitHash    : [$(get_octopusvariable 'Octopus.Action.GitResource[].CommitHash')]"
echo "RepositoryUrl : [$(get_octopusvariable 'Octopus.Action.GitResource[].RepositoryUrl')]"
echo "--- context ---"
echo "Step   : $(get_octopusvariable 'Octopus.Step.Name')"
echo "Action : $(get_octopusvariable 'Octopus.Action.Name')"
echo "=== end ==="
