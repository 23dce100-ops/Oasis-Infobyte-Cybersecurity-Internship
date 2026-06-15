# Task 4: Research Report on Common Network Security Threats

## 1. Introduction
Network security threats are malicious actions aimed at compromising the confidentiality, integrity, or availability of a computer network and its data. Understanding these threats is the first step in designing resilient architectures capable of withstanding modern cyberattacks.

## 2. Denial of Service (DoS) and Distributed Denial of Service (DDoS)
### How it Works
A DoS attack seeks to make a machine or network resource unavailable to its intended users by temporarily or indefinitely disrupting services. A DDoS attack achieves this on a massive scale by utilizing a botnet—a large network of compromised, remote-controlled devices—to flood the target with overwhelming internet traffic (e.g., HTTP requests, SYN floods, or UDP amplification).

### Impact
* **Availability Loss:** Legitimate users cannot access websites, APIs, or network services.
* **Financial Damage:** Lost revenue for e-commerce sites and costs associated with incident response.

### Real-World Example
**The 2018 GitHub DDoS Attack:** GitHub was hit by the largest DDoS attack recorded at the time, peaking at 1.35 Terabits per second. The attackers used a Memcached amplification attack, spoofing GitHub's IP address to send small requests to Memcached servers, which responded to GitHub with massively amplified data packets.

### Mitigation
* **Traffic Scrubbing / CDN:** Utilizing services like Cloudflare or Akamai to absorb and filter malicious traffic before it reaches the origin server.
* **Rate Limiting:** Restricting the number of requests a single IP can make within a specific timeframe.

## 3. Man-in-the-Middle (MITM) Attacks
### How it Works
In a MITM attack, an adversary secretly intercepts and potentially alters communications between two parties who believe they are communicating directly with each other. This is frequently executed on unsecured public Wi-Fi networks using packet sniffers or by executing ARP spoofing on a local area network (LAN).

### Impact
* **Data Theft:** Interception of plaintext credentials, session cookies, and sensitive personal information.
* **Integrity Compromise:** Attackers can alter the data in transit, such as changing the destination account number in a financial transaction.

### Real-World Example
**Superfish Adware (2015):** Lenovo shipped laptops pre-installed with "Superfish" software, which installed a self-signed root certificate. This allowed the software to intercept encrypted HTTPS traffic to inject ads, effectively acting as a massive MITM vulnerability that malicious actors could easily exploit.

### Mitigation
* **Strong Encryption (HTTPS/TLS):** Ensuring all traffic is encrypted end-to-end so intercepted data remains unreadable.
* **VPN Usage:** Utilizing a Virtual Private Network to create a secure, encrypted tunnel on untrusted networks.
* **Dynamic ARP Inspection (DAI):** Configuring network switches to reject malicious ARP packets.

## 4. Spoofing Attacks
### How it Works
Spoofing occurs when a malicious party impersonates another device or user on a network to launch attacks, bypass access controls, or steal data.
* **IP Spoofing:** Altering the source IP address in a packet header to hide the attacker's identity or reflect traffic (as seen in DDoS amplification).
* **DNS Spoofing (DNS Cache Poisoning):** Corrupting a Domain Name System resolver's cache so that users are redirected to a malicious IP address instead of the legitimate site.

### Impact
* **Phishing & Malware:** Users are unknowingly redirected to fraudulent sites designed to steal credentials or distribute malware.
* **Bypassing Network Filters:** Spoofing a trusted internal IP can sometimes bypass rudimentary firewall rules.

### Mitigation
* **Packet Filtering:** Implementing ingress and egress filtering on firewalls to drop packets with illogical source IP addresses (e.g., an external packet claiming to have an internal IP).
* **DNSSEC:** Implementing Domain Name System Security Extensions to digitally sign DNS records, ensuring the destination IP provided by the resolver is authentic and untampered.

## 5. Conclusion
Network security is a constant arms race. Defending against DoS, MITM, and spoofing requires a defense-in-depth approach that combines cryptographic protocols (like TLS and DNSSEC), robust network hardware configurations, and active traffic monitoring.

**Author:** Het Prajapati
