# Deploying the FHIR R4 CernerConnect Accelerator on Choreo

1. Create a component in Choreo by pointing the CernerConnect accelerator's [cerner-connect-fhir-r4-api-1.0.2](https://github.com/wso2/docker-open-healthcare-accelerators/tree/cerner-connect-fhir-r4-api-1.0.2) branch. For more details on creating components using Github, please refer [https://wso2.com/choreo/docs/develop-components/develop-components-with-git/](https://wso2.com/choreo/docs/develop-components/develop-components-with-git/).

2. Once the component is created, add the following environment variables. Please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container) to add environment variables.
    * BASE_URL - Cerner base URL.
    * TOKEN_URL - Cerner token endpoint.
    * CLIENT_ID - Client ID of the application registered with Cerner.
    * CLIENT_SECRET - Client secret of the application registered with Cerner.
    * SCOPES - Comma-seperated list of scopes.

3. Deploy and test the component.
