## customer-workload-identity-federation

This repo provides terraform code for customers looking to implement Google Cloud connector support for the Bishop Fox Cosmos platform.

There is a dependency on Workload Identity Federation (WIF) being enabled inside the designated project and _values.tfvars_ or env variables must be filled out with values for the following variables:

- _projectID_
- _projectNumber_

Run the following command in order to retrive the current project number:

```bash
gcloud projects describe $(gcloud config get-value core/project) --format=value\(projectNumber\)
```

**Bishop Fox** will provide the customer with the following variable values:

- AWS_accountID
- AWS_iamRole1
- AWS_iamRole2

Once the Workload Identity Pool, Workload Identity Pool AWS provider and [Connected] Service Account are provisioned you can add the service account as a principal with _Compute Viewer role_ to IAM permissions of one or more GCP projects, at the folder-level or at the organization-level.

The customer also needs to provide Bishop Fox with the WIF credentials file that is exported using the following command:

```bash
gcloud iam workload-identity-pools create-cred-config \
projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/POOL_ID/providers/PROVIDER_ID \
    --service-account=SERVICE_ACCOUNT_EMAIL \
    --aws \
    --enable-imdsv2 \
    --output-file=FILEPATH.json

Replace the following values:
• PROJECT_NUMBER: The project number of the project that contains the workload identity pool
• POOL_ID: The ID of the workload identity pool, ex. bfidentitypool
• PROVIDER_ID: The ID of the workload identity pool provider, ex. bfawsprovider
• SERVICE_ACCOUNT_EMAIL: The email address of the service account
• FILEPATH: The file to save configuration to
```

Lastly, Bishop Fox requires the customer GCP Organization ID which can be retrieved using the following command:

```bash
gcloud organizations list
```

---

For more information about Workload Identity Federation best practices and requirements please see:
https://cloud.google.com/iam/docs/workload-identity-federation-with-other-clouds
