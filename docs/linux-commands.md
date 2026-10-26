
# Linux Administration Commands

## 1. File and Directory Operations

- `pwd` — Display the current directory.
- `ls -la` — List files, including hidden files.
- `cd /path` — Change directory.
- `mkdir demo` — Create a directory.
- `touch notes.txt` — Create an empty file.
- `cp source.txt copy.txt` — Copy a file.
- `mv old.txt new.txt` — Rename or move a file.
- `cat notes.txt` — Display file contents.
- `grep "word" notes.txt` — Search for text.

## 2. File Permissions

- `ls -l` — View file permissions.
- `chmod 640 notes.txt` — Set owner read/write and group read permissions.
- `chown user:group notes.txt` — Change file ownership.

Use ownership commands only when authorized.

## 3. Users and Groups

- `whoami` — Display the current username.
- `id` — Display user and group IDs.
- `groups` — Display the groups of the current user.
- `sudo adduser student` — Create a user on a system you administer.

## 4. Process Management

- `ps aux` — List running processes.
- `top` — Monitor processes.
- `kill PID` — Request termination of a process.
- `df -h` — Check disk space.
- `free -h` — Check memory usage.

## 5. Services and SSH

- `systemctl status nginx` — Check Nginx service status.
- `sudo systemctl restart nginx` — Restart Nginx.
- `ssh user@server-ip` — Connect to a server over SSH.
- `exit` — Close the current shell session.

## 6. Security Best Practices

- Use strong passwords and SSH keys.
- Grant only necessary permissions.
- Use sudo carefully.
- Never publish passwords, private keys, or access tokens.
- Verify commands before running them on a production server.
