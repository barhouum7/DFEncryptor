#!/usr/bin/env bash
# DFEncriptor v1.0
# Coded by: BHMBS IBRAHIM Studxent At TI13 ISET Nabeul
# Github: https://github.com/barhouum7/DFEncriptor



banner() {

printf "\n"
printf "\n"
printf "\n"
printf "\e[1;90m     ____   __  __ __   ___  ____  _____    ____  __                  __     _            \e[0m\n"
printf "\e[1;93m    / __ ) / / / //  |_/  / / __ )/ ___/   /  _/ / /_   _____ ____,_ / /_   (_)________  \e[0m\n"
printf "\e[1;93m   / __ | / /_/ // / |_/ / / __  |\__ \    / /  / __ \ / ___// __  // __ \ / // __  __ \ \e[0m\n"
printf "\e[1;93m  / /_/ // __  // /  /  / / /_/ /___/ /  _/ /  / /_/ // /   / /_/ // / / // // / / / / / \e[0m\n"
printf "\e[1;90m /_____//_/ /_//_/  /__/ /_____//____/  /___/ /_.___//_/    \__,_//_/ /_//_//_/ /_/ /_/  \e[0m\n"
printf "\e[1;90m                                                                                              v1.0\e[0m\n"
printf "\n"
printf "\e[1;93m              .:.:.\e[0m\e[1;77m The\e[0m\e[1;92m DFEncriptor\e[0m\e[1;77m Script coded by:\e[0m\e[1;92m GitHub@barhouum7 \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "      \e[101m\e[1;77m::                                                                          ::\e[0m\n"
printf "      \e[101m\e[1;77m::  Bash implementation of a script that can encrypt your files/Folders     ::\e[0m\n"
printf "      \e[101m\e[1;77m::                                                                          ::\e[0m\n"
printf "\n"

}


startMyGame() {
        printf "                   \e[1;90m     Welcome to my simple\e[0m\e[1;92m DFEncriptor\e[0m\e[1;90m script!    \e[0m\n"
        printf "\n"
        printf "\e[33m I am ready to\e[1;33m encrypt\e[0m\e[33m a\e[1;33m file/folder\e[0m\e[33m for you.\e[0m\n"
        printf "\e[33m Currently I have a limitation, Place me to the\e[0m\e[1;33m same folder\e[0m\e[33m, where a file to be encrypted is present \e[0m\n"
        printf "\e[1;31m NOTE:\e[0m\e[31m You need to place the script and file to be encrypted in the same folder. \e[0m\n"
        printf "\e[1;31m If you still haven't yet installed this library “pinentry-gui”, \n Please, Install it now by using yum or apt package.\e[0m\n\e[1;77m You need just to use one of these commands in another terminal:\e[0m\n\e[1;>
        printf "\e[1;77m Enter the Exact File Name with extension: \e[0m"
        read file;
        if [[ $file == *'.'* && -e ~/myBashProjects/myDFEncriptor/"$file" && ! -L ~/myBashProjects/myDFEncriptor/"$file" ]]; then
                gpg -c $file
                printf "\n\e[1;92m I have encrypted this file successfully...\e[0m\n"
        else
                printf "\e[1;31m Wrong Input! ERROR!\e[0m\n\e[77m gpg: can't open '$file': No such file or directory exist\n gpg: symmetric encryption of '$file' failed: No such file or directory\e[0m\n"
                exit 1
        fi
        printf "\e[1;31m Now I will be removing the original file. If you agree to doing that for you type\e[0m\e[1;96m “yes”\e[0m else \e[0m\e[1;96m “no”: \e[0m"
        read res;
        if [ $res == 'yes' ]; then
                rm -rf $file
                printf "\n\e[1;92m I have removed this file successfully...\e[0m\n"
        else
                printf "\n\e[1;92m I'm not allowed to delete this file.\e[0m\n"
        fi
}

clear
banner
startMyGame
