output "jenkins_access_ip" {
  description = "Public IP for Jenkins"
  value       = module.jenkins_server.public_ip
}

output "jenkins_dns" {
  description = "Public DNS for Jenkins"
  value       = module.jenkins_server.public_dns
}