terraform plan -target=module.mymodule.aws_instance.myinstance
terraform apply -target=module.mymodule.aws_instance.myinstance


count
What is it? The count meta-argument in Terraform determines how many instances of a resource to create. If count = 0, no resources are created. If count = 1, one resource is created.

Why use count here? The count in your configuration ensures that resources are only created when specific conditions are met. For example:

count = terraform.workspace == "stage" || terraform.workspace == "prod" ? 1 : 0


This checks if the current workspace is stage or prod. If true, the count is 1 (resource is created); otherwise, it is 0 (resource is not created).

count in dependent resources: Resources like aws_iam_user_login_profile and aws_iam_access_key depend on the aws_iam_user being created. Their count ensures they are only created if the user exists:

count = aws_iam_user.this.count > 0 ? 1 : 0


data "aws_caller_identity"

Fetches details about the current AWS account and user/role running Terraform.

aws_iam_user.this[0]
References the first (and only) instance of the aws_iam_user resource when count = 1.

Dependent Resources (count > 0)
Ensures dependent resources (e.g., login profile, access key) are only created if the user exists.

