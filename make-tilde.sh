#!/bin/sh

echo "&nbsp;

---
&nbsp;

Made in [Vim](https://www.vim.org)/[Neovim](https://neovim.io/) and the Shell with [Markdown](https://daringfireball.net/projects/markdown/) and [Pandoc](https://pandoc.org/).

&copy; 2016-$(date +%Y) Alex Norman

Latest update on $(date +%d,\ %B\ %Y)" > footer.md

pandoc -s --toc --metadata title="~acn" --metadata author="Alex Norman" --number-sections --section-divs --css tilde.css tilde.md footer.md -o index.html
