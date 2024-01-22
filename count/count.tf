resource "aws_instance" "countofinstances" {
    count = 1
    ami = var.myami
    instance_type = var.instance_names[count.index] == "MongoDB" ? "t3.micro" : "t2.micro"

    tags = {
      Name= var.instance_names[count.index]
    }
}