# resource "aws_s3_bucket" "cricket-connect" {
# count = length(var.ENVIROMENTS)
#   bucket = "cricket-connect-${count.index}"

#   tags = var.RESOURCE_TAGS
# }