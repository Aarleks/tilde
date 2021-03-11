# tilde

Because I'm an insufferable hipster I've made a `tilde.club`-style site as a placeholder while I repair my main site.

Sorry.

## Things I want to do

* DONE make the index page a bit more purposeful;
* add a resources page;
* add a teaching page;
* add a cv page;
* make a shell script to add, edit, and delete pages.
* DONE add an rss capability
* set up a cronjob on the site to look for git commits and git pull when there is a new one
* make a makefile to make the site

---

## Website Build Script

* initialise site in folder if none exists
    * make new
    * git clone
* give options for actions:
    * write new post;
    * update html;
    * push most recent commits to server

```sh
# take homepage file
# create 'frontblog.md' with
    ## latest 10posts
    ## last post title is changed to h2, date into a
    14 April, 2020
    Title hyperlinked to post page

    | block quote opening few lines

    pandoc -s --template dral_template.html --metadata title="~acn" --metadata author="Alex Norman" --variable homepage:"https://dralexnorman.xyz" --section-divs --css ../tilde.css --include-before header.html --include-before icons.html markdown/blog/20200422_blastula-for-emailing-feedback.md markdown/footer.md -o public/blog/20200422_blastula-for-emailing-feedback.html
```

* make the html files for blog posts
* make the html files for other pages and subpages
* create a list of latest 10 posts by filename prefix
* for the latest one, title into hyperlink (sed 1q `filename`)
* update 'while you're here...'



### Repo structure

* README.md
* website config file (site-wide settings)
* build-tilde (shell script to build the site with pandoc)
* public/ (stores the public-facing html, css, etc.)
    * style/
        * files
    * img/
        * files
* markdown/
    * files
    * blog/
	* files

### Site structure

* index.html
    * blog/
	* blog_files
* bio.html
* teaching.html
* research.html
* resources.html
* style/
    * files
* img/
    * files

---

## Index Page

## About
* link to CV

## Blog
* link to main blog page
* rolling top 3-5 on the index page

---

### Teaching Page Link
* regular teaching
* occasional teaching

### Research Page Link
* Research Projects
* Working papers
* Published stuffs

### Resources Page Link
* templates
* plain text guide
* Blog posts on interesting things
