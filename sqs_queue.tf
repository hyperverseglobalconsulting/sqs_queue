resource "aws_sqs_queue" "pdf_page_info_queue" {
  name = var.sqs_name
}

resource "aws_lambda_event_source_mapping" "page_extractor_sqs_mapping" {
  event_source_arn  = var.sqs_queue_arn
  function_name     = var.lambda_page_extractor_arn
  batch_size        = var.batch_size
  starting_position = "TRIM_HORIZON"
}
