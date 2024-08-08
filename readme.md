# Guide Vault Transit

### run db, vault container
`
docker compose up -d
`

### dive to vault container for init
`
docker compose exec vault sh
`

### env for VAULT_ADDR
`
export VAULT_ADDR=http://127.0.0.1:8200
`

### vault init and take vault root token
`
vault operator init
`
`
Recovery Key 1: ImRjYkweV9Q0xyHLovZcZSmE8Hjf5QW84SRCxJgDuOsR (vaule will be different)
Recovery Key 2: gK6343kwFyO8QaAWJmMHak8lB9Owc9fMSVBHptX/cKFb (vaule will be different)
Recovery Key 3: ciFMWehOdnr3taYYw1KrNqx1dI19OujKlxSA85i1sGTo (vaule will be different)
Recovery Key 4: 2iJQRfrAI/9yKgs0d4WEhcOzXlFDAzdOw4cPDfWVTXhX (vaule will be different)
Recovery Key 5: exYZP2O/3yd2PNQbOHVSeYJeeluIVZHFSeVHq/F2/7Ky (vaule will be different)
Initial Root Token: hvs.JmK7kjTQVMRwwtVmJXy2TGyt             (vaule will be different)
`
### transit enable
`
vault secrets enable transit
`
## transit enable check
`
vault secrets list
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
