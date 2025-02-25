@echo off
echo 🚀 Starting AI Research Agent Installation...

echo 🔄 Updating WSL & System Packages...
wsl --update
wsl sudo apt update && sudo apt upgrade -y

echo 🛠 Installing Required Dependencies...
wsl sudo apt install -y python3 python3-pip python3-venv git curl wget unzip

echo 📁 Creating AI Research Agent Directory...
wsl mkdir -p ~/ai-research-agent && cd ~/ai-research-agent

echo 📦 Setting Up Python Virtual Environment...
wsl python3 -m venv env
wsl source env/bin/activate

echo 📥 Installing Required Python Libraries...
wsl pip install --upgrade pip
wsl pip install numpy scipy sympy pandas matplotlib torch tensorflow transformers beautifulsoup4 selenium requests scikit-learn

echo 🖥️ Cloning AI Agent Repository...
wsl git clone https://github.com/Vagabondfilmmaker/ai-research-assistant.git || echo Skipping repository clone...
wsl cd ai-research-assistant

echo 🚀 Running AI Research Agent...
wsl python ai_research_assistant.py

echo ✅ AI Research Agent Installation Complete!
pause
