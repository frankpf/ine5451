#!/usr/bin/sh

for arg in "$@"
do
    pandoc --from=org --latex-engine=xelatex "$arg" -o "${arg%.org}.pdf"
    echo "Generated ${arg%.org}.pdf"
done
