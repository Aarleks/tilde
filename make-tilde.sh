#!/bin/sh

echo "&nbsp;

---
&nbsp;

Made in [Vim](https://www.vim.org)/[Neovim](https://neovim.io/) and the Shell with [Markdown](https://daringfireball.net/projects/markdown/) and [Pandoc](https://pandoc.org/).

&copy; 2016-$(date +%Y) Alex Norman

Latest update on $(date +%d,\ %B\ %Y)" > footer.md

pandoc -s --toc --template dral_template.html --metadata title="~acn" --metadata author="Alex Norman" --variable homepage:"https://dralexnorman.net" --section-divs --css tilde.css --include-before header.html --include-before icons.html tilde.md footer.md -o public/index.html
