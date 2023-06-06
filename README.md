# Deploying the FHIR R4 SmartConfig API Accelerator on Choreo

1. Create a component in Choreo by pointing the SmartConfig API accelerator's [smart-config-fhir-r4-api-1.0.0](https://github.com/wso2/docker-open-healthcare-accelerators/tree/smart-config-fhir-r4-api-1.0.0) branch. For more details on creating components using Github, please refer [https://wso2.com/choreo/docs/develop-components/develop-components-with-git/](https://wso2.com/choreo/docs/develop-components/develop-components-with-git/).

2. Once the component is created, upload a configuration file with the content similar to the following. The upload path of the file should be specified as `/home/ballerina/Config.toml`. For instructions to upload the file, please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-a-file-mount-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-a-file-mount-to-your-container).

```
## smart-configuration
[smart_configuration]
authorization_endpoint = "<AUTHORIZATION_ENDPOINT>"
token_endpoint = "<TOKEN_ENDPOINT>"
introspection_endpoint = "<INTROSPECTION_ENDPOINT>"
code_challenge_methods_supported = ["S256"]
grant_types_supported = ["authorization_code"]
revocation_endpoint = "<REVOCATION_ENDPOINT>"
token_endpoint_auth_methods_supported = ["private_key_jwt", "client_secret_basic"]
token_endpoint_auth_signing_alg_values_supported = ["RS384","ES384"]
scopes_supported = [
    "openid",
    "fhirUser",
    "launch",
    "launch/patient",
    "patient/*.cruds",
    "user/*.cruds",
    "offline_access",
]
response_types_supported = [
    "code",
    "id_token",
    "token",
    "device",
    "id_token token"
]
capabilities = [
    "launch-ehr",
    "launch-standalone",
    "client-public",
    "client-confidential-symmetric",
    "client-confidential-asymmetric",
    "context-passthrough-banner",
    "context-passthrough-style",
    "context-ehr-patient",
    "context-ehr-encounter",
    "context-standalone-patient",
    "context-standalone-encounter",
    "permission-offline",
    "permission-patient",
    "permission-user",
    "permission-v2",
    "authorize-post"
]
```

3. Deploy and test the component.
