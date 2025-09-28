# Documentation

  ### Deliverables
- [Terraform Module](https://github.com/Marwan465/terraform-script/tree/main/Terraform-aws-module)
- [Github Action yml file for backend repo](https://github.com/Marwan465/ObelionBackend/blob/11.x/.github/workflows/deploy.yml)
- [Github Action yml file for frontend repo](https://github.com/Marwan465/Obelion-Frontend/blob/master/.github/workflows/deploy.yml)
- [Migration Plan](https://github.com/Marwan465/terraform-script/blob/main/README.md#migration-plan)

### Goals 
- provision backend machine with 1 core - 1 GB RAM - 8 GB disk with public ip (ubuntu 22.04)
- Provision frontend machine with 1 core - 1 GB RAM - 8 GB disk with public ip (ubuntu 22.04
- Provision mysql community version 8 rds with the lowest plan(with no internet exposure)
- Configure alerting on the machines for the CPU utilization to be sent to your mail if CPU utilization is above 50%
- any update on main branch in the frontend repo must initiate a build step then a deployment step to Ubuntu 22.04 machine (the build step can be any command “ex #echo building…..”)
- any update on the main branch in the laravel php app repo must initiate an automatic deployment that accesses an ubuntu 22.04 server machine to execute a shell script that does the following.
   - pull the new changes
   - run "php artisan migrate" to apply schema changes automatically
- Migrate our infrastructure and assets from AWS to Azure




### Migration Plan
1. #### Infrastructure Assessment 
  We need to assess the infrastructure we have on AWS and recreate it on Azure but since we already provisioned our AWS infrastructure using terraform modules we can easily create the same infrastructure on azure using the same module we will have to change the provider and the resource types according to our new cloud provider Azure in this case.

2. #### Database Migration
  We can use Azure native migration tool Azure Database Migration Service (DMS) to carry out this migration
Start by using DMS to identify potential issues during migration (schema, compatibility, etc.).
Configure DMS to perform an online migration for minimal downtime.
Set up continuous sync during the migration process to ensure the target database is constantly updated.
Once the migration sync is complete stop the traffic to the old database and routing it to the new one.

3. #### Application Assets
  Use AzCopy to carry out this step by copying directly from an S3 bucket to Azure Blob.

4. #### Github Actions or CI/CD pipelines
Make sure we change our CI/CD pipelines to build and deploy to our new cloud provider (Azure)
  




