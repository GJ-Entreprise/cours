#!/bin/sh
git pull
git add docs*
git commit -m "ajout de cours"
git push
mkdocs gh-deploy