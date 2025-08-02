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

variable "service_launch_type" {
  type        = string
  description = "Launch type for the ECS service, such as 'FARGATE' or 'EC2'."
}

variable "service_task_count" {
  type        = number
  description = "Number of task instances to be run simultaneously in the service."
}

variable "service_hosts" {
  type        = list(string)
  description = "List of hosts associated with the service, typically specified for DNS configurations."
}

variable "service_healthcheck" {
  type        = map(any)
  description = "Service health check configuration, including path and protocol."
}

variable "environment_variables" {
  type        = list(map(string))
  description = "List of environment variables that will be passed to the service."
}

variable "capabilities" {
  type        = list(string)
  description = "List of capabilities needed for service execution, such as 'CAP_SYS_ADMIN' for specific Linux resources."
}

variable "scale_type" {
  type        = string
  description = "Type of scalability, such as 'cpu', 'cpu_tracking' or 'requests_tracking'."
}

variable "task_minimum" {
  type        = number
  description = "Minimum number of tasks that should be run by the service."
}

variable "task_maximum" {
  type        = number
  description = "Maximum number of tasks that can be run by the service."
}

variable "scale_out_cpu_threshold" {
  type        = number
  description = "CPU utilization threshold value that, when exceeded, triggers a scale-out action, in percentage."
}

variable "scale_out_adjustment" {
  type        = number
  description = "Number of tasks to add during a scale-out action."
}

variable "scale_out_comparison_operator" {
  type        = string
  description = "Comparison operator used for the scale-out condition, such as 'GreaterThanOrEqualToThreshold'."
}

variable "scale_out_statistic" {
  type        = string
  description = "Statistic used for the scale-out condition, such as 'Average' or 'Sum'."
}

variable "scale_out_period" {
  type        = number
  description = "Duration of the evaluation period for scale-out, in seconds."
}

variable "scale_out_evaluation_periods" {
  type        = number
  description = "Number of evaluation periods required to trigger a scale-out action."
}

variable "scale_out_cooldown" {
  type        = number
  description = "Cooldown period after a scale-out action, in seconds."
}