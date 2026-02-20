We are creating following resources,  this module creates resources first two zones for HA(high availability)

* VPC
* Internet gateway (IGW)
* internet gateway attached to VPC
* 2 public subnets
* 2 private subnets
* 2 databse subnets
* EIP (elastic Ip- Statis ip in public vpc)
* NAT gateway 
* public Route table
* private Route table
* database Route table
* route table and subnet association
* routes in all tables
* peering if requred for user
* routes of peering in requster and accpeter VPC
* database subnet group

### INPUTS ###
* project_name (required): user should mention their project name (not terraform rule), type is string.
* environment (optional) : default value is dev, type is string.
* comman_tags (required): user should provide their tags related their project, type is map.
* vpc_cidr (optional): default value is 10.0.0.0/16, type is string.
* enable_dns_hostnames (optional): default value is true, type is bool.
* vps_tags (optional): default value is empty, type is map.
* igw_tags (optional): default value is empty, type is map.
* public_subnet_cidrs (required): User has to provide 2 valid subnet cidr. 
* public_subnet_cidr_tags (optional): default value is empty, type is map.
* private_subnet_cidrs (required): User has to provide 2 valid subnet cidr.
* private_subnet_cidr_tags (optional): default value is empty, type is map.
* database_subnet_cidrs (required): User has to provide 2 valid subnet cidr.
* database_subnet_cidr_tags (optiional):: default value is empty, type is map.
* database_subnet_group_tags (optiional):: default value is empty, type is map.
* nat_gateway_tags (optiional):: default value is empty, type is map.
* public_route_table_tags (optiional):: default value is empty, type is map.
* private_route_table_tags (optiional):: default value is empty, type is map.
* database_route_table_tags (optiional):: default value is empty, type is map.
* is_peering_required (optiional):: default value is false, type is bool.
* accepter_vpc_id (optiional):: default value is empty, default VPC ID would taken, type is string.
* vpc_peering_tags (optiional):: default value is empty, type is map.