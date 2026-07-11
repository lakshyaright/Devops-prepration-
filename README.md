Azure Network Architecture Revision
Overview

This project demonstrates the revised Azure infrastructure and networking architecture designed following Azure networking best practices. The environment has been reorganized to improve security, scalability, and management by separating workloads into dedicated subnets and implementing secure access methods.

Architecture Summary

The revised environment includes:

Resource Group (RG) created to host all Azure resources.
Virtual Network (VNet): 10.51.0.0/16
Three dedicated subnets:
Frontend Subnet: 10.51.1.0/24
Backend Subnet: 10.51.2.0/24
Bastion Subnet: 10.51.3.0/24
Virtual Machines deployed in Frontend and Backend subnets.
Azure Bastion (Jump Server) for secure VM administration.
NAT Gateway configured for outbound internet connectivity.
Public IP assigned only where required.
Resources Created
✅ Resource Group
✅ Virtual Network (VNet)
✅ Frontend Subnet
✅ Backend Subnet
✅ Azure Bastion Subnet
✅ Virtual Machines
✅ Azure Bastion Service
✅ NAT Gateway
✅ Public IP

Internet
    │
Public IP
    │
───────────────
 Azure VNet
10.51.0.0/16
───────────────
│
├── Frontend Subnet (10.51.1.0/24)
│     ├── LG_VM1
│     └── LG_VM2
│
├── Backend Subnet (10.51.2.0/24)
│     ├── LG_VM1
│     └── LG_VM2
│
└── Bastion Subnet (10.51.3.0/24)
      └── Azure Bastion

IP Addressing
      | Component       | Address Space |
| --------------- | ------------- |
| VNet            | 10.51.0.0/16  |
| Frontend Subnet | 10.51.1.0/24  |
| Backend Subnet  | 10.51.2.0/24  |
| Bastion Subnet  | 10.51.3.0/24  |


Technologies Used
Microsoft Azure
Azure Virtual Network
Azure Virtual Machines
Azure Bastion
Azure NAT Gateway
Azure Public IP
Network Security Groups (if applicable)
