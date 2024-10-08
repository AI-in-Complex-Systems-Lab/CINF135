#!/bin/bash

curl -fsSL https://ollama.com/install.sh | sh

ollama pull gemma2:2b

pip3 install ollama langchain-core langchain-community --break-system-packages
