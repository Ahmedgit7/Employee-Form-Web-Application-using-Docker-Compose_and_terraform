resource "aws_eks_node_group" "demo" {
  cluster_name    = aws_eks_cluster.employee-cluster.name
  node_group_name = "demo-node-group"
  node_role_arn   = aws_iam_role.eks_node.arn
  subnet_ids      = [
    aws_subnet.public-ap-south-1a.id,
    aws_subnet.public-ap-south-1b.id
  ]
  instance_types = [var.node_instance_type]

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_size
    min_size     = var.min_size
  }

  depends_on = [
    aws_eks_cluster.employee-cluster,
    aws_iam_role_policy_attachment.eks_node_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_node_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks_node_AmazonEC2ContainerRegistryReadOnly
  ]
}

output "eks_node_group_status" {
  value = aws_eks_node_group.demo.status
}
