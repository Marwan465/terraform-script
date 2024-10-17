resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = "cpu-utilization-alarm-${var.instance_id}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 50
  alarm_description   = "This alarm triggers if CPU utilization exceeds 50% for instance ${var.instance_id}"
  actions_enabled     = true
  alarm_actions       = [aws_sns_topic.email_notification.arn]

  dimensions = {
    InstanceId = var.instance_id
  }
}

resource "aws_sns_topic" "email_notification" {
  name = "cpu-alerts"
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.email_notification.arn
  protocol  = "email"
  endpoint  = var.email
}