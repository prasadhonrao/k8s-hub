
subscription_id=$(az account show --query id -o tsv)
rg=k8s-research-rg
law_name=aks-law
location=uksouth

# Login to Azure
az login

# Set the default subscription and nodes
az account set --subscription $subscription_id
kubectl get nodes

# Check if AKS is created or not
az aks list -o table

# Create Log Analytics Workspace
az monitor log-analytics workspace create --resource-group $rg --workspace-name $law_name --location $location
