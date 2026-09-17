#!/bin/bash

# ENDPOINT="http://192.168.9.4:30812/receiveData"
ENDPOINT="http://localhost:8080/receiveData"

while true; do
    NUM=$((RANDOM % 100 + 1))

    echo "Enviando: $NUM"

    curl -v -X POST "$ENDPOINT" \
        -H "Content-Type: application/json" \
        -d "{\"value\":$NUM}" \
        -w "\nQuery reply time: %{time_total}s\n"

    echo
    echo "----------------------"

    sleep 1
done