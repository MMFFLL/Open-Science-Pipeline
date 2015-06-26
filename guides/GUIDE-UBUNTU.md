Basic Stack
===========

System & Network
----------------

Manually download and install [Encryptr](https://encryptr.org), and your
VPN config files from your VPN provider.

<div class="sourceCode">

``` {.sourceCode .bash}
sudo apt-get install openvpn
sudo apt-get install network-manager-openvpn
sudo gedit /etc/openvpn/auth
```

</div>

Set the repository mirror to
`http://eu-central-1.clouds.archive.ubuntu.com/ubuntu/`. See [this
link](http://askubuntu.com/questions/37753/how-can-i-get-apt-to-use-a-mirror-close-to-me-or-choose-a-faster-mirror).
Finally, connect the VPN and use the Ubuntu Software Updater, then
restart the system.

TeX
---

Manually download TexLive net installer, use the [Texlive Quick Install
guide](https://www.tug.org/texlive/quickinstall.html)

<div class="sourceCode">

``` {.sourceCode .bash}
sudo apt-get install perl-tk
sudo /home/zodium/Downloads/install-tl-20150625/install-tl -gui wizard --location http://ftp.snt.utwente.nl/pub/software/tex/systems/texlive/tlnet
```

</div>

Add directories to PATH.

<div class="sourceCode">

``` {.sourceCode .bash}
sudo gedit ~/.profile
```

</div>

    export PATH=/usr/local/texlive/2015/bin/x86_64-linux:$PATH
    export MANPATH=/usr/local/texlive/2015/texmf-dist/doc/man:$MANPATH
    export INFOPATH=/usr/local/texlive/2015/texmf-dist/doc/info:$INFOPATH

Add psudo bash alias to escape sudo behavior.

<div class="sourceCode">

``` {.sourceCode .bash}
sudo gedit ~/.bashrc
```

</div>

`alias psudo='sudo env PATH="$PATH"'`

Source changes.

<div class="sourceCode">

``` {.sourceCode .bash}
. ~/.profile
. ~/.bashrc
```

</div>

Git
---

Git comes preinstalled on Ubuntu, but it's old. Update it and hook it up
to GitHub.

<div class="sourceCode">

``` {.sourceCode .bash}
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git
git --version
git config --global user.name "zodium"
git config --global user.email "zodium@gmail.com"
ssh-keygen -t rsa -b 4096 -C "zodium@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

</div>

GibHub
------

Take the key in id\_rsa and manually upload it to GitHub via the web
interface.

<div class="sourceCode">

``` {.sourceCode .bash}
gedit ~/.ssh/id_rsa.pub
ssh -T git@github.com
git clone https:///github.com/zodium/Personal-Open-Science-Pipeline/
cd ~/Personal-Open-Science-Pipeline/
git remote -v
git remote set-url origin git@github.com:zodium/Personal-Open-Science-Pipeline.git
git remote add upstream git@github.com:zodium/Personal-Open-Science-Pipeline.git
git remote -v
git add .
git commit  -m “Loki-Loki test.”
git push
git fetch
git status
git pull
```

</div>

R
-

Add `deb http://cran.uni-muenster.de/bin/linux/ubuntu trusty/` to
`/etc/apt/sources.list` before installing R.

<div class="sourceCode">

``` {.sourceCode .bash}
sudo gedit /etc/apt/sources.list
sudo apt-get update
sudo apt-get install r-base
sudo apt-get install r-base-dev
[Manual install R Studio]
rstudio ~/Personal-Open-Science-Pipeline/ & disown
```

</div>

Atom and Pandoc
---------------

Manually install [Atom](https://atom.io/) and
[Pandoc](https://pandoc.org/).

<div class="sourceCode">

``` {.sourceCode .bash}
apm install file-icons
apm install autocomplete-plus
apm install language-latex
apm install latexer
atom ~/Personal-Open-Science-Pipeline/ & disown
```

</div>

Generating and sharing APA 6th Ed. PDFs
=======================================

Download the [apa6 package](https://www.ctan.org/pkg/apa6) from CTAN.
Extract the samples folder to a Git repo, then navigate there.

`cd ~\Personal-Open-Science-Pipeline\tests\apa6-latex-biber\`

Produce APA6 PDF from `shortsample.tex`

<div class="sourceCode">

``` {.sourceCode .bash}
pdflatex shortsample
biber shortsample
pdflatex shortsample
```

</div>

Produce APA6 PDF from `longsample.tex`

<div class="sourceCode">

``` {.sourceCode .bash}
pdflatex longsample
biber longsample
pdflatex longsample
```

</div>

Return to POSP and allow gen\_from-md.sh to execute, then run.

<div class="sourceCode">

``` {.sourceCode .bash}
cd ~/Personal-Open-Science-Pipeline/
chmod +x ~/Personal-Open-Science-Pipeline/gen_from-md.sh
chmod +x ~/Personal-Open-Science-Pipeline/gen_to-md.sh
./gen_from-md.sh
```

</div>

Check, commit and push changes to GitHub.

<div class="sourceCode">

``` {.sourceCode .bash}
git status
git add .
git commit -m "Building environment."
git push
```

</div>
