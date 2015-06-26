**How can we use GitHub to collaborate on a project document authored in
Word?**

*Solutions*

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


**How can we include logs in a project?**

*Solutions*

-   IRC -&gt; GitHub

-   Gitter.im

-   TXT changelog/journal.


**How can productivity tracking be incorporated?**

*Services*

-   Kanbanflow

-   Open Kanban <https://github.com/agilelion/Open-Kanban>

-   Kanboard <http://kanboard.net/>


**How can we generate APA style LaTeX documents?**

*Qualities*

-   Structured.
-   Command line.
-   Lightweight.

**How can we manage bibliographic information?**


Bibtext, Biblatex or Biber?

**How can we track changes to POSP?**


https://github.com/olivierlacan/keep-a-changelog


**How can we plan future changes to POSP?**

Roadmap? Forward changelog?


**What license should we use?**

No idea.
