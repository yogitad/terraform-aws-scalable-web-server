# AWS Scalable Web Server Cluster module

This folder contains Terraform  module for deploying a cluster of web servers (using EC2 and Auto Scaling) and a load balancer (using ELB) in an Amazon Web Services (AWS) account.

This implementation is as per explanation provided in https://www.oreilly.com/library/view/terraform-up-and/9781491977071/ch04.html

## Usage

```
module "scalable_webserver_cluster" {
  source = "yogitad/terraform-modules/scalable_webserver_cluster"

  cluster_name           = "your-cluster-name"
  db_remote_state_bucket = "s3-bucket-name"
  db_remote_state_key    = "s3-path"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 10
}
```
