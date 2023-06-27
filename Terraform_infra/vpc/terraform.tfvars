public_subnet_one                         ="12.0.0.0/18"
public_subnet_one_az                      ="eu-west-2a"
public_subnet_one_map_public_ip_on_launch =true
public_subnet_one_tags = {
  Name ="infra_public_one"
}

public_subnet_two                         ="12.0.64.0/18"
public_subnet_two_az                      ="eu-west-2b"
public_subnet_two_map_public_ip_on_launch =true
public_subnet_two_tags = {
  Name ="infra_public_two"
}

private_subnet_one                         ="12.0.128.0/18"
private_subnet_one_az                      ="eu-west-2c"
private_subnet_one_map_public_ip_on_launch =false
private_subnet_one_tags = {
  Name ="infra_private_one"
}

private_subnet_two                         ="12.0.192.0/18"
private_subnet_two_az                      ="eu-west-2c"
private_subnet_two_map_public_ip_on_launch =false
private_subnet_two_tags = {
  Name ="infra_private_two"
}

public_route_tag = {
  Name ="infra_public_route"
  vpc ="infra"
}
private_route_tag = {
  Name ="infra_private_route"
  vpc ="infra"
}
public_common_subnet_tag = {
  Type = "public"
  vpc = "dev"
}
private_common_subnet_tag = {
  Type = "private"
  vpc = "dev"
}
