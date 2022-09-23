#!/bin/sh

if ! test -f ~/Library/Fonts/iosevka-mayukai-codepro-regular.ttf; then
    mkdir -p ~/Library/Fonts/

    echo Downloading Iosevka Mayukai Code Pro font...
    curl -L --progress-bar --output /tmp/iosevka.zip https://github.com/Iosevka-Mayukai/Iosevka-Mayukai/releases/download/v5.9.1/iosevka-mayukai-codepro-editor-v591.zip
    unzip /tmp/iosevka.zip -d ~/Library/Fonts/
fi

mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp Darkwoods.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

echo Darkwoods theme installed!