# AWS EC2 Instance Terraform module

## Usage

```hcl
provider "aws" {
  region = "us-east-2"
  profile = "project"
}

...

module "ec2_instance" {
  source  = "github.com/diveliastudio/module-ec2"
  project_name = "project"
  project_environment = "develop"
  ami_instance = "ami-0fb653ca2d3203ac1"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project_name | Project's name | `string` | `""` | yes |
| project_environment | Project environment | `string` | `""` | yes |
| ami_instance | ID of AMI to use for the instance | `string` | `""` | yes |
| instance_type | The type of instance to start | `string` | `"t2.micro"` | no |
| sg_ports_in | Port list for ingress rules | `list(number)` | `[22, 80, 443]` | no |
| sg_ports_out | Port list for egress rules | `list(number)` | `[0]` | no |

## Outputs
| Name | Description|
|------|:--------:|
| security_group_id | The ID of the security group |


## Resources that return

| Extension | Folder | Description |
|------|-------------|:--------:|
| .ip | ./ssh | Plain text file with the elastic IP address |
| .pem | ./ssh | Private key to access the server |
| .pub | ./ssh | Server public key |
