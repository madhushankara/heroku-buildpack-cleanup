#!/bin/bash

echo "Starting post-build cleanup..."

# Clear unnecessary libraries
echo "Clearing Python packages not used in the project..."
pip uninstall -y 

# Remove caches and temporary files
echo "Removing temporary files and caches..."
rm -rf ~/.cache/pip
rm -rf venv/
find . -name "*.pyc" -exec rm -f {} \;
find . -name "*.pyo" -exec rm -f {} \;

# Remove other unneeded directories (if present)
rm -rf tests/ docs/ examples/

echo "Post-build cleanup complete."
