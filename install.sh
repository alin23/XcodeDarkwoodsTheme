#!/bin/bash

if [[ ! -f ~/Library/Fonts/iosevka-mayukai-codepro-regular.ttf ]]; then
    mkdir -p ~/Library/Fonts/

    if [[ ! -d /tmp/iosevka-mayukai-codepro-editor-v591 ]]; then
        echo Downloading Iosevka Mayukai Code Pro font to /tmp/iosevka.zip ...
        curl -L --progress-bar --output /tmp/iosevka.zip https://github.com/Iosevka-Mayukai/Iosevka-Mayukai/releases/download/v5.9.1/iosevka-mayukai-codepro-editor-v591.zip
    fi

    echo Installing Iosevka Mayukai Code Pro font to ~/Library/Fonts ...
    unzip -o /tmp/iosevka.zip -d /tmp/
    cp /tmp/iosevka-mayukai-codepro-editor-v591/ttf/*.ttf ~/Library/Fonts/
fi

echo Installing Darkwoods.xccolortheme to ~/Library/Developer/Xcode/UserData/FontAndColorThemes ...
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
cp Darkwoods.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/

echo Darkwoods theme installed!