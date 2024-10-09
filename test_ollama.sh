#!/bin/bash

# if install is needed
#curl -fsSL https://ollama.com/install.sh | sh


ollama --version

# pull the model
ollama pull llama3.1:8b


curl -X POST http://localhost:11434/api/embeddings -d '{
  "model": "llama3",
  "prompt":"Tell me a Joke about programing."
 }'