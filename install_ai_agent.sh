#!/bin/bash

echo "🚀 Starting AI Research Agent Installation..."

# Updating and upgrading system packages
echo "🔄 Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y

# Install required system dependencies
echo "📦 Installing required system dependencies..."
sudo apt install -y unzip git python3 python3-pip python3-venv dos2unix

# Ensure script compatibility (remove Windows carriage returns if any)
echo "🛠 Converting script to Unix format..."
dos2unix install_ai_agent.sh

# Creating AI Research Agent Directory
echo "📂 Setting up AI Research Agent directory..."
cd ~
if [ ! -d "ai-research-agent" ]; then
    git clone git@github.com:Vagabondfilmmaker/agent.git ai-research-agent
fi
cd ~/ai-research-agent

# Setting up Python Virtual Environment
echo "🐍 Setting up Python Virtual Environment..."
python3 -m venv venv
source venv/bin/activate

# Installing required Python libraries
echo "📦 Installing required Python libraries..."
pip install --upgrade pip
pip install torch torchvision torchaudio tensorflow numpy pandas scikit-learn matplotlib transformers requests beautifulsoup4 selenium

# Cloning AI Agent Repository
echo "🔄 Cloning AI Agent Repository..."
if [ ! -d "agent" ]; then
    git clone git@github.com:Vagabondfilmmaker/agent.git
fi
cd ~/ai-research-agent/agent

# Running AI Research Agent
echo "🤖 Running AI Research Agent..."
python ai_research_assistant.py

echo "✅ AI Research Agent Installation Complete!"
