#!/bin/bash

# Update Ubuntu and get standard repository programs
# sudo apt update && sudo apt full-upgrade -y

source menu.sh

clear

case $(select_opt "* Ubuntu x86" "* RPi Headless" "* RPi Desktop" "* Ubuntu Arm Desktop" "* Fedora-x86" "CANCEL") in
0)
    # install apt packages for Ubuntu x86 Installation only --------------------- Ubuntu x86
    for f in ubuntu-x86/*.txt; do sudo apt install -y $(grep -v '^#' $f); done
    for f in ubuntu-x86/*.sh; do bash "$f" -H; done
    # rust takes a commandline input to continue ....
    # so added it in the last so it won't pause other scripts
    bash rust.sh
    bash arduino-cli.sh
    ;;
1)
    # install apt packages for Raspberry Pi Headless Installation only --------------------- RPi Headless
    for f in rpi-headless/*.txt; do sudo apt install -y $(grep -v '^#' $f); done
    for f in rpi-headless/*.sh; do bash "$f" -H; done
    ;;
2)
    # install apt packages for Raspberry Pi Desktop Installation only --------------------- RPi Desktop
    for f in rpi-desktop/*.txt; do sudo apt install -y $(grep -v '^#' $f); done
    for f in rpi-desktop/*.sh; do bash "$f" -H; done
    ;;
3)
    # install apt packages for Ubuntu ARM Desktop Installation only --------------------- Ubuntu ARM
    for f in ubuntu-arm-desktop/*.txt; do sudo apt install -y $(grep -v '^#' $f); done
    for f in ubuntu-arm-desktop/*.sh; do bash "$f" -H; done
    ;;

    # make an option for fedora installations

esac

clear
