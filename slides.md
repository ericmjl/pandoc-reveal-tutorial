---
title: Making HTML slides & handout notes
author:
- name: Eric J. Ma
  affiliation: MIT
date: 14 December 2016
---

# introduction

In this tutorial, I will show you how you can use a single Markdown source file to create HTML notes and Reveal.js versions of your slides.

# versions

- [slides]
- [source]
- [notes]

[source]: https://www.github.com/ericmjl/pandoc-reveal-tutorial
[notes]: http://ericmjl.github.io/pandoc-reveal-tutorial

# why? (philosophical)

- I've grown frustrated with the opacity of Keynote and PowerPoint files
- I've come to like having more granular control over my presentations

# why? (practical)

- It's useful to have a single-page HTML version of your slide to make things easier for your listeners to follow along.
- Write once, output everywhere.
- Markdown + Reveal.js + Pandoc = full, version-controlled, source for multiple outputs.

# prerequisite knowledge

I'm assuming that you:

- know how to use `git`,
- are comfortable working at the command line,
- can grasp simple HTML, CSS, Bash and Python.

# what you'll be able to do by the end

- Create a markdown file and convert it to Reveal.js slides and a single-page HTML notes version.
- Create a custom CSS file for styling the slides and HTML notes.
- Modify the template to add in elements that you decide are necessary.

# how?

Let's get setup!

# install

- Pandoc

# git clone

- [`hakimel/reveal.js`](https://github.com/hakimel/reveal.js)

# prepare
- Create new repository (hereby called `repo`) to hold slides (distinct from `hakimel/reveal.js`)
- Copy from `hakimel/reveal.js` into `repo`:
    - `css/`
    - `js/`
    - `lib/`
    - `plugin/`

# make slides source

- create a file called `slides.md`

```

$ touch slides.md

```

# fill in slides' YAML header

Use standard Markdown.

```
---
title: My Title Goes Here
author:
- name: My Name Here
  affiliation: My Affiliation Here
---
```

# fill in content

```markdown
# slide 1 title

- Bullet point 1
- Bullet point 2
- Bullet point 3

# sub-slide title

1. Numbered point.
1. Numbered point.

# slide 2 title

Some text. A [url] to somewhere.

[url]: http://myfavoritewebsite.com/
```

# create your build script (ver.1)
```bash
$ touch build.sh
```

# write your build script (ver.1)

write your pandoc commands into the build script

```bash
# Make revealjs version of slides
pandoc slides.md -o slides.html \
    --section-divs \
    -t revealjs \
    -s \
    --template template.revealjs
```

# open and view your slides!
