# Task 2: Basic Firewall Configuration with UFW

## Objective
Set up a basic host-based firewall using UFW (Uncomplicated Firewall) on a Linux system to enforce network traffic rules (allowing SSH and blocking HTTP).

## Environment
* **Operating System:** Kali Linux
* **Tool:** UFW (Uncomplicated Firewall)

## Configuration Blueprint
The firewall rules were configured to implement a basic Zero-Trust perimeter for incoming connections:
1. **Default Incoming Policy:** Denied (Blocks all unauthorized external traffic).
2. **Default Outgoing Policy:** Allowed (Allows system updates and normal web browsing from the host).
3. **Rule 1 (SSH):** Explicitly allowed incoming traffic on port 22 to ensure remote management access.
4. **Rule 2 (HTTP):** Explicitly denied incoming traffic on port 80 to prevent unencrypted web server connections.

## Verification
Running `sudo ufw status verbose` confirms that the firewall is active and the rules are properly applied:
* To Action From
* -- ------ ----
* 22/tcp ALLOW IN Anywhere
* 80/tcp DENY IN Anywhere

**Author:** Het Prajapati
