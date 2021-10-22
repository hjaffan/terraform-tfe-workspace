resource "tfe_workspace" "main" {
    name = var.workspace_name
    organization = var.org_name
}


resource "tfe_variable" "aws_region" {
    key = "AWS_REGION"
    value = var.aws_region
    category = "env"
    workspace_id = tfe_workspace.main.id
}

resource "tfe_variable" "aws_access_key_id" {
    key = "AWS_ACCESS_KEY_ID"
    value = var.aws_access_key_id
    category = "env"
    workspace_id = tfe_workspace.main.id
}

resource "tfe_variable" "aws_secret_access_key" {
    key = "AWS_SECRET_ACCESS_KEY"
    value = var.aws_secret_access_key
    category = "env"
    sensitive = true
    workspace_id = tfe_workspace.main.id
}