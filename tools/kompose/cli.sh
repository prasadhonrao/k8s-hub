# Install kompose tool
winget install Kubernetes.kompose

# Convert docker-compose to kubernetes
kompose convert -f docker-compose.yaml

# Convert to helm chart
kompose convert -f docker-compose.yaml --chart

