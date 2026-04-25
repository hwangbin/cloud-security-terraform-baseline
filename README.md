# Cloud Security Terraform Baseline


## Japanese Summary

このプロジェクトは、Terraformを用いてAWSのセキュリティベースラインをコード化し、GitHub Actionsによって構成の安全性を自動検証することを目的としています。

This project defines an AWS cloud security baseline using Terraform and validates infrastructure security configurations through automated checks in GitHub Actions.

The purpose of this repository is not only to provision infrastructure as code, but also to demonstrate how security controls can be embedded into the design phase, documented clearly, and verified before deployment.

## Project Goals

- Define a reusable AWS security baseline with Terraform
- Reduce misconfiguration risks before deployment
- Automate infrastructure security checks in GitHub Actions
- Document security design decisions for portfolio and learning purposes

## Scope

This repository focuses on baseline-level cloud security controls such as:

- limiting public exposure
- enforcing secure default configurations
- preparing infrastructure for logging and auditability
- validating Terraform code before deployment

## Key Features

- Terraform-based infrastructure as code
- Security-focused baseline design
- GitHub Actions-based automated validation
- Clear repository structure and documentation

## Tech Stack

- Terraform
- AWS
- GitHub Actions
- GitHub Codespaces

## Repository Structure

- `main.tf`: main infrastructure resources
- `providers.tf`: provider configuration
- `variables.tf`: input variables
- `outputs.tf`: output values
- `docs/`: architecture and supporting documentation
- `.github/workflows/`: CI workflows for validation and security checks

## Prerequisites

- Terraform >= 1.0
- AWS CLI configured, if you plan to test against AWS
- GitHub account and repository access
- GitHub Codespaces or local Terraform environment

## Workflow

1. Write or update Terraform configuration
2. Validate the code locally or in Codespaces
3. Push changes to GitHub
4. Run automated checks in GitHub Actions
5. Review results before applying any infrastructure changes

## Usage

### Initialize Terraform

```bash
terraform init