output "availability_zones" {
  value = data.aws_availability_zones.available_zones.names
}
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.eks_vpc.id
}
output "subnet1_id" {
  value = aws_subnet.pub_one.id
}

output "subnet2_id" {
  value = aws_subnet.pub_two.id
}

output "subnet3_id" {
  value = aws_subnet.priv_one.id
}

output "subnet4_id" {
  value = aws_subnet.priv_two.id
}
output "public_subnet_ids" {
  description = "IDs of the created public subnets"
  value       = [aws_subnet.pub_one.id, aws_subnet.pub_two.id]
}
output "private_subnet_ids" {
  description = "IDs of the created public subnets"
  value       = [aws_subnet.priv_one.id, aws_subnet.priv_two.id]
}