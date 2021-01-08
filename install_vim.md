# vim 通过编译的方式安装，并且解决插件不兼容的问题

git clone git@github.com:vim/vim.git
cd vim/src/
./configure --with-python3-command=python3 --enable-pythoninterp=yes --enable-python3interp=yes
make
make install
sudo cp /usr/local/bin/vim /usr/bin/
