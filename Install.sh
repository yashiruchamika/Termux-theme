#!/bin/bash

# Function to install packages
install_packages() {
    echo "Installing neofetch and espeek..."

    # Check for package manager
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt install -y neofetch espeek
    elif command -v yum &> /dev/null; then
        sudo yum install -y neofetch espeek
    elif command -v pacman &> /dev/null; then
        sudo pacman -Syu neofetch espeek --noconfirm
    else
        echo "Unsupported package manager. Please install neofetch and espeek manually."
        exit 1
    fi

    echo "Installation completed successfully!"
}

# Execute the function
install_packages

#clear
clear

#run tool

bash update-packages3.sh
