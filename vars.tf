variable "amis" {
    type = map

    default = {
        "us-east-1" = "ami-0aa2b7722dc1b5612"
        "us-east-2" = "ami-05f6084a6b524a8f0"
    }
}

variable "cdirs_acesso_remoto" {
    type = list
    default = ["191.32.154.79/32","192.32.154.79/32"]
}

variable "key_name" {
    default = "terraform-aws"
}