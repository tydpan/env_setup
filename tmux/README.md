# Tmux

[Official Github](https://github.com/tmux/tmux)

### Installation
*If you want to install desired version on the server.*
*The theme used here requires `tmux >= 2.4`.*
*Check official github for more details.*
 - Make sure packages `libevent` and `ncurses` are available. 
 - Download source tarball from official github. 
 - Run the following:
 ```
tar -zxf tmux-*.tar.gz
cd tmux-*/
./configure --prefix=$HOME/software/tmux
make && make install
 ```
 Replace the path of `--prefix` to your desired location which doesn't need root permssion.
 - Add the following to your shell profile, for example `.bashrc`, `.bash_profile`, or `.zshrc`
 ```
# tmux
export PATH=$HOME/software/tmux/bin:$PATH
export LD_LIBRARY_PATH=$HOME/software/tmux/lib:$LD_LIBRARY_PATH
export MANPATH=$HOME/software/tmux/share/man:$MANPATH
# resolve issues for vim in tmux
export TERM=screen=256color
 ```

### Theme
from this [Github page](https://github.com/gpakosz/.tmux)
 - Run the following:
 ```
$ cd
$ git clone https://github.com/gpakosz/.tmux.git
$ ln -s -f .tmux/.tmux.conf
$ cp $PATH_TO_THIS_REPO/tmux/.tmux.conf.local .
 ```

 ### Tmux Cheat Sheet
[Tmux cheat sheet](https://tmuxcheatsheet.com/)