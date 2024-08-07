#config.hcl

ui = true

storage "mysql" {
  address = "db:3306"
  database = "vault"
  username = "changeme"
  password = "changeme"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = "true"
}

seal "awskms" {
    access_key = "changeme"
    kms_key_id = "changeme"
    region = "changeme"
    secret_key = "changeme"
}

api_addr = "http://0.0.0.0:8200"
log_level = "trace"
