docker pull ghcr.io/prefacedesign/texlive-apostila-tutoria:latest

cp -f ~/.bashrc ~/.bashrc.backup
echo "alias compila-apostilas-arara='docker run -i --rm --name latex -v \"\$PWD\":/usr/src/app -w /usr/src/app ghcr.io/prefacedesign/texlive-apostila-tutoria:latest arara'" >> ~/.bashrc
echo "alias compila-apostilas-command='docker run -i --rm --name latex -v \"\$PWD\":/usr/src/app -w /usr/src/app ghcr.io/prefacedesign/texlive-apostila-tutoria:latest'" >> ~/.bashrc
bash