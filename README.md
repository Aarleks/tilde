# tilde

Because I'm an insufferable hipster I've made a `tilde.club`-style site as a placeholder while I repair my main site.

Sorry.

## Things I may want to do

* add a rolling blog (including a drafts folder?);
* make the index page a bit more purposeful;
* add a resources page;
* add a teaching page;
* add a cv page;
* make a shell script to add, edit, and delete pages.
* add an rss capability

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
```

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
