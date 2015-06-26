# Goal

Develop a platform independent and disciplined cradle-to-the-grave
method for efficiently producing fully open, reproducible, and
collaborative scientific works.

# Log
## 25-06-2015
### Building a skeleton
* Installed Git and GitHub for Windows.
⋅⋅* [Setting up GitHub](https://help.github.com/articles/set-up-git/)
* Set up Personal Open Science Project repository.
* Install Pandoc.
⋅⋅* [Pandoc](http://pandoc.org/).
* Added pandoc to .gitconfig.
```git
[diff "pandoc"]
	textconv=pandoc --to=markdown
	prompt = false
[alias]
	wdiff = diff --word-diff=color --unified=1
```
* Set project .gitattributes to use diff=pandoc
* Converted Goals.docx to Markdown.
```pandoc
	pandoc -s Goals.docx -t markdown -o Goals.md
```
* Converted Development Proposals.docx to Markdown.
```pandoc
	pandoc -s "Development Proposals.docx" -t markdown -o "Development Proposals.md"
```
* Committed to GitHub.
⋅⋅* Pandoc diff is not working for GitHub GUI.
```git
	Error: Could not generate diff for file.
```
* Decided Ben Balter's Word Diff solution is too complicated.
* Wrote temporary .bat file that manually converts .docx to .md with Pandoc.
* Removed pandoc from .gitconfig
* Successfully committed and synced with GitHub, cloned to Ubuntu VM, committed again and updated Windows local.
* Merged log and goals into README.md, renamed Development Proposals to PROPOSALS.

## 26-06-2015
* Set up Ubuntu environment again from scratch.
* Wrote extensive Ubuntu setup guide from zero to APA 6th Ed LaTeX.
* Wrote general pandoc batch converters `gen_from-md.sh` and `gen_to-md.sh`.
..* *from* generates html/docx via md, *to* generates md via docx.
