
#!/usr/bin/env bash
set -euo pipefail

if [[ "$EUID" -ne 0 ]]; then
  echo "Run with sudo on an authorized Ubuntu/Debian server."
  exit 1
fi

if ! command -v apt-get >/dev/null 2>&1; then
  echo "This script supports Ubuntu/Debian systems using apt."
  exit 1
fi

apt-get update
apt-get install -y nginx
systemctl enable --now nginx
systemctl --no-pager status nginx
curl --fail --silent --show-error -I http://localhost

echo "Nginx installation and local HTTP test completed."
