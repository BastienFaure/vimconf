vimconf
=======

My awesome vim configuration (vimrc and plugins). Thanks to all awesome vim plugin devs ;-)

Install
=======

Clone the repository and all associated submodules :

    cd && git clone --recursive https://github.com/BastienFaure/vimconf .vim

Now create a symlink of the .vimrc file in your homedir :

    cd && ln -s .vim/.vimrc .vimrc

Now open vim and run PluginUpdate command.

Updating
========

    git submodule update --remote
    git add bundle/vundle
    git commit -m "Updated vundle"
