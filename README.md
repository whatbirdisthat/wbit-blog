---
title: "README"
date: 2020-05-10T00:00:00+10:00
draft: true
description: a rant about the way money is wasted
---

# The hugo site

## Preparing:

> using linux-brew on ubuntu

```bash
brew install hugo
```

## Working with Hugo

```bash
hugo serve -D
```

## To add a post

```bash
hugo new posts/newpost.md
```

## To add style

> See the [mermaid example](assets/sass/mermaid.scss)
> and the [html 'partial'](layouts/partials/mermaid.html)

To get the theme to load the js and style I had to hack in
a partial on [the theme base html](themes/m10c/layouts/_default/baseof.html)

## Embedding [mermaid](https://mermaid-js.github.io/mermaid/#/examples)

To embed the mermaid, see [begin with disaster](/posts/begin-with-disaster.md)