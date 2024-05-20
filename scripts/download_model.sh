#!/bin/bash

PATH="model"

mkdir -p \
  ${PWD}/${PATH} &&
  wget -P \
  ${PWD}/${PATH} \
  https://huggingface.co/TheBloke/Llama-2-13B-chat-GGUF/resolve/main/llama-2-13b-chat.Q4_K_M.gguf

# Outros modelos podem ser pesquisados em:
# https://huggingface.co (Use os com formato .gguf)
