# EKS Cluster
resource "aws_eks_cluster" "employee-cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.public-ap-south-1a.id,
      aws_subnet.public-ap-south-1b.id
    ]
    endpoint_public_access = true
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.eks_cluster_AmazonEKSVPCResourceController
  ]
}

resource "aws_eks_addon" "eks_addons" {
  for_each = var.eks_addons
  cluster_name = aws_eks_cluster.employee-cluster.name
  addon_name   = each.value
}

output "eks_cluster_status" {
  value = aws_eks_cluster.employee-cluster.status
}
