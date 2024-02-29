#!/bin/bash

# Create an update service
RC_LOCAL_PATH="/etc/rc.local"

touch "$RC_LOCAL_PATH"
chmod +x "$RC_LOCAL_PATH"
cat <<EOT > "$RC_LOCAL_PATH"
#!/bin/sh -e

cd Desktop/CINF135; git reset --hard HEAD; git pull
exit 0
EOT