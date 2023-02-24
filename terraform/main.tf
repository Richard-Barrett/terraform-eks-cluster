###########################
#       EKS CLUSTER       #
###########################

provider "aws" {
  region = var.aws_region
  access_key = var.TFC_AWS_ACCESS_KEY_ID
  secret_key = var.TFC_AWS_SECRET_ACCESS_KEY
}
module "dataops-eks-cluster" {
  source     = "./modules/aws/eks"
}

data "aws_eks_cluster" "default" {
  depends_on = [module.dataops-eks-cluster]
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "default" {
  depends_on = [module.dataops-eks-cluster]
  name = var.cluster_name
}

provider "kubernetes" {
  depends_on = [module.dataops-eks-cluster]
  host                   = data.aws_eks_cluster.default.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.default.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.default.token
}
