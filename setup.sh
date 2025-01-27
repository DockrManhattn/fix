#!/bin/bash

if [ ! -d "$HOME/.local/bin" ]; then
  echo "Creating ~/.local/bin directory"
  mkdir -p "$HOME/.local/bin"
else
  echo "~/.local/bin directory already exists"
fi

echo "Copying fix binary to ~/.local/bin"
cp ./fix "$HOME/.local/bin/"

echo "Changing permissions to make fix executable"
chmod +x "$HOME/.local/bin/fix"

if ! command -v xdotool &> /dev/null; then
  echo "xdotool not found, installing it now"
  sudo apt update && sudo apt install -y xdotool
else
  echo "xdotool is already installed"
fi

echo "Setup complete!"
