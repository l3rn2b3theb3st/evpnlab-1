MIT License

Copyright (c) 2025 Quyen Pham

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
====
# 🌐 Ansible Network Automation Project

Welcome to my Ansible project!  
This repository contains playbooks, template and examples for automating network configuration Cisco EVPN VXLAN Fabric 

---

## 🎯 Purpose

I created this project to:
- Simplify repetitive network configuration tasks  
- Demonstrate Infrastructure as Code (IaC) concepts for network engineers  
- Share practical automation examples with the community  
- Encourage collaboration and learning in open network automation
- Do something fun 
---

## ⚙️ What’s Inside
.
├── README.md
├── ansible.cfg
├── backups
├── files
│   ├── nxos_summary.md
│   └── raw_banner.cfg
├── group_vars
│   ├── all.yml
│   ├── leaf.yml
│   ├── nxos.yml
│   └── spine.yml
├── host_vars
│   ├── L1.yml
│   ├── L2.yml
│   ├── L3.yml
│   ├── S1.yml
│   └── S2.yml
├── inventory.ini
├── ip_list.txt
├── pingall.sh
├── task
│   ├── 00_adjust_tcam.yml
│   ├── 01_system_init.yml
│   ├── 02_underlay_interface.yml
│   ├── 03_underlay_ospf.yml
│   ├── 04_underlay_pim.yml
│   ├── 05_underlay_bgp.yml
│   ├── 06_overlay_l2_bridge.yml
│   ├── 07_overlay_edge_port.yml
│   ├── 08_overlay_l3_routing.yml
│   ├── 10_run_backup.yml
│   ├── show_command.yml
│   └── show_inventory.yml
├── templates
│   ├── bgp_config.j2
│   ├── edge_port_config.j2
│   ├── evpn_nve_config.j2
│   ├── interface_config.j2
│   ├── overlay_routing.j2
│   ├── pim_config.j2
│   └── verify_command.yml
└── tmp
- **Playbooks/** — Example automation tasks
- **Template/** — Modular jinja2 template  for reusability  
- **Inventories/** — Sample inventory for lab or production  
- **Backup/** — Folder for backup configuration files
- **tmp/** — Folder for Temporary files
- **Files/** — Folder for Other kind of files
- **Group_vars/** and **host_vars/** — Parameterized variables for different environments

---

## 🚀 Getting Started

### Prerequisites
- Ansible core 2.17.12 
- jinja version 3.0.3 
- Python 3.10.12  
- Simulation like Cisco CML or EVE

### Before running
- Set hosts files for L1 --> L3 and S1 --> S2
- Check connection with ./pingall.sh
- Setup username & keypair, make sure you can ssh to network devices


