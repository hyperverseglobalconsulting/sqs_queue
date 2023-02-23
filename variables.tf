variable "sqs_name" {
    type    = string
    default = "PDFPageInfo"
}

variable "lambda_name_page_extractor" {
    type    = string
    default = "page_extractor"
}

variable "lambda_page_extractor_arn" {
    type    = string
    default = "arn:aws:lambda:us-east-2:093487613626:function:PDFPageExtractor"
}

variable "sqs_queue_arn" {
    type    = string
    default = "arn:aws:sqs:us-east-2:093487613626:PDFPageInfo"
}

variable "batch_size" {
    type    = integer
    default = 1
}
