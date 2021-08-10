# CluelessOnes-CTFVM
### Steps
1. wget -q -O - https://archive.kali.org/archive-key.asc | sudo apt-key add
2. sudo apt update && sudo apt upgrade
3. sudo apt install curl wget git zsh python3-pip tmux neovim vim gpg
4. sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
5. git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
6. sed -i.bak "s/\"robbyrussell\"/\"powerlevel10k\/powerlevel10k\"/" .zshrc
7. cd ~ ; wget -c https://raw.githubusercontent.com/Aeres-u99/CluelessOnes-CTFVM/main/.tmux.conf
8. sudo chsh
9. sudo apt install radare2 john binwalk nmap sublist3r gobuster gdb hashcat bettercap exif
10. wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
11. echo source ~/.gdbinit-gef.py >> ~/.gdbinit
12. pip install -U ptpython
13. export PATH=$PATH:/home/vagrant/.local/bin
14. 


```
Configuration file '/etc/sudoers'
 ==> Modified (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** sudoers (Y/I/N/O/D/Z) [default=N] ? N

```
```
Configuration file '/etc/ssh/ssh_config'
 ==> Deleted (by you or by a script) since installation.
 ==> Package distributor has shipped an updated version.
   What would you like to do about it ?  Your options are:
    Y or I  : install the package maintainer's version
    N or O  : keep your currently-installed version
      D     : show the differences between the versions
      Z     : start a shell to examine the situation
 The default action is to keep your current version.
*** ssh_config (Y/I/N/O/D/Z) [default=N] ? N

```


### Space Consumption
* 350MB for upgrade
* 300MB for curl, wget, git zsh pip tmux nvim and vim
* 1025MB for All the Tools installation
* Standard size for oh-my-zsh and gef
* 
