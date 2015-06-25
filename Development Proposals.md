**How can we use GitHub to collaborate on a project document authored in
Word?**

*Articles*

<http://blog.martinfenner.org/2014/08/25/using-microsoft-word-with-git/>

<http://ben.balter.com/2015/02/06/word-diff/>

*Solutions*

1.  Version control raw Markdown format project file, convert to Word or
    TeX for authoring or print purposes with Pandoc.
    <http://blog.martinfenner.org/2014/08/25/using-microsoft-word-with-git/>

    a.  Pandoc is maintained and widely supported.

    b.  Dependency Rakali is failing and not maintained.
        http://blog.martinfenner.org/2014/08/18/introducing-rakali/

2.  Author master documents in Word/docx, convert to Markdown with
    Word Diff. <http://ben.balter.com/2015/02/06/word-diff/>

    a.  Word Diff is maintained.
        <https://github.com/benbalter/word_diff>

    b.  Complicated setup is a negative. Really complicated, in fact,
        seems to require a Ruby development server.

3.  Author master documents in Word/docx, manually convert to Markdown
    with Pandoc, version control resulting .MD file.

    a.  pandoc -s "Development Proposals.docx" -t markdown -o
        "Development Proposals.md"

    b.  Most doable solution.

    c.  Not automatic.

        i.  **Write a Python .docx &lt;-&gt; .md conversion for all
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
