#!/bin/bash
#region –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– consts
MAC_INIT_VERSION="100.100.101";
#endregion
#region –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– utility
function logo() {
cat << EOF
#######################################################
##  Wellcome to                   _         _  _     ##
##   _ __ ___    __ _   ___      (_) _ __  (_)| |_   ##
##  | '_ \` _ \  / _\` | / __|     | || '_ \ | || __|  ##
##  | | | | | || (_| || (__      | || | | || || |_   ##
##  |_| |_| |_| \__,_| \___|     |_||_| |_||_| \__|  ##
##                                                   ##
EOF
echo "##                                     v${MAC_INIT_VERSION}  ##";
echo "#######################################################";
};
#endregion
logo;
exit;



/System/Applications/Utilities/Terminal.app

#region ––––––––––––––––––––––––––––––––––––––––––––––––––––––––– logo
function logdo() {
cat << EOF
#######################################################
##  Wellcome to                   _         _  _     ##
##   _ __ ___    __ _   ___      (_) _ __  (_)| |_   ##
##  | '_ \` _ \  / _\` | / __|     | || '_ \ | || __|  ##
##  | | | | | || (_| || (__      | || | | || || |_   ##
##  |_| |_| |_| \__,_| \___|     |_||_| |_||_| \__|  ##
##                                                   ##
##                                     v100.100.100  ##
#######################################################
EOF
};
export -f logo;
#endregion


#region ––––––––––––––––––––––––––––––––––––––––––––––––––––––––– prerequisites
function prerequisites() {
    clear;
    logo;
    echo; 
    echo "Let's starting with minimal requirement for work..."
    echo;
    echo " - XCode full installation from Apple Store"
    echo " - Administrator of computer"
    echo
    echo "press any key for continue...";
    read;
    exit;
}

#region ––––––––––––––––––––––––––––––––––––––––––––––––––––––––– main
function main() {
    clear;
    logo;
    echo;
    echo -n "Do you want start configuration? (N/y): ";
    read -r READVAL;
    READVAL="$(echo "$READVAL" | tr -d ' \t\r' | tr 'yes' 'YES' )";
    if [ ! "$READVAL" = "Y" ] && [ ! "$READVAL" = "YES" ]; then
        echo "Bye, configuration not stated!";
        echo;
        exit;
    fi;
    prerequisites;
};
main;
#endregion
                                               