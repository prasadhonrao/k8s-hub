# Get AKS extension preview
az extension list-available -o table | grep -i -e installed -e aks-preview

# Install AKS extension preview
az extension add --name aks-preview

# Update AKS extension preview
az extension update --name aks-preview

# Get features for AKS extension preview
az feature list -o table --query "[?contains(name, 'Microsoft.ContainerService/WindowsPreview')].{Name:name,State:properties.state}"