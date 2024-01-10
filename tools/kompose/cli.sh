# Install kompose tool
winget install Kubernetes.kompose

# Convert docker-compose to kubernetes
kompose convert -f docker-compose.yml

# Convert to helm chart
kompose convert -f docker-compose.yml --chart

