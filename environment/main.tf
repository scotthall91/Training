terraform{
    backend "s3" {
        bucket   = "env-state"
        key      = "terraform.tfstate.env-state"
        dynamodb_table = "env-lock"
        region   = "todo"
        encrypt  = true
    }
}