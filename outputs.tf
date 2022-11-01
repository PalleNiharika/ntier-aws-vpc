output "vpc_id" {
  value= aws_vpc.ntier_vpc.id
}

output "vpc_cidrblock" {
  value= aws_vpc.ntier_vpc.cidr_block
}

output "subnet_count" {
  value = length(var.name_subnet)
} 