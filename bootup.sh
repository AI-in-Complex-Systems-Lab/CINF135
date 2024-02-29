
#!/bin/bash

# Create an update service
SCRIPT_NAME="git-pull-on-boot.sh"
SCRIPT_PATH="~/$SCRIPT_NAME"
RC_LOCAL_PATH="/etc/rc.local"
SERVICE_NAME="git-pull-on-boot"

cat <<EOT > "$SCRIPT_PATH"
#!/bin/bash

cd Desktop/CINF135
git reset --hard HEAD
git pull
EOT

chmod +x "$SCRIPT_PATH"
grep -qF "$SCRIPT_PATH" "$RC_LOCAL_PATH" || sed -i "/^exit 0/i $SCRIPT_PATH &" "$RC_LOCAL_PATH"
chmod +x "$RC_LOCAL_PATH"

systemctl restart "$SERVICE_NAME"