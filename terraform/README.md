---
title: Terraform
date: 16:34 02/24/2023
---

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.3.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.52.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.48.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dataops-eks-cluster"></a> [dataops-eks-cluster](#module\_dataops-eks-cluster) | ./modules/aws/eks | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_TFC_AWS_ACCESS_KEY_ID"></a> [TFC\_AWS\_ACCESS\_KEY\_ID](#input\_TFC\_AWS\_ACCESS\_KEY\_ID) | AWS ACCESS KEY | `string` | n/a | yes |
| <a name="input_TFC_AWS_SECRET_ACCESS_KEY"></a> [TFC\_AWS\_SECRET\_ACCESS\_KEY](#input\_TFC\_AWS\_SECRET\_ACCESS\_KEY) | AWS ACCESS KEY | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Default AWS Region where resources are deployed | `string` | `"us-west-1"` | no |
| <a name="input_cluster_enabled_log_types"></a> [cluster\_enabled\_log\_types](#input\_cluster\_enabled\_log\_types) | EKS Cluster Log Types | `list` | <pre>[<br>  "api",<br>  "audit",<br>  "authenticator",<br>  "controllerManager",<br>  "scheduler"<br>]</pre> | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Kubernetes Cluster Name for AWS EKS Cluster | `string` | `"dataops"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Kubernetes <major>.<minor> version to use for the EKS cluster (i.e.: 1.21). | `string` | `"1.24"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where the cluster and its nodes will be provisioned. | `string` | `"vpc-07bce6da0cade60db"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->