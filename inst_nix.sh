#!/bin/bash

sudo apt-get install -y apt-transport-https
curl -s https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [signed-by=/usr/share/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" | sudo tee /etc/apt/sources.list.d/dart_stable.list
sudo apt-get update
sudo apt-get install -y dart-sdk-dev
dart pub get
