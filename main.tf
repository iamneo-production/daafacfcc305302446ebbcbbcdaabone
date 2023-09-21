provider "aws" {
  region = "ap-southeast-1" # Singapore region
  access_key = "AKIA5PND2T2MZLVR5G22"
  secret_key = "UTpBb3koqik2NXhbhj44yu34fvrQ4CxWrzjzBPK8"
}

resource "aws_instance" "example" {
  ami           = "ami-0dacd9d37849a9f38" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}