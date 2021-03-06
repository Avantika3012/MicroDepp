cd /home/admin123/myagent/tppo_workdir/1/a/terraform/
terraform init -var subscription_id="$(subscription_id)" -var client_id="$(client_id)" -var client_secret="$(client_secret)" -var tenant_id="$(tenant_id)"
terraform apply -var subscription_id="$(subscription_id)" -var client_id="$(client_id)" -var client_secret="$(client_secret)" -var tenant_id="$(tenant_id)"

oc new-project nodeproject
oc new-app --docker-image=sangamlonk.azurecr.io/nodejs:latest --name=nodejs1
