output "iam_user_name" {
  description = "The name of the created IAM user"
  value       = aws_iam_user.this.name
}

output "password" {
  value = aws_iam_user_login_profile.this.password
  sensitive = true
}

output "iam_access_key_id" {
  description = "The access key ID for the user (if created)"
  value       = var.create_access_key ? aws_iam_access_key.this[0].id : null
}

output "iam_access_key_secret" {
  description = "The secret access key for the user (if created)"
  value       = var.create_access_key ? aws_iam_access_key.this[0].secret : null
  sensitive = true
}


# output "username" {
#   value = aws_iam_user.this.name
# }
# output "user_arn" {
#   value = aws_iam_user.this.arn
# }

# output "password" {
#   value = aws_iam_user_login_profile.this.password
#   sensitive = true
# }

# output "access_key" {
#   value = aws_iam_access_key.this.id
# }

# output "secret" {
#     value = aws_iam_access_key.this.secret
# }

# output "iam_user_name" {
#   description = "The name of the created IAM user"
#   value       = aws_iam_user.this.name
# }

# output "iam_access_key_id" {
#   description = "The access key ID for the user (if created)"
#   value       = aws_iam_access_key.this[0].id
#   condition   = var.create_access_key
# }

# output "iam_access_key_secret" {
#   description = "The secret access key for the user (if created)"
#   value       = aws_iam_access_key.this[0].secret
#   condition   = var.create_access_key
# }
