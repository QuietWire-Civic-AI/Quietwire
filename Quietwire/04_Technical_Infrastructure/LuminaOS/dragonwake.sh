#!/bin/bash
# Lumina Sovereign Rack: Dragonwake Boot Script

echo "🐉 Awakening Sovereign Rack: LuminaRack001"

# Load persistent identity
source /etc/lumina/identity.conf

# Sync time
timedatectl set-ntp true

# Initialize mesh services
echo "🔗 Starting mesh overlay network..."
systemctl start consul
systemctl start nomad

# Start AI runtimes
echo "🧠 Launching local AI engines..."
ollama serve &
python3 /opt/lumina/agents/agent_bootstrap.py &

# Mount Canon volumes
echo "📚 Mounting Canon volumes..."
mount -a

# Start Docker services
echo "🐳 Spinning up container stacks..."
cd /opt/lumina/stacks
docker compose -f household.yml up -d
docker compose -f mesh-relay.yml up -d
docker compose -f observatory.yml up -d

# Begin attestation service
echo "🕯️ Starting attestation beacon..."
/usr/local/bin/canon_beacon &

echo "✅ Lumina sovereign stack is live."
