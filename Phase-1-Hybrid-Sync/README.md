# Phase 1: Identity Environment Preparation & Auditing
*Objective: Prepare the on-premisess Domain Controller for enterprise-grade identity governance.*

## Architectural Context
Due to environment constraints regarding cloud synchronization, this phase focuses on establishing a secure, audited foundatioanl identity structure.

## Technical Implementation
1. **Infrastructure:** Provisioned Windows Server 2022 as a Domain Controller.
2. **Structural Design:** Implemented Organizational Units (OUs) to support the principle of Least Privilege (e.g., separate OUs for Users, Computers, and Service Accounts).
3. **Environment Validation:** Verified local connectivity and DNS resolution, creating a secure baseline for future identity workflows.

## Automated Provisioning Results
The PowerShell script `Provision-Users.ps1` successfully created users across the designated OUs, ensuring adherence to the organizational hierarchy.
<div align="center">

### Automated Provisioning Results
| Department | Verification Status |
| :--- | :--- |
| IT | Verified |
| Staff-Users | Verified |
| Workstations | Verified |

<br>

  <img width="500" alt="OU IT-Admins" src="https://github.com/user-attachments/assets/bbba5c05-4caa-4f89-9c66-49547fe941a7">
  <p><em>Figure 1: User accounts provisioned successfully into Departmental OUs.</em></p>
<br>
  <img width="500" alt="OU Staff-Users" src="https://github.com/user-attachments/assets/0836617d-61ce-4458-96b3-92baf50dfe48">
  <p><em>Figure 2: User accounts provisioned successfully into Departmental OUs.</em></p>
</div>

## Active Directory OU Hierarchy
This structure enables granular security managemnet and policy delegation.
I accessed the ADUC using the MMC snap-in
<div align="center">
  <img width="500" alt="Active Directory OU Structure" src="https://github.com/user-attachments/assets/e716920d-1c41-4632-9a31-159492d8fcbb">
  <p><em>Figure: Organization of departmental OUs within the corporate hierarchy.</em></p>
</div>

## Security Findings & Evidence
* Status: Completed
* Evidence:
  <div align="center">
    <img width="600" alt="DNS Resolution Test" src="https://github.com/user-attachments/assets/89fed397-38a4-41a1-87c7-71fdbac9f0f5">
    <p><em>Figure 1: DNS Resolution Baseline Verification</em></p>

    <br>

  <img width="600" alt="Connectivity Test" src="https://github.com/user-attachments/assets/662eb15a-777e-4858-bad3-aa018f3079c4">
  <p><em>Figure 2: External Connectivity Validation (Port 443)</em></p>
  </div>

