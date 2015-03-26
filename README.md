# laiwei unix home

## fork from yubo, thanks
## thanks http://beiyuu.com/git-vim-tutorial/ too

    git clone git@github.com:laiwei/unix_home.git ~/.laiwei_unix_home
    cd ~/.laiwei_unix_home && sh install.sh

    vim
    :BundleInstall
    :q
        
    "更新插件:
    :BundleInstall!

    "卸载不在列表中的插件:
    :BundleClean


ctags vim
====

C-] - go to definition
C-T - Jump back from the definition.
C-W C-] - Open the definition in a horizontal split

Add these lines in vimrc
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

C-\ - Open the definition in a new tab
A-] - Open the definition in a vertical split

After the tags are generated. You can use the following keys to tag into and tag out of functions:

Ctrl-Left_MouseClick - Go to definition
Ctrl-Right_MouseClick - Jump back from definition
