data "aws_ami" "ami_id" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-kernel-6.1-x86_64"]
  }
}
output "ami_id" {
    value = data.aws_ami.ami_id.id
  
}