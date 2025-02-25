#!/bin/bash

echo "🚀 Starting AI Research Agent Installation..."

# Updating and upgrading system packages
echo "🔄 Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y

# Installing required system dependencies
echo "📦 Installing required system dependencies..."
sudo apt install -y unzip git python3 python3-pip python3-venv dos2unix

# Cloning AI Agent Repository
echo "🔗 Cloning AI Agent Repository..."
if [ ! -d "agent" ]; then
    git clone git@github.com:Vagabondfilmmaker/agent.git
else
    echo "✅ Repository already exists. Skipping clone."
fi

# Navigating into the project directory
cd agent || exit

# Converting line endings to Unix format
echo "🔄 Fixing potential line ending issues..."
find . -type f -exec dos2unix {} \;

# Setting up Python Virtual Environment
echo "🐍 Setting up Python Virtual Environment..."
if [ ! -d "venv" ]; then
    python3 -m venv venv
    source venv/bin/activate
else
    echo "✅ Virtual environment already exists. Activating it."
    source venv/bin/activate
fi

# Installing required Python libraries
echo "📥 Installing required Python libraries..."
pip install --upgrade pip
pip install torch tensorflow numpy pandas matplotlib transformers beautifulsoup4 selenium scikit-learn requests

# Creating AI Research Assistant script if it doesn't exist
if [ ! -f "ai_research_assistant.py" ]; then
    echo "📝 Creating AI Research Assistant script..."
    cat <<EOL > ai_research_assistant.py
import torch

def main():
    print("AI Research Assistant is running...")
    print(f"PyTorch Device: {'cuda' if torch.cuda.is_available() else 'cpu'}")

if __name__ == "__main__":
    main()
EOL
    echo "✅ AI Research Assistant script created."
fi

# Running AI Research Agent
echo "🏃 Running AI Research Agent..."
python3 ai_research_assistant.py

echo "✅ AI Research Agent Installation Complete!"
