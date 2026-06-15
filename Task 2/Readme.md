# Task 8: Capture Network Traffic with Wireshark

## Objective
Capture and analyze local network traffic using Wireshark, specifically filtering and inspecting HTTP packets.

## Tools Used
* **Packet Analyzer:** Wireshark
* **Target Interface:** Local Windows Network Interface (Wi-Fi/Ethernet)

## Execution Steps
1. **Interface Selection:** Launched Wireshark and initialized a packet capture on the primary active network interface.
2. **Traffic Generation:** Navigated to a known non-secure website (`http://neverssl.com`) to intentionally generate plain-text HTTP traffic on the local network.
3. **Traffic Filtering:** Stopped the capture and applied the `http` display filter to isolate the relevant packets from background DNS, ARP, and TLS noise.

## Packet Analysis
Upon inspecting the filtered HTTP packets, the following lifecycle was observed:
* **HTTP GET Request:** The local client sent a `GET / HTTP/1.1` request to the destination server, requesting the root directory. The packet details reveal the Host, User-Agent, and Accept headers being sent in plain text.
* **HTTP 200 OK Response:** The destination server responded with an `HTTP/1.1 200 OK` status. 
* **Data Payload:** Because HTTP is unencrypted, the entire HTML payload of the website was visible within the `Line-based text data` section of the response packet. 

## Conclusion
This exercise successfully demonstrates the mechanics of packet sniffing on a local network. It also highlights the critical security vulnerability of using unencrypted HTTP, as an attacker on the same network could easily intercept and read sensitive data, session cookies, or credentials in plain text.

**Author:** Het Prajapati