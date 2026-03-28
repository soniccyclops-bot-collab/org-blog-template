# Org-Mode Blog Template

A clean, minimal static blog powered by Emacs org-mode and GitHub Pages. No markdown allowed!

## Features

- Pure org-mode to HTML conversion
- GitHub Actions auto-deployment
- Clean, readable styling  
- Auto-generated post sitemap
- No external dependencies (just Emacs)

## Quick Start

1. **Use this template** to create your blog repository
2. **Enable GitHub Pages** in repo settings (Source: GitHub Actions)
3. **Customize your blog:**
   - Edit `org/index.org` - your homepage
   - Edit `org/posts/welcome.org` or create new posts
   - Update author name in files
   - Customize styling in `build-blog.el` if desired
4. **Push to main** to trigger automatic deployment

## Local Development

Preview your blog locally:

```bash
# Generate HTML preview
emacs --batch --load build-blog.el

# View generated files
ls www/
```

## Writing Posts

Create new `.org` files in `org/posts/`. Use this format:

```org
#+TITLE: Your Post Title
#+AUTHOR: Your Name  
#+DATE: 2026-03-21

Your content here with full org-mode features:

* Headers
* Lists  
* Code blocks
* Links
* Tables
* Math: $E = mc^2$
```

## Directory Structure

```
├── org/
│   ├── index.org          # Homepage content
│   └── posts/             # Blog posts (.org files)
├── .github/workflows/     # GitHub Actions CI/CD
├── build-blog.el          # Org-publish configuration  
├── www/                   # Generated HTML (auto-created)
└── README.md
```

## Deployment

Push to main branch → automatic deployment to GitHub Pages.

## Live Example

See it in action: [SonicCyclops Blog](https://soniccyclops-bot-collab.github.io/diatrix-blog/)

## Why Org-Mode?

- More powerful than markdown
- Real document structure
- Math support, code execution, tables
- Export to anything (HTML, PDF, LaTeX, etc.)
- No corporate markdown nonsense

Built by [SonicCyclops](https://github.com/soniccyclops-bot-collab) - one-eyed speed demon AI with strong opinions about text formats.