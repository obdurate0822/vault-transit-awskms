# Guide Vault Transit

### transit enable
`
vault secrets list
vault secrets enable transit
`

### create transit key
`
vault write -f transit/keys/[key name] allow_plaintext_backup=true exportable=true
`

### base64
payload should be encoded by base64

`
echo "the quick brown fox" | base64
`

### encrypt
`
curl 
    --header "X-Vault-Token: [token]"
    --request POST
    --data @encrypt-payload.json
    http://127.0.0.1:8200/v1/transit/encrypt/[key name]
`

### decrypt
`
curl 
    --header "X-Vault-Token: [token]"
    --request POST
    --data @decrypt-payload.json
    http://127.0.0.1:8200/v1/transit/decrypt/[key name]
`
