# 25-06-2015
## Building a skeleton
* Install Git and GitHub for Windows.
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
