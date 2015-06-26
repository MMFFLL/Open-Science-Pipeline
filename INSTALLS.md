## System & Network
```bash
[Manual install Encryptr from site (https://encryptr.org)]
[Manual VPN config download]
sudo apt-get install openvpn
sudo apt-get install network-manager-openvpn 
sudo gedit /etc/openvpn/auth
[Set repo mirror to Amazon S3 Frankfurt cluster
	http://eu-central-1.clouds.archive.ubuntu.com/ubuntu/
	http://askubuntu.com/questions/37753/how-can-i-get-apt-to-use-a-mirror-close-to-me-or-choose-a-faster-mirror
]
[System software update]
[Restart]
```

## TeX
```bash
sudo apt-get install texlive-full biber
```

## Git
```bash
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git
git --version
git config --global user.name "zodium"
git config --global user.email "zodium@gmail.com"
ssh-keygen -t rsa -b 4096 -C "zodium@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
gedit ~/.ssh/id_rsa.pub
	[Manual copy key to GitHub]
ssh -T git@github.com
git clone https:///github.com/zodium/Personal-Open-Science-Pipeline/
cd ~/Personal-Open-Science-Pipeline/
git remote -v
git remote set-url origin git@github.com:zodium/Personal-Open-Science-Pipeline.git
git remote add upstream git@github.com:zodium/Personal-Open-Science-Pipeline.git
git add .
git commit  -m “Loki-Loki test.”
git push
```

## R
```bash
sudo gedit /etc/apt/sources.list
	deb http://cran.uni-muenster.de/bin/linux/ubuntu trusty/
sudo apt-get update
sudo apt-get install r-base
sudo apt-get install r-base-dev
[Manual install R Studio]
```

## Atom/Pandoc
```bash
[Manual install Atom (https://atom.io/)]
atom ~/Personal-Open-Science-Pipeline/
[Manual install Pandoc (https://pandoc.org/)]
```
