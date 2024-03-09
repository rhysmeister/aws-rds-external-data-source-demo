data "external" "rds" {
  program = ["bash", "${path.module}/bash/rds-ram-mb.sh"]

  query = {
    instance_type = join(".", [split(".", aws_db_instance.rds1.instance_class)[1], split(".", aws_db_instance.rds1.instance_class)[2]])
  }

  depends_on = [aws_db_instance.rds1]
}