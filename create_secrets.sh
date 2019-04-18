  ##  For KV2 (Includes data/ in the path after the KV Secret Engine name)

curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data @username.json \
    "${VAULT_ADDR}/v1/secret/data/onlinestore/pos/username"

curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data @password.json \
    "${VAULT_ADDR}/v1/secret/data/onlinestore/pos/password"


