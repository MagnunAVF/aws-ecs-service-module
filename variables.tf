variable "region" {
  type        = string
  description = "Region where AWS resources will be provisioned."
}

variable "service_name" {
  type        = string
  description = "Name of the service to be used in ECS or similar identifier."
}

variable "cluster_name" {
  type        = string
  description = "Name of the ECS cluster where the service will be deployed."
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC where service-related resources will be provisioned."
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet IDs where the service will be deployed."
}

variable "service_port" {
  type        = number
  description = "Port on which the service will be accessible."
}

variable "service_cpu" {
  type        = number
  description = "Amount of CPU allocated to the service, specified in ECS CPU units."
}

variable "service_memory" {
  type        = number
  description = "Amount of memory allocated to the service, specified in MB."
}

variable "service_listener" {
  type        = string
  description = "ARN of the Application Load Balancer listener that will be used by the service."
}

variable "service_task_execution_role" {
  type        = string
  description = "ARN of the ECS task execution role that the service will use to run."
}

variable "environment_variables" {
  type        = list(map(string))
  description = "List of environment variables that will be passed to the service."
}

variable "capabilities" {
  type        = list(string)
  description = "List of capabilities needed for service execution, such as 'CAP_SYS_ADMIN' for specific Linux resources."
}