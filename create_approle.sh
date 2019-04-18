
echo add new role from JSON file
curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data @postgre_create.json \
    "${VAULT_ADDR}/v1/auth/approle/role/postgre_create" | jq

curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request POST \
    --data @postgre_read.json \
    "${VAULT_ADDR}/v1/auth/approle/role/postgre_read" | jq

echo Reading approle postgre_read
curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request GET \
    "${VAULT_ADDR}/v1/auth/approle/role/postgre_read" | jq

echo Reading approle postgre_create
curl -sS \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --request GET \
    "${VAULT_ADDR}/v1/auth/approle/role/postgre_create" | jq
