
# Linux Server Deployment Guide

## Objective
Deploy and test an Nginx web server on an Ubuntu Linux virtual machine.

## Prerequisites
- An Ubuntu Linux VM that you are authorized to administer.
- Administrative privileges.
- Internet access for installing packages.
- SSH access if using a remote VM.

## Step 1: Update Packages
```bash
sudo apt update
```

## Step 2: Install Nginx
```bash
sudo apt install nginx
```

## Step 3: Start the Web Server
```bash
sudo systemctl enable --now nginx
```

## Step 4: Check the Service
```bash
systemctl status nginx
```

## Step 5: Test the Web Server
```bash
curl -I http://localhost
```

A successful HTTP response indicates that Nginx is responding locally.

## Networking and Security
- Permit HTTP traffic on port 80 only when required.
- Configure HTTPS on port 443 if TLS is enabled.
- Restrict SSH access to trusted addresses where possible.
- Review firewall and cloud security group rules.
- Never publish passwords, private keys, or cloud credentials.

## Troubleshooting
- Check service status with `systemctl status nginx`.
- Inspect logs using `journalctl -u nginx`.
- Verify IP addressing and routing.
- Review firewall rules if remote access fails.

## Evidence
Record the actual service status and HTTP test result after deployment. Do not claim success until the server has been tested.

## Cleanup
Stop or remove test resources when finished to avoid unnecessary cloud charges.
