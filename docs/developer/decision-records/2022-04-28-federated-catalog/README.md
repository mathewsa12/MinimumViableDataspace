# Federated Catalog

## Decision

Use Registration Service API to seed federated catalog of all participant EDC instances.

#### Registration Service 
The deployment pipeline deploys one instance of Registration Service in MVD set up. The Registration Service instance is configured to use json 
files as a data source and exposes the data via REST API.

#### Json files as data source

The deployment pipeline for each participant creates a file in common folder in a file share, with a prefix corresponding to each unique deployment. For example, when deploying participants `service` and `versicherung`, the files could be named:
- `280-service.json`
- `280-versicherung.json`

Here `280-` is an arbitrary prefix for one dataspace (in continuous delivery, one deployment).

Each file contains a serialized EDC `FederatedCacheNode` object, for example:

```json
{
  "name": "service",
  "supportedProtocols": [
    "ids-multipart"
  ],
  "url": "http://280-service-edc-mvd.eastus.azurecontainer.io:8282"
}

```

## Rationale

URLs of deployed EDC instances are only known after deployment in parallel Terraform runs.

Until [the federated catalog node list can be dynamically updated](https://github.com/eclipse-dataspaceconnector/DataSpaceConnector/issues/1230), this requires restarting the connectors after all catalog files have been stored.
