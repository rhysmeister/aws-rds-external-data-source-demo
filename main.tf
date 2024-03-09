resource "aws_db_instance" "rds1" {
    identifier               = local.identifier
    allocated_storage        = local.allocated_storage
    engine                   = local.engine
    engine_version           = local.engine_version
    instance_class           = local.instance_class
    username                 = local.username
    password                 = local.password
    skip_final_snapshot      = local.skip_final_snapshot
    multi_az                 = local.multi_az
}