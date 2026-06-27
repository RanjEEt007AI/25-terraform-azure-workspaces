# 🚀 Terraform Azure Workspaces

This project demonstrates how to use **Terraform Workspaces** in Azure to manage multiple
environments such as **dev**, **test**, and **prod** using the same Terraform code.

---

## 📌 Project Overview

Terraform Workspaces help to:

✅ Manage multiple environments with a single codebase
✅ Maintain separate state files
✅ Reduce code duplication
✅ Improve infrastructure organization
✅ Simplify environment management

---

## 📁 Project Structure

```text
terraform-azure-workspaces-simple/
│── provider.tf
│── main.tf
│── .gitignore
```

---

## ⚙️ Resources Created

This project creates:

* Resource Group
* Storage Account
* Separate infrastructure for each workspace
* Separate Terraform state for each environment

---

## ▶️ Commands to Run

Initialize Terraform:

```bash
terraform init
```

Check available workspaces:

```bash
terraform workspace list
```

Create a new workspace:

```bash
terraform workspace new dev
```

Switch workspace:

```bash
terraform workspace select dev
```

Deploy resources:

```bash
terraform apply -auto-approve
```

Create another workspace:

```bash
terraform workspace new prod
terraform workspace select prod
terraform apply -auto-approve
```

Destroy resources:

```bash
terraform destroy -auto-approve
```

---

## 📊 Example Output

### Dev Workspace

```text
Resource Group : rg-dev
Storage Account : storagedev12345
```

### Prod Workspace

```text
Resource Group : rg-prod
Storage Account : storageprod12345
```

---

## 🔄 Workflow

```text
Terraform Code
      ↓
Workspace Selection
      ↓
Dev / Test / Prod
      ↓
Separate State Files
      ↓
Azure Resources
```

---

## 🛠 Technologies Used

* Terraform
* Microsoft Azure
* Azure Resource Group
* Azure Storage Account

---

## 👨‍💻 Author

Ranjeet Kumar

⭐ If you found this project useful, don't forget to star the repository.
