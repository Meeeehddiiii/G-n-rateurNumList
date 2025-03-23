#!/bin/bash

# Définir le fichier des exigences
requirements_file="requirements.txt"

# Afficher le message
echo "Install all Modules in : $requirements_file..."

# Vérifier si le fichier existe
if [ ! -f "$requirements_file" ]; then
    echo "$requirements_file not found."
    echo "Please make sure the file exists in the current directory."
    exit 1
fi

# Installer chaque paquet listé dans le fichier requirements.txt
while IFS= read -r line; do
    pip install "$line"
done < "$requirements_file"

# Message final
echo "we love @UHQ LIFE."
