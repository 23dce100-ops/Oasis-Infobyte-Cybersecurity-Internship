# Task 1: Basic Network Scanning with Nmap

## Objective
Perform a network scan to identify open ports and services using Nmap, document the findings, and explain the significance of each open port.

## Target Information
* **Target:** Localhost Windows Machine
* **IP Address:** `127.0.0.1`
* **Command Executed:** `nmap -sV 127.0.0.1`

## Scan Results and Analysis
The service version scan (`-sV`) successfully identified multiple open TCP ports on the local machine. Below is a breakdown of the active services and their significance:

### 1. Port 135 - Microsoft Windows RPC (msrpc)
* **Significance:** This is the Microsoft Remote Procedure Call (RPC) Endpoint Mapper. It is a fundamental Windows service used for client-server communication within a network, allowing applications to request services from programs on other computers. It is commonly open on Windows machines but should be heavily restricted from external network access to prevent exploitation.

### 2. Port 445 - Microsoft-DS (SMB)
* **Significance:** Port 445 runs Server Message Block (SMB) directly over TCP. This protocol is used for file sharing, printer sharing, and accessing remote Windows services. While essential for local network sharing, exposing SMB to the internet is highly dangerous (historically targeted by exploits like EternalBlue).

### 3. Port 1042 - Unknown Service (Local Web Server)
* **Significance:** While Nmap flagged this as `afrog?`, the detailed HTTP fingerprint (returning `Cannot GET /` along with cross-origin headers) strongly indicates a local development web server is running on this port, likely Node.js/Express.js. Developers frequently use non-standard high ports like this for local testing environments.

### 4. Port 1043 - ssl/boinc?
* **Significance:** Identified as potentially SSL or BOINC (Berkeley Open Infrastructure for Network Computing). High ports like this are dynamically allocated or used by specific background applications running locally on the user's machine.

### 5. Port 3306 - MySQL (Version 8.0.44)
* **Significance:** This port is running a MySQL relational database server. It is standard for local web development stacks (like XAMPP or custom WAMP setups) to host databases on this default port. Securing this requires strong root credentials and ensuring it is bound only to localhost.

### 6. Port 7778 - interwise?
* **Significance:** Another non-standard high port utilized by a background application or service. 

## Conclusion
The scan successfully enumerated the local Windows environment, identifying standard core Windows services (SMB, RPC) alongside developer-specific infrastructure like a MySQL database and a local HTTP development server. 

**Author:** Het Prajapati