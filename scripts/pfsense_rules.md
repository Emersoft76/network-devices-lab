# 🔐 pfSense Firewall Rules – Explicação Técnica / Technical Explanation

---

## 📝 Explicação geral / General overview

Este documento descreve as principais regras de firewall configuradas no pfSense durante o Projeto 2 – Administração de Dispositivos de Rede.

This document describes the main firewall rules configured on pfSense during Project 2 – Network Device Administration.

As regras foram registradas no arquivo [`pfsense_rules.txt`](./pfsense_rules.txt), com base em um ambiente de laboratório realista.

The rules are listed in [`pfsense_rules.txt`](./pfsense_rules.txt), based on a realistic lab environment.

---

## 📋 Regras aplicadas / Applied rules

| # | Regra / Rule                                    | Função / Purpose                                                  |
|---|--------------------------------------------------|--------------------------------------------------------------------|
| 1 | `PASS LAN net * * * * *`                         | Libera todo tráfego da LAN para a Internet                        |
| 2 | `BLOCK * * * * * *`                              | Bloqueia todo tráfego não permitido anteriormente                 |
| 3 | `PASS OpenVPN net * * 192.168.10.0/24 * *`       | Permite acesso dos clientes VPN à rede local                      |
| 4 | `PASS LAN net * * 192.168.1.1 443 *`             | Libera acesso à interface Web do pfSense (HTTPS)                  |
| 5 | `PASS VLAN10 * * 192.168.10.100 22 *`            | Permite acesso via SSH do VLAN10 para o servidor 192.168.10.100   |

---

## 🧠 Detalhamento técnico / Rule breakdown

### 🔹 Regra 1 – Acesso da LAN à Internet
Permite que dispositivos na rede LAN acessem destinos externos via NAT.

Allows LAN devices to reach the Internet using NAT.

---

### 🔹 Regra 2 – Bloqueio padrão
Garante que qualquer tráfego não explicitamente permitido seja bloqueado.

Ensures any non-explicitly allowed traffic is denied.

---

### 🔹 Regra 3 – VPN → LAN
Clientes VPN autenticados podem acessar serviços da rede interna (LAN).

VPN clients can access internal LAN services.

---

### 🔹 Regra 4 – LAN → pfSense GUI
Libera acesso à interface Web de gerenciamento do pfSense (HTTPS, porta 443).

Allows LAN access to pfSense WebGUI via HTTPS (port 443).

---

### 🔹 Regra 5 – VLAN10 → Servidor interno
Dispositivos da VLAN 10 podem acessar um servidor via SSH na rede interna.

Devices in VLAN10 can SSH into an internal server.

---

## 🛡️ Considerações adicionais / Additional notes

- Todas as regras foram aplicadas em interfaces distintas com segmentação lógica (LAN, OpenVPN, VLAN10).  
- Regras de NAT foram configuradas automaticamente para tráfego de saída via interface WAN.

All rules were applied to separate interfaces with logical segmentation.  
NAT rules were automatically configured for outbound traffic through the WAN interface.

---

## ✅ Próximo passo sugerido / Suggested next step

- [openvpn_s2s.md](./openvpn_s2s.md): Configure o túnel VPN entre duas redes para integração com esta política.  
Configure the VPN tunnel between two networks to integrate with this firewall policy.
