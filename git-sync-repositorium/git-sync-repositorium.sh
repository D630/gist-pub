#!/usr/bin/env bash

# Autocommitting with inotify (repo: repositorium)

repos=repositorium

for r in $repos
do
    cd -- "${HOME}/Dokumente/Uni/${r}" &&
    {
        git ls-files --deleted -z | xargs -0 git rm 1>/dev/null 2>&1
        git add -A . 1>/dev/null 2>&1
        git commit -m "inotify $(date)"
    }
done
