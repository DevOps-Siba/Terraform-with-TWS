output ec2_public_ips {
    value = aws_instance.my_instance.*.public_ip
}

output "ec2_private_ips" {
    value = aws_instance.my_instance.*.private_ip   # * use for find public and private IP for multiple instance count=3
}

#Use this output block if we are usinng for each in resource block for creating multiple instances
output "ec2_public_ip" {
    value = [for key, instance in aws_instance.my_instance : key => instance.public_ip]
}
