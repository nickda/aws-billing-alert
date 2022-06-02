variable "aws_access_key" {
    type = string
    description = "The AWS Access Key"
}

variable "aws_secret_key" {
    type = string
    description = "The AWS Secret Key"
}

variable "location" {
    type = string
    description = "Location for resource"
    default = "us-east-2"
}

variable aws_account_id {
    type = string
    description = "AWS Account ID"
}

variable aws_budget_name {
    type = string
    description = "Name of AWS Budget"
}

variable aws_budget_threshold_cost {
    type = string
    description = "AWS Budget Threshold"
}

variable aws_budget_threshold_percentage {
    type = string
    description = "AWS Budget Threshold Percentage to alert on"
    default = "100"
}

variable aws_budget_threshold_type {
    type = string
    description = "AWS Budget Threshold type to alert on"
    default = "PERCENTAGE"
}

variable aws_budget_currency {
    type = string
    description = "AWS Budget Currency"
}

variable aws_budget_time_end {
    type = string
    description = "End Time Period for Billing Alert"
    default = "2087-06-15_00:00"
}

variable aws_budget_time_start {
    type = string
    description = "Start Time Period for Billing Alert"
    default = "2022-05-01_00:00"
}

variable aws_budget_time_unit {
    type = string
    description = "Frequency for Billing thresholds"
    default = "MONTHLY"
}

variable aws_budget_alert_emails {
    type = list
    description = "List of email addresses for billing alerts"
}