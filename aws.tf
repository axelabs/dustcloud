###########################
# AWS Networking goodness #
###########################

# VPC
resource "aws_vpc" "andromeda" {
    cidr_block = "10.222.0.0/16"
    tags { Name = "Andromeda" }
}

# Gateway
resource "aws_internet_gateway" "wormhole" {
    vpc_id = "${aws_vpc.andromeda.id}"
    tags { Name = "Andromeda's Wormhole" }
}

# Route table
resource "aws_route_table" "compass" {
    vpc_id = "${aws_vpc.andromeda.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.wormhole.id}"
    }
    tags { Name = "Andromeda's Compass" }
}

# Subnets
resource "aws_subnet" "andromeda-subzero" {
    vpc_id = "${aws_vpc.andromeda.id}"
    cidr_block = "10.222.0.0/24"
    map_public_ip_on_launch = true
    tags { Name = "Andromeda's SubZero" }
}
# Route associatios
resource "aws_route_table_association" "compass-subzero" {
    subnet_id = "${aws_subnet.andromeda-subzero.id}"
    route_table_id = "${aws_route_table.compass.id}"
}
