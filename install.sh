#!/bin/bash

echo "cloning..."
git clone https://github.com/mauro-balades/sf.git

echo "changing current directory"
cd sf

echo "copying shell file to /usr/local/bin/ (using sudo)..."
sudo cp sf /usr/local/bin/sf

echo "creating config folder..."
mkdir -p ~/.config/sf/

echo "copying sf configuration file..."
cp -f "./example/config.sh" ~/.config/sf/

echo "cleaning..."
cd ..
sudo rm -f sf

echo "FINISHED!"
