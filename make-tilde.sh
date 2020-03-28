#!/bin/sh

echo "&nbsp;

---
&nbsp;

Latest update on $(date +%d,\ %B\ %Y)" > footer.md

pandoc -s --toc --metadata title="~acn" --metadata author="Alex Norman" --number-sections --section-divs --css tilde.css tilde.md footer.md -o index.html
