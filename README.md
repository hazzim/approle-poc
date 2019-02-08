# approle-poc

PoC for Vault AppRole.

Steps to execute

1.-Create a new policy
```
vault policy write pos_server pos_server.hcl
```

2.-Create new AppRole with the policy.
```
sh create_approle.sh
```

3.-Create the secrets to be consumed.
```
sh create_secrets.sh
```

4.-Get the secrets
```
sh get_secrets.sh
```
