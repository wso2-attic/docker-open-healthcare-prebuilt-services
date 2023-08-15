# Deploying the FHIR R4 AUBase Patient API Accelerator on Choreo

1. Create a component in Choreo by pointing the AUBase Patient API accelerator's [aubase-patient-fhir-r4-api-1.0.2](https://github.com/wso2/docker-open-healthcare-accelerators/tree/aubase-patient-fhir-r4-api-1.0.2) branch. For more details on creating components using Github, please refer [https://wso2.com/choreo/docs/develop-components/develop-components-with-git/](https://wso2.com/choreo/docs/develop-components/develop-components-with-git/).

2. Once the component is created, add the following environment variables. Please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container) to add environment variables.
    * SOURCE_SYSTEM_URL - URL of the source system from which the data is retrieved.
    * AUTHZ_SERVICE_URL - URL of the authorization service (Optional).
    * PRIVILEDGED_CLAIM_URL - The claim that has privilege to retrieve all patient data (Optional).

3. Deploy and test the component.
