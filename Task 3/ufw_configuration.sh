#!/bin/bash
# Script to automate basic firewall configuration using UFW
# Objective: Allow SSH traffic and deny HTTP traffic

echo "[*] Updating package repositories..."
sudo apt update -y

echo "[*] Installing Uncomplicated Firewall (UFW)..."
sudo apt install ufw -y

echo "[*] Setting default firewall policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "[*] Configuring rules: Allowing SSH (Port 22)..."
sudo ufw allow ssh

echo "[*] Configuring rules: Denying HTTP (Port 80)..."
sudo ufw deny http

echo "[*] Enabling UFW..."
echo "y" | sudo ufw enable

echo "[+] Firewall configuration complete! Current Status:"
sudo ufw status verbose
