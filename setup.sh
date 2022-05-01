#!/usr/bin/env bash

# shellcheck disable=SC1091
source menu.sh

clear

case $(select_opt "* Ubuntu x86" "* RPi Headless" "* RPi Desktop" "* Ubuntu Arm Desktop" "* Ubuntu Cloud VM" "* WSL-Ubuntu" "* Manjaro Linux" "* Arch i3" "CANCEL") in
0)
    # install apt packages for Ubuntu x86 Installation only --------------------- Ubuntu x86
    sudo apt update && sudo apt full-upgrade -y
    for f in ubuntu-x86/*.txt; do
        while IFS= read -r app; do
            sudo apt install -y "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in ubuntu-x86/*.sh; do bash "$f" -H; done
    # rust takes a commandline input to continue ....
    # so added it in the last so it won't pause other scripts
    bash rust.sh
    bash arduino-cli.sh
    ;;
1)
    # install apt packages for Raspberry Pi Headless Installation only --------------------- RPi Headless
    sudo apt update && sudo apt full-upgrade -y
    for f in rpi-headless/*.txt; do
        while IFS= read -r app; do
            sudo apt install -y "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in rpi-headless/*.sh; do bash "$f" -H; done
    ;;
2)
    # install apt packages for Raspberry Pi Desktop Installation only --------------------- RPi Desktop
    sudo apt update && sudo apt full-upgrade -y
    for f in rpi-desktop/*.txt; do
        while IFS= read -r app; do
            sudo apt install -y "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in rpi-desktop/*.sh; do bash "$f" -H; done
    ;;
3)
    # install apt packages for Ubuntu ARM Desktop Installation only --------------------- Ubuntu ARM
    sudo apt update && sudo apt full-upgrade -y
    for f in ubuntu-arm-desktop/*.txt; do
        while IFS= read -r app; do
            sudo apt install -y "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in ubuntu-arm-desktop/*.sh; do bash "$f" -H; done
    ;;

4)
    # install apt packages for Ubuntu Cloud VM Installation only --------------------- Ubuntu Cloud VM
    sudo apt update && sudo apt full-upgrade -y
    for f in ubuntu-vm/*.txt; do
        while IFS= read -r app; do
            sudo apt install -y "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in ubuntu-vm/*.sh; do bash "$f" -H; done
    ;;

5)
    # install apt packages for WSL-Ubuntu Windows installation only ----------------------- WSL-Ubuntu
    sudo apt update && sudo apt full-upgrade -y
    for f in wsl-ubuntu/*.txt; do
        while IFS= read -r app; do
            sudo apt install -y "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in wsl-ubuntu/*.sh; do bash "$f" -H; done
    bash rust.sh
    ;;

6)
    # install pacman packages for Manjaro Arch Linux installation only ----------------------- Manjaro Linux
    sudo pacman -Syyu
    for f in manjaro-x86/*.txt; do
        while IFS= read -r app; do
            sudo pacman -S --needed --noconfirm "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in manjaro-x86/*.sh; do bash "$f" -H; done

    # Most of the rust packages are available in the AUR .... so no need to build it using cargo
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

    cargo install cargo-update
    cargo install cargo-watch
    ;;

7)
    # install pacman packages for Arch i3 installation only ------------------------------------- Arch i3
    sudo pacman -Syyu
    for f in arch-i3/*.txt; do
        while IFS= read -r app; do
            sudo pacman -S --needed --noconfirm "$app"
        done < <(grep -v '^#' "$f")
    done

    for f in arch-i3/*.sh; do bash "$f" -H; done

    # Most of the rust packages are available in the AUR .... so no need to build it using cargo
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

    cargo install cargo-update
    cargo install cargo-watch
    
    bash userenv.sh
    ;;
esac
