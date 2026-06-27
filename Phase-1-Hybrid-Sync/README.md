# Phase 1: Identity Environment Preparation & Auditing
*Objective: Prepare the on-premisess Domain Controller for enterprise-grade identity governance.*

## Architectural Context
Due to environment constraints regarding cloud synchronization, this phase focuses on establishing a secure, audited foundatioanl identity structure.

## Technical Implementation
1. **Infrastructure:** Provisioned Windows Server 2022 as a Domain Controller.
2. **Structural Design:** Implemented Organizational Units (OUs) to support the principle of Least Privilege (e.g., separate OUs for Users, Computers, and Service Accounts).
3. **Environment Validation:** Verified local connectivity and DNS resolution, creating a secure baseline for future identity workflows.

## Implementation Steps
1. Configured Microsoft Entra Connect on the Domain Controller.
Verified synchronization of Organizational Units (OUs).

## Security Findings & Evidence
* Status: Completed
* Evidence: <img width="757" height="532" alt="image" src="https://github.com/user-attachments/assets/89fed397-38a4-41a1-87c7-71fdbac9f0f5" />
* Connectivity Check: <img width="974" height="509" alt="image" src="https://github.com/user-attachments/assets/662eb15a-777e-4858-bad3-aa018f3079c4" />

