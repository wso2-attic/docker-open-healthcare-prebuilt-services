# Deploying the FHIR R4 Patient API Accelerator on Choreo

1. Create a component in Choreo by pointing the Patient API accelerator's [patient-fhir-r4-api-1.0.0](https://github.com/wso2/docker-open-healthcare-accelerators/tree/patient-fhir-r4-api-1.0.0) branch. For more details on creating components using Github, please refer [https://wso2.com/choreo/docs/develop-components/develop-components-with-git/](https://wso2.com/choreo/docs/develop-components/develop-components-with-git/).

2. Once the component is created, add the following environment variable. Please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-environment-variables-to-your-container) to add environment variables.
    * SOURCE_SYSTEM - URL of the source system from which the data is retrieved.

3. Deploy and test the component.
