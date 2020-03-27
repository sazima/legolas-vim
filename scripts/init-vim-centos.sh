#!/usr/bin/env bash

# for ycm
yum install -y gcc gcc-c++ kernel-devel cmake golang python-pip python-devel python36 python36-devel \
    ncurses-devel \
    perl perl-devel \
    perl-ExtUtils-Embed \
    ruby ruby-devel \
    lua lua-devel

sudo ln -s /usr/bin/python3.6 /usr/bin/python3

sudo yum -y remove vim

<<<<<<< HEAD
cd ~ && rm -rf vim && git clone --branch v8.2.0114 --depth=1 https://github.com/vim/vim.git && cd vim
=======
cd ~ && rm -rf vim && git clone https://github.com/vim/vim.git && cd vim && git checkout v8.2.0114
>>>>>>> ba12b6453d48dc3032874323a0a78831168b40ab
./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-pythoninterp=yes \
    --enable-python3interp=yes \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --enable-gui=gtk2 \
    --enable-cscope \
    --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo make install
