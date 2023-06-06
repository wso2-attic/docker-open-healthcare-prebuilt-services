# Deploying the FHIR R4 EpicConnect Accelerator on Choreo

1. Create a component in Choreo by pointing the EpicConnect accelerator's [epic-connect-fhir-r4-api-1.0.0](https://github.com/wso2/docker-open-healthcare-accelerators/tree/epic-connect-fhir-r4-api-1.0.0) branch. For more details on creating components using Github, please refer [https://wso2.com/choreo/docs/develop-components/develop-components-with-git/](https://wso2.com/choreo/docs/develop-components/develop-components-with-git/).

2. Once the component is created, upload the private key that will be used to sign the JWT for authentication. Please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-a-file-mount-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-a-file-mount-to-your-container) for uploading the key.

3. Add the following environment variables. Please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container) to add environment variables.
    * BASE_URL - Epic base URL.
    * TOKEN_URL - Epic token endpoint.
    * CLIENT_ID - Client ID of the application registered with Epic.
    * KEY_FILE - Path to private key that will be used to sign the authentication JWT. The path specified when uploading the key in Step 2.
4. Deploy and test the component.
