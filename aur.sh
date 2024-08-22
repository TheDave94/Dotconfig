#!/bin/sh

aur_apps=(
   "protonmail-bridge"
    "protonmail-desktop"
    "beeper-latest-bin"
    "onlyoffice-bin"
    "brave-bin"
    "visual-studio-code-bin"
    "intellij-idea-ultimate-edition"
    "brother-hll2340dw"
    "localsend"
    "wps-office"
    "mullvad-browser-bin"
    "betterbird-de-bin"
)

# ---------------------------------------------------------------------------

aur_sdks=(
)

# ---------------------------------------------------------------------------

aur_fonts=()

# ---------------------------------------------------------------------------

for aur_app in "${aur_apps[@]}"; do
    echo "----------------------------------"
    echo "Installing AUR-app: ${aur_app}"
    echo "----------------------------------"
    yay -S --noconfirm ${aur_app}
done

# ---------------------------------------------------------------------------

for aur_sdk in "${aur_sdks[@]}"; do
    echo "----------------------------------"
    echo "Installing AUR-app: ${aur_sdk}"
    echo "----------------------------------"
    yay -S --noconfirm ${aur_sdk}
done

# ---------------------------------------------------------------------------

for aur_font in "${aur_fonts[@]}"; do
    echo "----------------------------------"
    echo "Installing AUR-app: ${aur_font}"
    echo "----------------------------------"
    yay -S --noconfirm ${aur_font}
done

# ---------------------------------------------------------------------------
