# Deploying the FHIR R4 Metadata API Accelerator on Choreo

1. Create a component in Choreo by pointing the Matadata API accelerator's [metadata-fhir-r4-api-1.0.0](https://github.com/wso2/docker-open-healthcare-accelerators/tree/metadata-fhir-r4-api-1.0.0) branch. For more details on creating components using Github, please refer [https://wso2.com/choreo/docs/develop-components/develop-components-with-git/](https://wso2.com/choreo/docs/develop-components/develop-components-with-git/).

2. Once the component is created, upload a configuration file with the content similar to the following. The upload path of the file should be specified as `/home/ballerina/Config.toml`. For instructions to upload the file, please refer [https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-a-file-mount-to-your-container](https://wso2.com/choreo/docs/devops-and-ci-cd/manage-configurations-and-secrets/#apply-a-file-mount-to-your-container).

```
## server related configurables
[server_info]
version = "1.2.0"
name = "WSO2 Open Healthcare FHIR"
title = "FHIR Server"
status = "active"
experimental = true
date = "2022-11-24"
kind = "instance"
fhir_version = "4.0.1"
format = ["json", "xml"]
patch_format = ["application/json-patch+json"]
implementation_url = "<FHIR_BASE_URL>"
implementation_description = "WSO2 Open Healthcare FHIR"
interactions = ["search-system"]

## server security related configurables
[security]
cors = false
token_url = "<TOKEN_URL>"
revoke_url = "<REVOKE_URL>"
authorize_url = "<AUTHORIZE_URL>"
```

3. Upload another file that describes the supported FHIR resources similar to the following. The mount path should be `/home/ballerina/resources/resources.json`.

```json
[
  {
    "type": "Patient",
    "versioning": "versioned",
    "conditionalCreate": false,
    "conditionalRead": "not-supported",
    "conditionalUpdate": false,
    "conditionalDelete": "not-supported",
    "referencePolicies": [
      "resolves"
    ],
    "searchRevIncludes": [
      "null"
    ],
    "supportedProfiles": [
      "http://hl7.org/fhir/StructureDefinition/Patient"
    ],
    "interactions": [
      "create",
      "delete",
      "update",
      "history-type",
      "search-type",
      "vread",
      "read"
    ],
    "searchParamString": [
      "_lastUpdated",
      "_security",
      "_tag",
      "_source",
      "_profile"
    ],
    "searchParamNumber": [
      "_id"
    ]
  }
]
```

4. Deploy and test the component.