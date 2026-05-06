output "argocd_access_ip" {
  description = "Public IP for ArgoCD-Server"
  value       = module.argocd_server.public_ip
}

output "argocd_dns" {
  description = "Public DNS for ArgoCD-Server"
  value       = module.argocd_server.public_dns
}