
# Linux Networking Fundamentals

## 1. Introduction
Computer networking allows devices and applications to communicate and exchange data. Cloud networking connects virtual machines, storage, applications, and users.

## 2. IP Addressing
An IP address identifies a network interface.

- IPv4 example: `192.168.1.10`
- Private IP addresses are used within internal networks.
- Public IP addresses can be reachable over the internet when routing and firewall rules permit.

Useful commands:
- `ip addr` — Display network interfaces and IP addresses.
- `ip route` — Display routing information.
- `hostname -I` — Display assigned IP addresses.

## 3. DNS
The Domain Name System (DNS) translates domain names into IP addresses.

Useful commands:
- `getent hosts example.com` — Check hostname resolution.
- `nslookup example.com` — Query DNS if the utility is installed.

## 4. Common Network Ports
- SSH: TCP 22 by default.
- DNS: TCP/UDP 53.
- HTTP: TCP 80.
- HTTPS: TCP 443.

A port identifies a service endpoint on a system. Services may use different ports when configured differently.

## 5. Firewalls and Security Groups
A firewall filters traffic according to rules. Cloud security groups control permitted network traffic for cloud resources.

Best practices:
- Allow only the ports needed by the application.
- Restrict SSH access to trusted IP addresses when practical.
- Avoid exposing databases directly to the public internet.
- Review inbound and outbound rules regularly.

## 6. Testing Connectivity
Useful commands:
- `ping example.com` — Test reachability when ICMP is permitted.
- `curl -I https://example.com` — Inspect HTTP response headers.
- `ss -tulpn` — Inspect listening sockets.
- `traceroute example.com` — Examine the network path if installed.

## 7. Troubleshooting Steps
1. Verify the IP address and subnet configuration.
2. Check the routing table.
3. Confirm DNS resolution.
4. Check that the target service is running and listening.
5. Review the local firewall and cloud security group rules.
6. Test connectivity again.

## 8. Conclusion
Understanding IP addressing, DNS, ports, firewalls, and connectivity testing is essential for managing Linux servers and troubleshooting cloud infrastructure.
