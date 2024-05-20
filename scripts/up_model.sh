#!/bin/bash

python3 -m \
  llama_cpp.server \
  --model ./model/llama-2-13b-chat.Q4_K_M.gguf \
  --host 0.0.0.0 
  --port 8000
