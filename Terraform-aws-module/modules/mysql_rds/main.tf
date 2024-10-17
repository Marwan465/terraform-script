resource "aws_db_instance" "mysql" {
  allocated_storage      = var.allocated_storage
  engine                 = "mysql"
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  publicly_accessible    = var.publicly_accessible
  vpc_security_group_ids = [var.security_group_id]

  skip_final_snapshot = true

  tags = {
    Name = "mysql-database"
  }
}
