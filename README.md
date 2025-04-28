# Web API Infrastructure Deployment

This project provides infrastructure as code for deploying a web API on Azure using Bicep and GitHub Actions.

## Overview

The `web-api-infra-deployment` project automates the deployment of Azure resources required for hosting a web API. It utilizes Bicep templates to define the infrastructure and GitHub Actions for continuous deployment.

## Project Structure

- **.github/workflows/deploy.yml**: Contains the GitHub Actions workflow for deploying the infrastructure.
- **infra/azureInfraDeployment.bicep**: Bicep template that defines the Azure resources, including the App Service Plan and Web App.
- **README.md**: Documentation for the project.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd web-api-infra-deployment
   ```

2. **Configure Azure Credentials**:
   Ensure you have the necessary Azure credentials set up in your GitHub repository secrets for the deployment to work.

3. **Modify Parameters**:
   Update the parameters in `infra/azureInfraDeployment.bicep` as needed, including the App Service Plan name, Web App name, repository URL, and branch.

## Usage Guidelines

- Push changes to the main branch to trigger the deployment workflow defined in `.github/workflows/deploy.yml`.
- Monitor the Actions tab in your GitHub repository for the status of the deployment.

## License

This project is licensed under the MIT License.