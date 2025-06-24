#!/bin/env bash

# Exit on any error
set -e

# Step 1: Go to the home directory
echo "🏠 Moving to the home directory..."
cd ~

# Step 2: Clone the repository
echo "📥 Cloning 'metrics-agent'..."
git clone https://github.com/ROBotics-OBServability/metrics-agent.git

# Step 3: Change into the directory
echo "📂 Entering the 'metrics-agent' directory..."
cd metrics-agent

echo "✅ Repository cloned. You are now in the 'metrics-agent' directory."

# Step 4: Start services with Docker Compose
echo "🐳 Starting Docker services (sudo required)..."
sudo docker compose up -d

echo "🚀 Services up and running in the background."
