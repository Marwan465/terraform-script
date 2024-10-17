output "cloudwatch_metric_alarm_id" {
  value = aws_cloudwatch_metric_alarm.cpu_alarm.id
}