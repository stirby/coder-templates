---
name: Develop in Oracle Cloud Infrastructure (Ephemeral, Persistent Home)
description: Develop in Ubuntu on Oracle Cloud Instances
tags: [cloud, oci]
---

# oci-ubuntu-ephemeral
This template allows developers to provision ephemeral workspaces on Oracle Cloud. The user's home directory at `/home/<user>/`  persists as an [oci_core_volume](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_volume.html) for each instance, all other data is lost. Software can be added through a startup script in the cloud config file. 

## Authentication
This template uses [API Key Authentication](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformproviderconfiguration.htm#APIKeyAuth); other methods can be found in the OCI docs. Before connecting, the following Terraform variables need to be set:
Variable name | Description
------------- | -----------
`tenancy_ocid` | [Tenancy Identifier](https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#five)
`user_ocid` |  [User ID](https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#five)
`fingerprint` | [RSA key fingerprint](https://docs.oracle.com/en-us/iaas/developer-tutorials/tutorials/tf-provider/01-summary.htm#ariaid-title3)
`private_key_path` | Path to RSA key in the Coder environment

The instance's image is automatically set to Ubuntu 22.04, the OCID of which is determined by region. 
