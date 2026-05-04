#!/bin/bash

URL="https://filmypass.com/"

mkdir -p "$HOME/.local/bin"
mkdir -p "$HOME/.config/autostart"

cat > "$HOME/.local/bin/open-site-loop.sh" <<EOF
#!/bin/bash
while true
do
    firefox "$URL"
    sleep 5
done
EOF

chmod +x "$HOME/.local/bin/open-site-loop.sh"

cat > "$HOME/.config/autostart/open-site-loop.desktop" <<EOF
[Desktop Entry]
Type=Application
Name=Open Site Loop
Exec=$HOME/.local/bin/open-site-loop.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF

chmod +x "$HOME/.local/bin/open-site-loop.sh"

echo "Installed. It will start automatically on next login."
