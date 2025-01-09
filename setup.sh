#!/bin/bash

echo "Welcome to RickMap Installation!"

echo "The system is updating..."
sudo apt update -y

if ! command -v go &> /dev/null; then
    echo "Golang is Establishing..."
    sudo apt install -y golang
else
    echo "Golang is already installed."
fi

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="rickmap"
MAIN_FILE="main.go"

if [ ! -f "$MAIN_FILE" ]; then
    echo "Error: main.go file could not be found. Please run the script from the correct directory."
    exit 1
fi

echo "RickMap tool is being compiled..."
go build -o "$SCRIPT_NAME" "$MAIN_FILE"

sudo mv "$SCRIPT_NAME" "$INSTALL_DIR/"

echo "Installation complete!"
echo "You can now use the command ‘rickmap <ip> ...’"
