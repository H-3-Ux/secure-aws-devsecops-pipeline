# Secure AWS DevSecOps Pipeline

A hands-on DevSecOps project demonstrating automated Python application testing, Docker containerization, security scanning, and AWS authentication using GitHub Actions.

## Technology Stack

- Python 3.12
- Flask
- Pytest
- Docker
- GitHub Actions
- Gitleaks
- Trivy
- AWS IAM
- AWS OpenID Connect (OIDC)

## Application

The project contains a Python Flask REST API with two endpoints:

- `/` - Application welcome response
- `/health` - Application health check

## Continuous Integration

The GitHub Actions CI workflow automatically:

1. Checks out the repository.
2. Configures Python 3.12.
3. Installs application dependencies.
4. Runs automated tests using Pytest.

## Security Scanning

The security workflow includes:

### Gitleaks
Detects potentially exposed secrets in source code and repository history.

### Trivy
Builds the Docker image and scans for HIGH and CRITICAL vulnerabilities.

The Trivy scan uses `--exit-code 1` to fail the workflow when matching vulnerabilities are detected, excluding unfixed findings.

## AWS Authentication

An AWS IAM OpenID Connect identity provider and a GitHub Actions IAM role have been configured.

The OIDC authentication workflow is currently failing with an AWS role-assumption authorization error. Troubleshooting remains pending.

No permanent AWS access keys are stored in the GitHub Actions workflow.

## Current Project Status

| Component | Status |
|---|---|
| Flask REST API | Implemented |
| Dockerfile | Implemented |
| Automated Python CI | Passing |
| Gitleaks security workflow | Passing |
| Trivy container security workflow | Passing |
| AWS OIDC provider and IAM role | Created |
| GitHub Actions AWS authentication | Not yet working |
| AWS application deployment | Not completed |

## Run Locally

Install dependencies:

    pip install -r requirements.txt

Start the application:

    python app/main.py

Check application health:

    curl http://localhost:5000/health

Run automated tests:

    python -m pytest tests/ -v

## Security Approach

This project demonstrates security checks integrated into CI, automated vulnerability detection, and the use of short-lived AWS credentials through OIDC as the intended authentication model.

## Future Improvements

- Resolve AWS OIDC role-assumption authorization.
- Push Docker images to Amazon ECR.
- Deploy the application to Amazon ECS Fargate.
- Provision AWS infrastructure using Terraform.
- Add CloudWatch monitoring and deployment notifications.
