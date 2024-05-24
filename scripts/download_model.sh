#!/bin/bash

MODEL_PATH="model"

mkdir -p "${PWD}/${MODEL_PATH}"

if [ $? -eq 0 ]; then
  wget -P "${PWD}/${MODEL_PATH}" \
    https://huggingface.co/TheBloke/Llama-2-13B-chat-GGUF/resolve/main/llama-2-13b-chat.Q4_K_M.gguf

  if [ $? -eq 0 ]; then
    echo "Download do Modelo realizado com sucesso!"
  else
    echo "Falha no download do Modelo. Código de erro: ${$?}"
  fi
else
  echo "Falha ao criar o diretório ${PWD}/${MODEL_PATH} para o Modelo."
  exit 1
fi

# Outros modelos podem ser pesquisados em:
# https://huggingface.co (Use os com formato .gguf)