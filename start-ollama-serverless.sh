#!/bin/bash

# Start Ollama server in the background
ollama serve &

# Wait for 5 seconds to allow the server to initialize
sleep 5

# Pull the model specified by the first argument passed to the script
ollama pull $1

# Run the Python script that processes the serverless logic
python3 -u runpod_serverless.py
