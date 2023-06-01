 # 3-GCP-Kubernetes-Modules

  ## Below are the details of different files in this folder and it's usage.

* ### [datasources.tf](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/datasources.tf)
   * This file is used for defining different data sources.
* ### [asm.tf](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/asm.tf)
   * This file helps in registering the cluster to Anthos Service Mesh   
* ### [network.tf](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/network.tf)
   * This file creates a VPC network and subnets in Google Cloud Platform. It also configures the default network tier and enables OS login for projects.   
* ### [private_cluster.tf](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/private_cluster.tf)
   * This file creates private cluster with all the configurations needed for the project. 
* ### [public_cluster.tf](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/public_cluster.tf)
   * This file creates public cluster with all the configurations needed for the project.     
* ### [variable.tf](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/variables.tf)
   * This file contains the variables defined in the above files.
* ### [terraform.tfvars](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/terraform.tfvars)
   * This file contains the values of the variables that will be used in the above files.
* ### [provider.tf](https://github.com/searce-thejaswini/Kubernetes-modules/blob/main/provider.tf)
   * Providers allow Terraform to interact with cloud providers, SaaS providers, and other APIs.
     * google
     * google-beta 

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -



## ![#85877e](https://placehold.co/5x5/85877e/85877e.png) Inputs for Common varibales


| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | The company code which will be used as prefix with the resource names, example "src or sear" for Searce | `string` | `""` | no |


## ![#85877e](https://placehold.co/5x5/85877e/85877e.png) Inputs For Shared VPC

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_shared_vpc_host_project"></a> [shared\_vpc\_host\_project](#input\_shared\_vpc\_host\_project) | The project which need to be marked as host project for shared vpc | `string` | n/a | yes |
| <a name="input_service_project_list"></a> [service\_project\_list](#input\_service\_project\_list) | The list of project whcih are suppossed to be attached to host project as service project | `list(string)` | n/a | yes |
| <a name="input_prefix_length"></a> [prefix\_length](#input\_prefix\_length) | Length of the prefix | `string` | n/a | yes |

## ![#85877e](https://placehold.co/5x5/85877e/85877e.png)  Inputs For Firewall Rules

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall_enable_logging"></a> [firewall\_enable\_logging](#input\_firewall\_enable\_logging) | Boolean value to enable or disable firewall logs | `bool` | n/a | yes |
| <a name="input_allow_egress_specific"></a> [allow\_egress\_specific](#input\_allow\_egress\_specific) | The IP ranges which will be denied as per firewall default rules | `list(string)` | n/a | yes |
| <a name="input_allow_lb_health_check_ranges"></a> [allow\_lb\_health\_check\_ranges](#input\_allow\_lb\_health\_check\_ranges) | The IP ranges which will be allowed as per firewall default rules | `list(string)` | n/a | yes |
| <a name="input_db_ranges"></a> [db\_ranges](#input\_db\_ranges) | The mysql IP ranges which will be denied as per firewall default rules | `list(string)` | n/a | yes |


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


## ![#85877e](https://placehold.co/5x5/85877e/85877e.png)  VPC and Subnet Config

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_tier"></a> [network\_tier](#input\_network\_tier) | Network tier to be used by VM - can be  STANDARD or PREMIUM | `string` | n/a | yes |
| <a name="input_network_config"></a> [network\_config](#input\_network\_config) | Configuration related to VPC, saredVPC host project, prive service access - Plese check [.tfvars](https://github.com/searce-samir/google_foundation_tf_modules/blob/master/3-Network-core/terraform.tfvars) file for the details | `map(map(string))` | n/a | yes |
| <a name="input_subnets_config"></a> [subnets\_config](#input\_subnets\_config) | Configuration related to Subnet range, subnet region, secondary ip ranges for pod and service - Plese check [.tfvars](https://github.com/searce-samir/google_foundation_tf_modules/blob/master/3-Network-core/terraform.tfvars) file for the details | `map(map(string))` | n/a | yes |

  >  ### 1. ***map values for network_config variable***
  >> | Name | Description | Type | Required |
  >> |------|-------------|------|:--------:|
  >> | <a name="input_project_id "></a> [project\_id](#input\_project\_id) | The Project ID where you want to create VPC's. | `string`| yes |
  >> | <a name="input_network_name "></a> [network\_name](#input\_network\_name) | The VPC name which you want to give. | `string`| yes |
  >> | <a name="input_shared_vpc_host "></a> [shared\_vpc\_host](#input\_shared\_vpc\_host) | If set true its mark as Shared VPC host Project | `bool` | yes |
  >> | <a name="input_psa_cidr "></a> [psa\_cidr](#input\_psa\_cidr) | CIDR range for Private Service Access | `string`| yes |


 >  ### 2. ***map values for subnets_config variable***
 >> | Name | Description | Type | Required |
 >> |------|-------------|------|:--------:|
 >> | <a name="input_project_id "></a> [project\_id](#input\_project\_id) | The Project ID where your VPC's palced. | `string`| yes |
 >> | <a name="input_network_name "></a> [network\_name](#input\_network\_name) | The VPC name where you want to create subnets. | `string`| yes |
 >> | <a name="input_subnet_name "></a> [subnet\_name](#input\_subnet\_name) | The name of the subnet. | `string`| yes |
 >> | <a name="input_subnet_ip "></a> [subnet\_ip](#input\_subnet\_ip) | CIDR Range for the subnet | `string`| yes |
 >> | <a name="input_subnet_region "></a> [subnet\_region](#input\_subnet\_region) | The region for your specified subnet | `string`| yes |
 >> | <a name="input_secondary_range_pod_name "></a> [secondary\_range\_pod\_name](#input\_secondary\_range\_pod\_name) | Pod names that come under secondary ranges | `string`| yes |
 >> | <a name="input_secondary_ip_range_pod  "></a> [secondary\_ip\_range\_pod ](#input\_secondary\_ip\_range\_pod) | The secondary ip ranges for pods | `string`| yes |
 >> | <a name="input_secondary_range_service_name  "></a> [secondary\_range\_service\_name ](#input\_secondary\_range\_service\_name) | Service names that come under secondary ranges  | `string`| yes |
 >> | <a name="input_secondary_ip_range_service  "></a> [secondary\_ip\_range\_service ](#input\_secondary\_ip\_range\_service) | The secondary ip ranges for services   | `string`| yes |
 >> | <a name="input_subnet_sharing_member  "></a> [subnet\_sharing\_member ](#input\_subnet\_sharing\_member) | Identities that will be granted the privilege in role (roles/compute.networkUser).  | `string`| yes |

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


## ![#85877e](https://placehold.co/5x5/85877e/85877e.png) NAT and Cloud Routers
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_external_ips_count"></a> [external\_ips\_count](#input\_external\_ips\_count) | As the name suggest its for number of external static ips | `number` | n/a | yes |
| <a name="input_bgp_asn"></a> [bgp\_asn](#input\_bgp\_asn) | The ASN number of BGP session | `number` | n/a | yes |
| <a name="input_cloud_routers_config"></a> [cloud\_routers\_config](#input\_cloud\_routers\_config) | Configuration related to NAT, Cloud Router, External IP for NAT | `map(map(string))` | n/a | yes |

> ### 3. ***map values for cloud_routers_config variable***
>> | Name | Description | Type | Required |
>> |------|-------------|------|:--------:|
>> | <a name="input_ext_ip_name "></a> [ext\_ip\_name ](#input\_ext\_ip\_name ) |  Name for reserved external ip address.  | `string`| yes |
>> | <a name="input_cloud_nat_name "></a> [cloud\_nat\_name ](#input\_cloud\_nat\_name) |  NAT gateway name   | `string`| yes |
>> | <a name="input_subnet_name "></a> [subnet\_name ](#input\_subnet\_name ) |   Cloud router subnet name  | `string`| yes |
>> | <a name="input_router_name "></a> [router\_name ](#input\_router\_name ) |  Cloud router name   | `string`| yes |
>> | <a name="input_project_id "></a> [project\_id ](#input\_project\_id ) |  Project_id where you want to create Cloud router   | `string`| yes |
>> | <a name="input_network_name "></a> [network\_name ](#input\_network\_name ) |  Hub VPC name to configure Cloud router with it.  | `string`| yes |
>> | <a name="input_region "></a> [region ](#input\_region ) |  Region where you want to create Cloud router   | `string`| yes |


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -




## ![#85877e](https://placehold.co/5x5/85877e/85877e.png) Excepted Outcomes :-
* This module should expect to create the infrastructure for a VPC, subnets, and network peering in Google Cloud Platform, and also firewall rules to manage network traffic. The rules are designed to allow or deny egress/ingress traffic for specific protocols, ports, IP ranges. It also configure network tiers and project metadata.
* It creates a shared VPC host project, attaches service projects to it, and shares subnets with the grourp mentioned "subnet_sharing_member" inside [terraform.tfvars](https://github.com/searce-samir/google_foundation_tf_modules/blob/master/3-Network-core/terraform.tfvars) file.
* This module creating Shared VPC which allows multiple projects to use a single VPC network, while still maintaining project-level isolation and control.with each project having its own subnets, routes, firewall rules, and other network resources within the VPC. 
* It creates cloud routers for NAT with specified configurations, and creates NAT gateways in two different regions with one external static public IP address each.
* This module creates a DNS infrastructure that includes an inbound policy, a forwarding policy, and a peering zone. The DNS inbound policy is set up in a hub VPC, the forwarding policy points to an on-premises DNS server, and the peering zone connects to two spoke VPCs.
