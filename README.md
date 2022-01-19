## tf-cvmfs-stratum1-refdata-GARR
Simple Terraform recipe to deploy a VM with attached volume over Openstack cloud to host [Galaxy](https://galaxyproject.org/) CVMFS Stratum1 with data.galaxyproject.org repostiory.\
CVMFS can be then configured with the [Galaxy cvmfs role](https://github.com/galaxyproject/ansible-cvmfs).

### Dependencies
- Terraform v1.1.2
- Openstack tenant with floating ips

### How to deploy
1. Fill the `variables.tf`  
2. Source the openstack rc file
3. Run `terraform apply` to create the infrastructure
4. Run `terraform destroy` to delete the infrastructure
