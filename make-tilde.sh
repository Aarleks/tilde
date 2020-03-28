#!/bin/sh

pandoc -s --toc --metadata title="~acn" --metadata author="Alex Norman" --number-sections --section-divs --css tilde.css tilde.md -o index.html
