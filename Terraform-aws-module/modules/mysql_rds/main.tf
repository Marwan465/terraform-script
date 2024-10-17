
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "my-single-subnet-group"
  subnet_ids = var.subnet_id  

  tags = {
    Name = "My Single Subnet Group"
  }
}

resource "aws_db_instance" "mysql" {
 
  allocated_storage      = var.allocated_storage
  engine                 = "mysql"
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  publicly_accessible    = var.publicly_accessible
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids = [var.security_group_id]

  skip_final_snapshot = true

  tags = {
    Name = "mysql-database"
  }
}
