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

echo "Setup complete!"
