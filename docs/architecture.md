# Architecture Overview

## Summary

This project provisions a secure S3 baseline in AWS using Terraform.

The deployed baseline includes:
- an S3 bucket
- bucket-level public access block
- bucket versioning
- default server-side encryption

## Components

### 1. Terraform
Terraform is used to define the AWS infrastructure as code.

### 2. GitHub Codespaces
Development is performed in GitHub Codespaces to support an all-cloud workflow.

### 3. GitHub Actions
GitHub Actions automatically validates the Terraform configuration on push and pull request.

### 4. AWS S3
AWS S3 is used as the initial target resource for the cloud security baseline.

## Security Controls

### Public Access Block
The bucket is configured to block public ACLs and public bucket policies.

### Versioning
Bucket versioning is enabled to improve recoverability and change tracking.

### Default Encryption
Server-side encryption is enabled by default using AES256.

## Validation

The deployed configuration was verified using the AWS CLI after `terraform apply`.

Validated items:
- public access block enabled
- default encryption enabled
- versioning enabled

## Notes

This project is intended for portfolio and learning purposes.
It focuses on secure defaults and deployment validation rather than production-scale architecture.