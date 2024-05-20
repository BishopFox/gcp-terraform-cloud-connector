# customer-workload-identity-federation

This repo provides terraform code for customers looking to implement Google Cloud connector support for the Bishop Fox Cosmos platform.

**For the most up to date instructions for how to setup a GCP Cloud Connector, please see [this documentation](https://cosmos.bishopfox.com/ac7ece39-3506-452c-befc-b355b9cf8c0f/documentation/cosmos-documentation#%23setting-up-cloud-connectors-for-google-cloud-platform-(gcp)) in the Cosmos Platform. A PDF of these instructions is exportable at the top of [this page](https://cosmos.bishopfox.com/ac7ece39-3506-452c-befc-b355b9cf8c0f/documentation/cosmos-documentation#%23cosmos-documentation) for team members who do not have access to the Cosmos Platform.
If you need additional support please reach out to your Customer Success Manager.**

## Legacy Repository Documentation

There is a dependency on Workload Identity Federation (WIF) being enabled inside the designated project and _values.tfvars_ or env variables must be filled out with values for the following variables related to said project:

- _projectID_
- _projectNumber_

Run the following command in order to retrieve the current project number:

```bash
gcloud projects describe $(gcloud config get-value core/project) --format=value\(projectNumber\)
```

**Bishop Fox** will provide the customer with the following variable values:

- AWS_accountID
- AWS_iamRole1
- AWS_iamRole2

Once the Workload Identity Pool, Workload Identity Pool AWS provider and [Connected] Service Account are provisioned you can add the service account as a principal with a _Custom Role_ to IAM permissions of one or more GCP projects, at the folder-level or at the organization-level.

_Custom Role_ permissions:

```bash
• compute.forwardingRules.get
• compute.forwardingRules.list
• compute.globalForwardingRules.get
• compute.globalForwardingRules.list
• compute.instances.get
• compute.instances.list
• compute.projects.get
• compute.regions.get
• compute.regions.list
• compute.zones.get
• compute.zones.list
• resourcemanager.projects.get
• resourcemanager.projects.list
• serviceusage.services.get
• serviceusage.services.list
• storage.buckets.getIamPolicy
• storage.buckets.list
```

The customer also needs to provide Bishop Fox with the WIF credentials file that is exported to gcp-wif-config.json during the terraform run.

Lastly, Bishop Fox requires the customer GCP Organization ID which can be retrieved using the following command:

```bash
gcloud organizations list
```

---

For more information about Workload Identity Federation best practices and requirements please see documenation [here](https://cloud.google.com/iam/docs/workload-identity-federation-with-other-clouds)
