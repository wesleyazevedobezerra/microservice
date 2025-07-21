region = "sa-east-1"
subnet_ids = [
  "${aws_subnet.public_subnets[0].id}",
  "${aws_subnet.public_subnets[1].id}",
  "${aws_subnet.public_subnets[2].id}"
]
