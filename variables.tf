variable "token" {

 type = string

 default = ""

 description = "hetzner cloud token"

}

variable "ssh_keys_name" {
    type = list(string)
    default = ["my-key"]
    description = "ssh key name used to bind an ssh key to a vps"
}
