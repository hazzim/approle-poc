
echo List of roles available
curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request LIST \
    "${VAULT_ADDR}/v1/auth/approle/role" | jq

echo add new role from JSON file
curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data @payload.json \
    "${VAULT_ADDR}/v1/auth/approle/role/postgre" | jq

echo Reading approle 
curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request GET \
    "${VAULT_ADDR}/v1/auth/approle/role/postgre" | jq
