# 🧭 Topologia ASCII – VPN + Firewall + Switches
```                                                                        
   [ Internet ]
       |
 +-----------+
 |   pfSense |
 +-----------+
 | WAN | LAN |
      |           +---------------+
      +-----------| Switch VLAN 10 |
                  +--------+------+
                           |
                     [ Ubuntu VPN ]
                      (OpenVPN S2S)
```
