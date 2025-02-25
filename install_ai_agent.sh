#!/bin/bash

# Define installation directory
AGENT_DIR="$HOME/ai-research-agent"
VENV_DIR="$AGENT_DIR/venv"
REPO_URL="git@github.com:Vagabondfilmmaker/agent.git"
AGENT_SCRIPT="ai_research_agent.py"

# Update system packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3 python3-venv python3-pip git dos2unix

echo "Setting up AI Research Agent directory..."
mkdir -p "$AGENT_DIR"
cd "$AGENT_DIR"

echo "Cloning or updating repository..."
if [ -d "$AGENT_DIR/.git" ]; then
    git pull origin main
else
    git clone "$REPO_URL" "$AGENT_DIR"
fi

echo "Creating and activating Python virtual environment..."
python3 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

echo "Installing required Python libraries..."
pip install --upgrade pip
pip install torch torchvision torchaudio tensorflow numpy pandas requests

echo "Ensuring script compatibility..."
dos2unix "$AGENT_DIR/$AGENT_SCRIPT"
chmod +x "$AGENT_DIR/$AGENT_SCRIPT"

echo "Installation complete. Running AI Research Agent..."
python "$AGENT_DIR/$AGENT_SCRIPT"
