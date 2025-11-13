# Rancher Access Management | Overview & Workflow

## Purpose

- Provide a clear, automated, and secure approach to managing Rancher access control.
- Ensure all team members understand the structure and workflow for access management.
- Support multi-organization and multi-environment deployments with modular configuration.
- Integrate secret management for enhanced security.

---
## Architecture Overview

The `access-mgmt` directory manages access control and permissions for Rancher clusters using Terraform. The structure is modular and environment-driven, supporting multiple organizations and deployment stages.

### Main Components

- **Terraform Root Files**  
  - `main.tf`, `provider.tf`, `variables.tf`, `outputs.tf`, `locals.tf`: Core configuration, provider setup, variable and output definitions.
  - `access_control.tf`: Defines access control rules and policies.
  - `roles.tf`: Manages roles and role bindings for Rancher.
  - `clusters-components.tf`: Manages cluster-level components and their access.
  - `vault-secrets.tf`: Integrates secret management via Vault.

- **variable.d**  
  - Contains environment-specific configuration for each organization (`lumi`, `starix`) and environment (`local`, `prod`, `sit`, `kbt`).
  - Each environment has its own `backend.conf` and `variables.tfvars` for state and variable management.

- **CI/CD**  
  - `.gitlab-ci.yml`: Automates validation, planning, and deployment of access control changes.

---
## Directory Structure

### Top-Level Files

- **.gitlab-ci.yml**  
  Defines CI/CD pipeline for automated validation, planning, and deployment of Terraform changes.

- **main.tf**  
  Entry point for Terraform configuration, includes module and resource definitions.

- **provider.tf**  
  Specifies providers (Rancher, Vault, etc.) required for resource management.

- **variables.tf**  
  Declares input variables for the Terraform project.

- **locals.tf**  
  Defines local values for use throughout the configuration.

- **outputs.tf**  
  (Not present, but typically used for outputting resource attributes.)

- **access_control.tf**  
  Manages access control rules and policies for Rancher clusters.

- **roles.tf**  
  Defines roles and role bindings for Rancher users and groups.

- **clusters-components.tf**  
  Manages cluster-level components and their access permissions.

- **vault-secrets.tf**  
  Integrates Vault for secure secret management and distribution.

### variable.d/

Contains organization and environment-specific configuration:

- **lumi/**  
  - **local/**:  
    - `backend.conf`: Backend configuration for state management.  
    - `variables.tfvars`: Variable values for the local environment.

- **starix/**  
  - **kbt/**, **local/**, **prod/**, **sit/**:  
    - Each contains `backend.conf` and `variables.tfvars` for respective environments.

#### Example: `starix/prod/variables.tfvars`

- **cluster_org** and **cluster_env**:  
  Identify the organization and environment.

- **clusters_ac**:  
  Maps clusters to projects, each with roles and group memberships for fine-grained access control.

- **user_groups**:  
  Defines user groups, their admin status, and members.

- **vault_secrets**:  
  Specifies Vault mount and path for Rancher credentials.

## How It Works

1. **Environment Selection**  
   - The appropriate configuration is loaded from `variable.d` based on organization and environment.

2. **Provider Initialization**  
   - Providers for Rancher and Vault are initialized via `provider.tf`.

3. **Access Control & Roles**  
   - Access rules and roles are defined in `access_control.tf` and `roles.tf`, using data from `variables.tfvars`.

4. **Cluster Components**  
   - Cluster-level resources and their access are managed in `clusters-components.tf`.

5. **Secret Management**  
   - Vault integration in `vault-secrets.tf` ensures secrets are securely managed and distributed.

6. **CI/CD Automation**  
   - `.gitlab-ci.yml` automates the workflow: validate, plan, apply, and manage state.

## Workflow Chart

```mermaid
graph TD
  A[Load environment variables] --> B[Initialize providers]
  B --> C[Define access control & roles]
  C --> D[Manage cluster components]
  D --> E[Integrate Vault secrets]
  E --> F[CI/CD pipeline: validate, plan, apply]
```
