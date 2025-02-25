#!/bin/bash

echo "🚀 Starting AI Research Agent Installation..."
echo "🔄 Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y

echo "🛠 Installing required system dependencies..."
sudo apt install -y python3 python3-pip python3-venv git curl wget unzip

echo "📁 Creating AI Research Agent Directory..."
mkdir -p ~/ai-research-agent && cd ~/ai-research-agent

echo "📦 Setting up Python Virtual Environment..."
python3 -m venv env
source env/bin/activate

echo "📥 Installing required Python libraries..."
pip install --upgrade pip
pip install numpy scipy sympy pandas matplotlib torch tensorflow transformers beautifulsoup4 selenium requests scikit-learn

echo "🖥️ Cloning AI Agent Repository..."
git clone https://github.com/YOUR-GITHUB-REPO/ai-research-assistant.git || echo "Skipping repository clone..."
cd ai-research-assistant

echo "🚀 Running AI Research Agent..."
python ai_research_assistant.py

echo "✅ AI Research Agent Installation Complete!"
