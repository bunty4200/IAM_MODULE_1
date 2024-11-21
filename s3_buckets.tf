# module "livermap-iqm-house" {
#   source = "./s3_buckets"
#   bucket_name = terraform.workspace == "stage" ? "livermap-iqm-house-stage" : "livermap-iqm-house"

#   extra_tags = {
#     jayra = "chauhan"
#   }
# }


# module "livermap-iqm-house-preprod" {
#   count = terraform.workspace == "stage" ? 1 : 0
#   source = "./s3_buckets"
#   bucket_name = "livermap-iqm-house-preprod"
#   extra_tags = {
#     jayra = "chauhan"
#   }
# }

# module "livermap-iqm-house2-preprod2" {
#   count = terraform.workspace == "stage" ? 1 : 0
#   source = "./s3_buckets"
#   bucket_name = "livermap-iqm-house2-preprod2"
#   extra_tags = {
#     jayraj = "chauhan"
#   }
# }

# module "livermap-iqm-house2-preprod4" {
#   count = terraform.workspace == "stage" ? 1 : 0
#   source = "./s3_buckets"
#   bucket_name = "livermap-iqm-house2-preprod4"
#   extra_tags = {
#     jayraj = "chauhan"
#   }
# }