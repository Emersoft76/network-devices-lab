# 🧰 Projeto 2 – Administração de Dispositivos de Rede / Network Device Administration

Este projeto apresenta o gerenciamento de dispositivos como switches, firewalls e servidores de VPN, com práticas em ambientes físicos e simulados, usando ferramentas como pfSense, Linux Bridge, OpenVPN e VLANs.

This project demonstrates the management of devices such as switches, firewalls, and VPN servers in physical and simulated environments, using tools like pfSense, Linux Bridge, OpenVPN, and VLANs.

---

## 📁 Estrutura do projeto / Project structure

- 📄 [`scripts/vlan_config.sh`](./scripts/vlan_config.sh) – Simula VLANs via bridge no Linux  
- 📝 [`scripts/vlan_config.md`](./scripts/vlan_config.md) – Explicação técnica da configuração  

- 📄 [`scripts/pfsense_rules.txt`](./scripts/pfsense_rules.txt) – Exportação das regras de firewall no pfSense  
- 📝 [`scripts/pfsense_rules.md`](./scripts/pfsense_rules.md) – Explicação das regras aplicadas  

- 📄 [`scripts/openvpn_s2s.sh`](./scripts/openvpn_s2s.sh) – Configuração de VPN site-to-site  
- 📝 [`scripts/openvpn_s2s.md`](./scripts/openvpn_s2s.md) – Explicação do túnel VPN entre redes distintas  

- 📝 [`docs/device_overview.md`](./docs/device_overview.md) – Visão geral dos dispositivos de rede utilizados  
- 📝 [`diagrams/ascii_topology.md`](./diagrams/ascii_topology.md) – Topologia ASCII com Firewalls, Switches e VPN

---

## 🛠️ Tecnologias / Technologies used

- pfSense (Firewall e Gateway)
- Switches gerenciáveis Cisco/3Com (simulados)
- OpenVPN (VPN site-to-site)
- Linux Bridge + VLANs
- Ambientes virtualizados (VirtualBox, GNS3)

---

## 🚀 Como executar / How to run

1. Configure os scripts em uma VM Ubuntu Server (ou pfSense GUI)
2. Execute os scripts com permissões root (`sudo`)
3. Use a documentação para acompanhar os testes e validar as regras

---

## ✅ Próximos passos sugeridos / Suggested next steps

- [Projeto 3: Monitoramento e Logs com Zabbix e VPN](../network-monitoring-lab/README.md)  
- [Projeto 4: Segurança com IDS/IPS e Fail2Ban](../network-security-lab/README.md)

---

## 📄 Licença / License

Este projeto está licenciado sob a [MIT License](../LICENSE).  
This project is licensed under the [MIT License](../LICENSE).
