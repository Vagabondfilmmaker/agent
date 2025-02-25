# ai_research_agent.py
import torch
import tensorflow as tf
import numpy as np
import pandas as pd
import requests

def check_installation():
    print("Checking installed packages...")
    print("PyTorch version:", torch.__version__)
    print("TensorFlow version:", tf.__version__)
    print("NumPy version:", np.__version__)
    print("Pandas version:", pd.__version__)
    print("Requests version:", requests.__version__)

def main():
    print("\nAI Research Agent is running...")
    check_installation()
    print("\nReady for future tasks.")

if __name__ == "__main__":
    main()
