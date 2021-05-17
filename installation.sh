dnf upgrade -y
dnf install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-8.noarch.rpm
dnf config-manager --set-enabled PowerTools

dnf install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak install flathub com.valvesoftware.Steam

dnf install xorg-x11-server-Xorg xorg-x11-xauth xorg-x11-apps -y
dnf install plasma-desktop kscreen sddm kde-gtk-config dolphin konsole kate -y

dnf groupinstall "Development Tools"
dnf install kernel-devel epel-release
dnf install dkms

mkdir /home/Cepadues/Source-Code/Nvidia/
cd /home/Cepadues/Source-Code/Nvidia/
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/465.27/NVIDIA-Linux-x86_64-465.27.run
set -o noclobber
echo 'GRUB_CMDLINE_LINUX="crashkernel=auto rhgb quiet nouveau.modeset=0"' >> /etc/default/grub
grub2-mkconfig -o /boot/efi/EFI/rocky/grub.cfg
bash NVIDIA-Linux-x86_64-*
cd

dnf install cmake gcc-c++ libX11-devel libXext-devel qt5-qtx11extras-devel qt5-qtbase-devel qt5-qtsvg-devel qt5-qttools-devel kf5-kwindowsystem-devel make procps-ng curl file git
dnf install firefox zsh

rpm --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg" | tee -a /etc/yum.repos.d/vscodium.repo
dnf install codium

dnf install celluloid youtube-dl ffmpeg

curl -1sLf \
   'https://dl.cloudsmith.io/public/balena/etcher/setup.rpm.sh' \
   | -E bash
dnf install -y balena-etcher-electron   

flatpak install flathub com.discordapp.Discord

flatpak install flathub com.microsoft.Teams

yum install libXcomposite libXcursor libXi libXtst libXrandr alsa-lib mesa-libEGL libXdamage mesa-libGL libXScrnSaver
mkdir /home/Cepadues/Source-Code/Anaconda/
cd /home/Cepadues/Source-Code/Anaconda/
wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh

sudo dnf install java-latest-openjdk-devel.x86_64 java-1.8.0-openjdk.x86_64



///// IDE ////

Arduino
sudo dnf install arduino

VSCode
//Pour ajouter le repo
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

//Installation
sudo dnf check-update
sudo dnf install code
y
Jet brain
telecharger la toolbox et se connecter avec le compte etu
https://www.jetbrains.com/toolbox-app/

Android Studio
https://fedoraproject.org/wiki/Android_Studio



Cube IDE
flatpak install flathub com.st.STM32CubeIDE
Cube Mx

QT

QT Designer
sudo dnf install qt5-designer.x86_64

///// CAO /////

Installer prusa slicer :
sudo dnf install PrusaSlicer

Kicad
sudo dnf install kicad
Pour avoir les 3D de base
sudo dnf install kicad-packages3d


/////Pour les graphiques/////
Inkscape
sudo dnf install inkscape

Kdenlive
sudo dnf install kdenlive

RawTherapee
sudo dnf install rawtherapee


