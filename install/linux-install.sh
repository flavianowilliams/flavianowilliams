#!/bin/bash
#
list1=(xorg alacritty i3 ie-gaps i3blocks i3status neofetch pulseaudio pavucontrol neovim openssh git base-devel xtools xdg-user-dirs)
list2=(gcc gfortran python3 R rstudio)
list3=(nitrogen dmenu rofi maim gromit-mpx system-config-printer bootiso texlive-full texstudio qtikz lyx libreoffice mc thunar xreader)
list4=(texlive-full texstudio qtikz lyx)
#
echo "Atualizando repositorio"
echo
sudo xbps-install -Syu
#
for variable in ${list1[@]}; do
  echo
  echo "=====> Instalando o pacote $variable"
  echo
  sudo xbps-install -S $variable
done

for variable in ${list2[@]}; do
  echo
  echo "=====> Instalando o pacote $variable"
  echo
  sudo xbps-install -S $variable
done

for variable in ${list3[@]}; do
  echo
  echo "=====> Instalando o pacote $variable"
  echo
  sudo xbps-install -S $variable
done

for variable in ${list4[@]}; do
  echo
  echo "=====> Instalando o pacote $variable"
  echo
  sudo xbps-install -S $variable
done

# setting xbps-src
git clone https://github.com/void-linux/void-packages
cd void-packages
./xbps-src binary-bootstrap
#
# Installing google-chrome
#echo XBPS_ALLOW_RESTRICTED=yes >> ~/void-packages/etc/conf
#./xbps-src pkg google-chrome
#sudo xbps-install --repository=/home/flaviano/void-packages/hostdir/binpkgs/nonfree google-chrome
#
# Install pyenv
curl https://pyenv.run | bash
#
# Setting virtualenvs
#echo '# Pyenv python environments
#export PYENV_ROOT="$HOME/.pyenv" 
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#' >> ~/.bashrc
#source ~/.bashrc
#
# update i3
echo 
echo "=====> Atualizando i3"
echo
echo "Copiando arquivo de configuração"
echo
cp ./i3-config ~/.config/i3/config
#
# update neovim
echo 
echo "=====> Atualizando neovim"
echo
echo "Copiando arquivo de configuração"
echo
cp ./neovim-config ~/.config/nvim/init.vim
#
# install lunarvim
curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
#
# copy another files
cp ./wallpaper.jpeg ~/Imagens/.
cp ./wallpaper2.jpg ~/Imagens/.
