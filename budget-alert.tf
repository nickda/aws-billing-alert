resource "aws_budgets_budget" "mybudget" {
    account_id        = var.aws_account_id
    budget_type       = "COST"
    limit_amount      = var.aws_budget_threshold_cost
    limit_unit        = var.aws_budget_currency
    name              = var.aws_budget_name
    time_period_end   = var.aws_budget_time_end
    time_period_start = var.aws_budget_time_start
    time_unit         = var.aws_budget_time_unit

    cost_types {
        include_credit             = false
        include_discount           = true
        include_other_subscription = true
        include_recurring          = true
        include_refund             = false
        include_subscription       = true
        include_support            = true
        include_tax                = true
        include_upfront            = true
        use_amortized              = false
        use_blended                = false
    }

    notification {
        comparison_operator        = "GREATER_THAN"
        notification_type          = "ACTUAL"
        subscriber_email_addresses = var.aws_budget_alert_emails
        subscriber_sns_topic_arns  = []
        threshold                  = var.aws_budget_threshold_percentage 
        threshold_type             = var.aws_budget_threshold_type
    }
}
