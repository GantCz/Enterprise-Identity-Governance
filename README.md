# Enterprise Identity & Access Management (IAM)
*Showcasing Hybrid Identity Governance between On-Premise AD and Cloud Identity.*

## Project Overview
This project documents the architectural design, implementation, and hardening of a hybrid identity environment. 
*Note: Due to student account restrictions preventing external cloud integration, this project focuses on robust On-Premise Identity Lifecycle Management and Administrative Auditing as a functional equivalent to hybrid ccloud-synchronization workflows.*
## Core Competencies
**On-Premises:** Active Directory Domain Services (AD AS), Group Policy Objects (GPOs), Organizational Units (OUs).
**Cloud:** Azure/Entra ID Connect, Role-based Access Control (RBAC), Conditional Access Policies.

## 🚀 Workflow Projects
1. **[Phase 1] Hybrid Synchronization:** Implementing Entra Connect to synchronize on-prem identities to the cloud.
2. **[Phase 2] Policy Enforcement:** Creating "Least Privilege" GPOs and cloud-based Conditional Access policies.
3. [Phase 3] Threat Detection:** Auditing failed login attempts and unauthorized privilege escalation.
