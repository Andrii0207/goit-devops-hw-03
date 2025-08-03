output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnets_ids" {
  description = "List of public subnets"
  value       = aws_subnet.public[*].id
}   

output "private_subnets_ids" {
  description = "List of private subnets"
  value       = aws_subnet.private[*].id
}

output "aws_internet_gateway_ids" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

# output "aws_nat_gateway" {
#   description = "The ID of the NAT Gateway"
#   value       = aws_nat_gateway.main.id
# }