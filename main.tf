resource "aws_vpc" "main" {
  count = length(var.vpc_cidr)
  cidr_block = var.vpc_cidr[count.index]
  tags = {
    Name = "test-${count.index}"
  }
} 

resource "aws_subnet" "public" {
  for_each  = var.public_cidr
  vpc_id    = aws_vpc.main[0].id
  cidr_block = each.value["cidr"]
  tags = each.value["tags"]
}

resource "aws_subnet" "private" {
  for_each  = var.private_cidr
  vpc_id    =  aws_vpc.main[0].id
  cidr_block = each.value["cidr"]
  tags = each.value["tags"]
}

output "public" {
  value       = [for s in resource.aws_subnet.public : s.id]
}

output "private" {
  value       = [for s in resource.aws_subnet.private : s.id]
}
