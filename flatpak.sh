#!/bin/sh

flatpaks=(
    "com.spotify.Client"
    "com.mastermindzh.tidal-hifi"
    "io.github.shiftey.Desktop"
)

# ---------------------------------------------------------------------------

for flatpak in "${flatpaks[@]}"; do
    echo "----------------------------------"
    echo "Installing flatpak: ${flatpak}"
    echo "----------------------------------"
    flatpak install flathub ${flatpak}
done

# ---------------------------------------------------------------------------

# Installing Gnome ExtensionManager without using Gnome would be funny.
if [[ "$1" == "--gnome" ]]; then
    echo "----------------------------------"
    echo "Installing Gnome specific flatpak: Gnome ExtensionManager"
    echo "----------------------------------"
    flatpak install flathub com.mattjakeman.ExtensionManager
fi

# ---------------------------------------------------------------------------

# Install Threema Desktop Beta
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --from https://releases.threema.ch/flatpak/threema-desktop/ch.threema.threema-desktop.flatpakref
flatpak override ch.threema.threema-desktop --filesystem=host
