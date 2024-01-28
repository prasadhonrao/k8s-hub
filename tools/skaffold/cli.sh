# Install skaffold on Windows
choco install -y skaffold

# Refer to https://skaffold.dev/docs/install/ for other platforms

# Init skaffold
skaffold init --compose-file docker-compose.yaml
