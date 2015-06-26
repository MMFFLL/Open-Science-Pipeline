GOAL
====

Develop a platform independent method for efficiently producing fully open, reproducible, and
collaborative scientific works.

0.1.0 target methods:

* Basic `md` <-> `html` <-> `docx` <-> `pdf` conversion with `pandoc`.
* Text editing with Atom.
* Authoring in Microsoft Word (Windows).
* Authoring in LibreOffice (Ubuntu).
* Analysis with R; plotting with ggplot2.
* APA formatting and PDF compiling with LiveTeX, `apa6`, `biblatex` and `biber`. (Ubuntu)
* Version control with Git and GitHub.
* Ubuntu 14.0.4 LTS quickstart guide.

[ROAD TO 0.1.0](https://github.com/olivierlacan/keep-a-changelog)
===

26-06-2015
----------
### Drafting working environment and guide.
-   Set up Ubuntu environment again from scratch.

-   Wrote extensive Ubuntu setup guide from zero to APA 6th Ed LaTeX.

-   Wrote general pandoc batch converters `gen_from-md.sh` and
    `gen_to-md.sh`.

-  `gen_from-md` generates `html/docx` via `md`, `gen_to-md` generates `md` via `docx`.

-  Added CHANGELOG.md

-  Current documents: DRAFT.md, GUIDE-UBUNTU.md, PROPOSALS.md, CHANGELOG.md.



25-06-2015
----------

### Building a skeleton

-   Installed Git and GitHub for Windows. ⋅⋅\* [Setting up
    GitHub](https://help.github.com/articles/set-up-git/)

-   Set up Personal Open Science Project repository.

-   Install Pandoc. ⋅⋅\* [Pandoc](http://pandoc.org/).

-   Added pandoc to .gitconfig.

<!-- -->

-   [diff "pandoc"]
        textconv=pandoc --to=markdown
        prompt = false
        [alias]
        wdiff = diff --word-diff=color --unified=1

<!-- -->

-   Set project .gitattributes to use diff=pandoc

-   Converted Goals.docx to Markdown.

<!-- -->

-   pandoc -s Goals.docx -t markdown -o Goals.md

<!-- -->

-   Converted Development Proposals.docx to Markdown.

<!-- -->

-   pandoc -s "Development Proposals.docx" -t markdown -o "Development Proposals.md"

<!-- -->

-   Committed to GitHub. ⋅⋅\* Pandoc diff is not working for GitHub GUI.

<!-- -->

-   Error: Could not generate diff for file.

<!-- -->

-   Decided Ben Balter's Word Diff solution is too complicated.

-   Wrote temporary .bat file that manually converts .docx to .md
    with Pandoc.

-   Removed pandoc from .gitconfig

-   Successfully committed and synced with GitHub, cloned to Ubuntu VM,
    committed again and updated Windows local.

-   Merged log and goals into README.md, renamed Development Proposals
    to PROPOSALS.
