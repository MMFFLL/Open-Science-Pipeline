**How can we use GitHub to collaborate on a project document authored in
Word?**

1.  Version control raw Markdown format project file, convert to Word or
    TeX for authoring or print purposes with Pandoc.
    <http://blog.martinfenner.org/2014/08/25/using-microsoft-word-with-git/>
    1.  Pandoc is maintained and widely supported.
    2.  Dependency Rakali is failing and not maintained.
        <http://blog.martinfenner.org/2014/08/18/introducing-rakali/>

2.  Author master documents in Word/docx, convert to Markdown with
    Word Diff. <http://ben.balter.com/2015/02/06/word-diff/>
    1.  Word Diff is maintained.
        <https://github.com/benbalter/word_diff>
    2.  Complicated setup is a negative. Really complicated, in fact,
        seems to require a Ruby development server.

3.  Author master documents in Word/docx, manually convert to Markdown
    with Pandoc, version control resulting .MD file.
    1.  pandoc -s "Development Proposals.docx" -t markdown -o
        "Development Proposals.md"
    2.  Most doable solution.
    3.  Not automatic.
        1.  **Write a Python .docx &lt;-&gt; .md conversion for all
            version controlled files in dir.**


**How can we extract citations from approx. APA-formatted docx papers and convert them into Biblatex style?**

* Should conform to [APA6 BibLatex specs](http://texdoc.net/texmf-dist/doc/latex/biblatex-apa/biblatex-apa.pdf).
* Use pandoc and regular expressions to split docx source into Markdown-formatted:
*   Title (p. 1).
*   Body (p. 2 to References/Bibliography).
*   References (References to first appendix)
*   Appendix (First appendix to end)
* DOCX to Markdown via pandoc seems to produce odd formatting in the references, like spontaneous headers.
* How to extract human error? Many DOCX to Markdown decompositions seem to end up with articles (notice journal italics):
    Buss, D. M., & Schackelford, T. K. (2008). Attractive women want it all: Good genes, economic investment, parenting proclivities, and emotional commitment. *Evolutionary Psychology, 6*(1), 134-146.
* Headings are just bolded in most .docx authored files.

**How can we track changes to OSP?**

* [Change log](https://github.com/olivierlacan/keep-a-changelog).
* Roadmap.
* IRC -> GitHub


**How can productivity tracking be incorporated?**

* Kanbanflow (Not open)
* [OpenKanban](https://github.com/agilelion/Open-Kanban) (Not maintained)
* [Kanboard](http://kanboard.net/)
* (LibreBoard)[https://github.com/libreboard/libreboard].


**How can we generate APA6 style LaTeX documents?**

* Structured, command line, lightweight, Win/Mac/Linux GUI.
*   TexLive, apa6.
*   TexStudio.


**How can we manage bibliographic information in APA6 style LaTeX documents?**

* BibTeX, BibLaTeX and/or Biber?
*   BibLaTeX + Biber.


**How can we plan future changes to OSP?**

* Roadmap.
* Forward changelog.
* Kanban.


**What license should we use?**

* https://creativecommons.org/licenses/by/3.0/
