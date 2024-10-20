resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.gateway_name
  }
}

# Attach the Internet Gateway to the specified VPC
resource "aws_route_table" "this" {
  vpc_id = var.vpc_id
   tags = {
    Name = var.route_table_name
  }
}

resource "aws_route" "default" {
  
  route_table_id         = aws_route_table.this.id
  
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
resource "aws_route_table_association" "subnet_assoc" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.this.id
}