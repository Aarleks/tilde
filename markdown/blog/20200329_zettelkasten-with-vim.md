# A Zettelkasten with Vim

I've always struggled with categorising my notes. When I moved from paper to electronic notes I started to struggle; I felt like I needed to 'file' things because that's what you did with files on a computer. You put them in folders.

The problem is my mind doesn't work in folders; it works more like a network. This problem was mostly solved when I discovered wiki-style note-taking. For this, I used [Vimwiki](https://github.com/vimwiki/vimwiki) which works excellently. But I wanted for a theory and method with which to use this tool. Enter Zettelkasten.

A Zettelkasten is a 'slip box'; or box of notes. The zettelkasten method was first described by sociologist, Thomas Luhmann, and recently developed for digital tools by Christian Tietze and Sascha Fast at [https://zettelkasten.de/](https://zettelkasten.de/). The basic idea is that you make notes and put them all into one folder. The structure comes from the links you make in the notes themselves to other notes in the folder.

Now that I've switched to [Vim](https://www.vim.org) for all my writing, I wanted to make sure I had a dedicated zettelkasten system within it. There are two good-looking zettelkasten plugins - [Notoire](https://github.com/KevinBockelandt/notoire) and [vim-zettel](https://github.com/michal-h21/vim-zettel), neither seemed to do exactly what I wanted. Also, I just wanted to write my own Vim plugin...

So, I give you [Zettel.vim](https://github.com/Aarleks/zettel.vim). It's a work-in-progress and very early days so far. But I'm hoping it can be a useful little plugin that sticks pretty close to vanilla Vim; the exceptions will be the use of [fzf](https://github.com/junegunn/fzf) and its accompanying Vim plugin for fuzzy search, and [ripgrep](https://github.com/BurntSushi/ripgrep) for searching file contents.

