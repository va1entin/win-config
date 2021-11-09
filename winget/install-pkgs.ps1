echo "Installing base packages..."

winget install `
7zip.7zip `
Google.Chrome `
Mozilla.Firefox `
Notepad++.Notepad++ `
VideoLAN.VLC

$confirmation = Read-Host "Install work packages? [y/n]"
if ($confirmation -eq 'y') {
    echo "Installing work packages..."
    winget install `
    Apple.iTunes `
    GIMP.GIMP `
    JGraph.Draw `
    KeePassXCTeam.KeePassXC `
    LibreOffice.LibreOffice `
    Microsoft.VisualStudioCode `
    Microsoft.WindowsTerminal `
} else {
    echo "Skipping work packages."
}

$confirmation = Read-Host "Install private packages? [y/n]"
if ($confirmation -eq 'y') {
    echo "Installing private packages..."
    winget install `
    ElectronicArts.EADesktop `
    GOG.Galaxy `
    Valve.Steam
} else {
    echo "Skipping private packages."
}
