output "instance_ram" {
  value = data.external.rds.result.MB
}