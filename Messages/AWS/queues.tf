resource "aws_sns_topic" "topic" {
  name = "Insurance-Quote-Requests"
}

resource "aws_sqs_queue" "Vehicle-Insurance-Quotes" {
  name   = "Vehicle-Insurance-Quotes"
  policy = data.aws_iam_policy_document.sqs_policy.json
}

resource "aws_sqs_queue" "Life-Insurance-Quotes" {
  name   = "Life-Insurance-Quotes"
  policy = data.aws_iam_policy_document.sqs_policy.json
}

resource "aws_sqs_queue" "All-Quotes" {
  name   = "All-Quotes"
  policy = data.aws_iam_policy_document.sqs_policy.json
}

resource "aws_sns_topic_subscription" "subscription-All-Quotes" {
  topic_arn = aws_sns_topic.topic.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.All-Quotes.arn
}

resource "aws_sns_topic_subscription" "subscription-Life-Insurance-Quotes" {
  topic_arn     = aws_sns_topic.topic.arn
  protocol      = "sqs"
  endpoint      = aws_sqs_queue.Life-Insurance-Quotes.arn
  filter_policy = <<POLICY
{"insurance_type": ["life"]}
POLICY
}

resource "aws_sns_topic_subscription" "subscription-Vehicle-Insurance-Quotes" {
  topic_arn     = aws_sns_topic.topic.arn
  protocol      = "sqs"
  endpoint      = aws_sqs_queue.Vehicle-Insurance-Quotes.arn
  filter_policy = <<POLICY
{"insurance_type": ["car", "boat"]}
POLICY
}
