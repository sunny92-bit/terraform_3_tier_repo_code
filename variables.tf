###############  Region where VPC will be deployed  #########################
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "eu-north-1"  
}

###############  VPC CIDR range  ##############################################
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
###############  VPC name  ######################################################
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "ABHINAV-VPC"
}


####################  PUBLIC SUBNET RANGE 1A  ###################################
variable "public_1a_cidr" {
  description = "The CIDR block for PUBLIC SUBNET RANGE 1A"
  type        = string
  default     = "10.0.1.0/24"
}
####################  PUBLIC SUBNET NAME 1A  ###################################
variable "public_name_1a" {
  description = "Name of the PUBLIC SUBNET NAME 1A"
  type        = string
  default     = "ABHINAV-PUBLIC-SUBNET-1A"
}
####################  PUBLIC AZ 1A  ###################################
variable "public_az_1a" {
  description = "Name of the PUBLIC AZ 1A"
  type        = string
  default     = "eu-north-1a"
}


#########################  PUBLIC SUBNET RANGE 1B  #############################
variable "public_1b_cidr" {
  description = "The CIDR block for PUBLIC SUBNET RANGE 1B"
  type        = string
  default     = "10.0.4.0/24"
}
#########################  PUBLIC SUBNET NAME 1B   ##############################
variable "public_name_1b" {
  description = "Name of the PUBLIC SUBNET NAME 1B"
  type        = string
  default     = "ABHINAV-PUBLIC-SUBNET-1B"
}
####################  PUBLIC AZ 1B  ###################################
variable "public_az_1b" {
  description = "Name of the PUBLIC AZ 1A"
  type        = string
  default     = "eu-north-1b"
}


#####################   PRIVATE APP SUBNET RANGE 1A   ############################
variable "private_1a_cidr" {
  description = "The CIDR block for PRIVATE APP SUBNET RANGE 1A"
  type        = string
  default     = "10.0.2.0/24"
}
########################  PRIVATE SUBNET NAME 1A  ################################
variable "private_1a_name" {
  description = "Name of the PRIVATE SUBNET NAME 1A"
  type        = string
  default     = "ABHINAV-PRIVATE-SUBNET-APP-1A"
}
####################  PRIVATE APP AZ 1A  ###################################
variable "private_app_az_1a" {
  description = "Name of the PRIVATE APP AZ 1A"
  type        = string
  default     = "eu-north-1a"
}



#######################  PRIVATE APP SUBNET RANGE 1B  #############################
variable "private_1b_cidr" {
  description = "The CIDR block for PRIVATE APP SUBNET RANGE 1B"
  type        = string
  default     = "10.0.5.0/24"
}
########################  PRIVATE SUBNET NAME 1B  ####################################
variable "private_1b_name" {
  description = "Name of the PRIVATE APP SUBNET NAME 1B"
  type        = string
  default     = "ABHINAV-PRIVATE-SUBNET-APP-1B"
}
####################  PRIVATE APP AZ 1B  ###################################
variable "private_app_az_1b" {
  description = "Name of the PRIVATE APP AZ 1B"
  type        = string
  default     = "eu-north-1b"
}



########################   PRIVATE DB SUBNET RANGE 1A  ##################################
variable "private_db_1a_cidr" {
  description = "The CIDR block for PRIVATE DB SUBNET RANGE 1A"
  type        = string
  default     = "10.0.3.0/24"
}
##########################   PRIVATE DB SUBNET NAME 1A   #################################
variable "private_db_1a_name" {
  description = "Name of the PRIVATE DB SUBNET NAME 1A"
  type        = string
  default     = "ABHINAV-PRIVATE-SUBNET-DB-1A"
}
####################  PRIVATE DB AZ 1A  ###################################
variable "private_db_az_1a" {
  description = "Name of the PRIVATE DB AZ 1A"
  type        = string
  default     = "eu-north-1a"
}



#########################   PRIVATE DB SUBNET RANGE 1B  #######################################
variable "private_db_1b_cidr" {
  description = "The CIDR block for PRIVATE DB SUBNET NAME 1B"
  type        = string
  default     = "10.0.6.0/24"
}
##########################  PRIVATE DB SUBNET NAME 1B   ########################################
variable "private_db_1b_name" {
  description = "Name of the PRIVATE DB SUBNET NAME 1B"
  type        = string
  default     = "ABHINAV-PRIVATE-SUBNET-DB-1B"
}
####################  PRIVATE DB AZ 1B  ###################################
variable "private_db_az_1b" {
  description = "Name of the PRIVATE DB AZ 1B"
  type        = string
  default     = "eu-north-1b"
}



############################  NEW INTERNET GATEWAY NAME  #######################################
variable "ig_name" {
  description = "Name of the Internet Gateway"
  type        = string
  default     = "ABHINAV-MyInternetGateway"
}

#############################   NEW EIP TAG NAME  ###############################################
variable "eip_name" {
  description = "Name of the EIP"
  type        = string
  default     = "ABHINAV-EIP1"
}

##############################  NEW NAT GATEWAY TAG NAME  #########################################
variable "nat_name" {
  description = "Name of the NAT GATEWAY"
  type        = string
  default     = "ABHINAV-NatGateway"
}