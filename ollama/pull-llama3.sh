#!/bin/bash

./bin/ollama serve &

pid=$!

# Ожидание 5 секунд
sleep 5

echo "Pulling llama3 model"

ollama pull llama3:latest

wait $pid
