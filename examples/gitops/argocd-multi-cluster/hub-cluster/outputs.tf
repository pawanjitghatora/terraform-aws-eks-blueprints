output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = "aws eks update-kubeconfig --name ${module.eks.cluster_name} --region ${local.region} --profile ${local.hub_profile}"
}
output "argocd_login" {
  description = "ArgoCD CLI login command"
  value       = "argocd login argocd.${local.argocd_domain} --username admin"
}
