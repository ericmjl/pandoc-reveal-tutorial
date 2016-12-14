---
title: Making HTML slides & handout notes
author:
- name: Eric J. Ma
  affiliation: MIT
date: 14 December 2016
---

# introduction

In this tutorial, I will show you how you can use a single Markdown source file to create HTML notes and Reveal.js versions of your slides.

## why? (philosophical)

- I've grown frustrated with the opacity of Keynote and PowerPoint files
- I've come to like having more granular control over my presentations

## why? (practical)

- It's useful to have a single-page HTML version of your slide to make things easier for your listeners to follow along.
- Write once, output everywhere.
- Markdown + Reveal.js + Pandoc = full, version-controlled, source for multiple outputs.

# prerequisite knowledge

- Git
- Can grasp simple HTML, CSS, Bash and Python.

# what you'll be able to do by the end

- Create a markdown file and convert it to Reveal.js slides and a single-page HTML notes version.
- Create a custom CSS file for styling the slides and HTML notes.
- Modify the template to add in elements that you decide are necessary.

# how?

Let's get setup!

## install

- Pandoc

## git clone

- [`hakimel/reveal.js`](https://github.com/hakimel/reveal.js)

## prepare
- Create new repository (hereby called `repo`) to hold slides (distinct from `hakimel/reveal.js`)
- Copy from `hakimel/reveal.js` into `repo`:
    - `css/`
    - `js/`
    - `lib/`
    - `plugin/`
