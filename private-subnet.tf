resource "aws_subnet" "private" {
  count                   = length(slice(local.az_names, 0, 2))
  vpc_id                  = aws_vpc.my_app.id
  cidr_block              = cidrsubnet(var.vpc_cidr, 8, count.index + length(local.az_names))
  availability_zone       = local.az_names[count.index]
  map_public_ip_on_launch = "true"

  tags = {
    Name = "privatesubnet-${count.index + 1}"
  }
}
