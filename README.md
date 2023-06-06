# Deploying the FHIR R4 AthenaConnect Accelerator on Choreo

1. Create a component in Choreo by pointing the AthenaConnect accelerator's [athena-connect-fhir-r4-api-1.0.0](https://github.com/wso2/docker-open-healthcare-accelerators/tree/athena-connect-fhir-r4-api-1.0.0) branch. For more details on creating components using Github, please refer [https://wso2.com/choreo/docs/develop-components/develop-components-with-git/](https://wso2.com/choreo/docs/develop-components/develop-components-with-git/).

2. Once the component is created, add the following environment variables. Please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container) to add environment variables.
    * BASE_URL - AthenaHealth base URL.
    * TOKEN_URL - AthenaHealth token endpoint.
    * CLIENT_ID - Client ID of the application registered with AthenaHealth.
    * CLIENT_SECRET - Client secret of the application registered with AthenaHealth.
    * SCOPES - Comma-seperated list of scopes.

3. Deploy and test the component.
