# terraform-script

  ### Deliverables
- [Terraform Module](https://github.com/Marwan465/terraform-script/tree/main/Terraform-aws-module)
- [Github Action yml file for backend repo](https://github.com/Marwan465/ObelionBackend/blob/11.x/.github/workflows/deploy.yml)
- [Github Action yml file for frontend repo](https://github.com/Marwan465/Obelion-Frontend/blob/master/.github/workflows/deploy.yml)

### Goals 
- provision backend machine with 1 core - 1 GB RAM - 8 GB disk with public ip (ubuntu 22.04)
- Provision frontend machine with 1 core - 1 GB RAM - 8 GB disk with public ip (ubuntu 22.04
- Provision mysql community version 8 rds with the lowest plan(with no internet exposure)
- Configure alerting on the machines for the CPU utilization to be sent to your mail if CPU utilization is above 50%




