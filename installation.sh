# Update system
dnf upgrade

# Add repo
dnf install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Programing tools
# dnf groupinstall -y "Development Tools"

# Libraries
dnf install -y cmake gcc-c++ libX11-devel libXext-devel 
# QT
dnf install -y qt5-qtx11extras-devel qt5-qtbase-devel qt5-qtsvg-devel qt5-qttools-devel 
# Arduino
dnf install -y arduino 
# VSCode
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf install -y code
# Git gui
dnf install -y git-gui

# Electronic
dnf install -y PrusaSlicer kicad kicad-packages3d kicad-doc 

curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.rpm.sh' \
   | -E bash
dnf install -y balena-etcher-electron   

# Art
inkscape audacity Kdenlive gimp

# Office / Communication
dnf install -y libreoffice thunderbird firefox vlc
flatpak install flathub com.github.marktext.marktext

flatpak install flathub com.discordapp.Discord
override --filesystem=home com.discordapp.Discord

flatpak install flathub com.microsoft.Teams

# Utilities
dnf install -y gnome-shell-extension-launch-new-instance.noarch
dnf install -y gnome-shell-extension-gsconnect.x86_64
dnf install -y neofetch

dnf upgrade -y




