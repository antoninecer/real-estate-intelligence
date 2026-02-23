#!/usr/bin/env bash

set -e

echo "Creating project structure..."

# Root files
touch docker-compose.yml
touch .env
touch .gitignore

# Directories
mkdir -p db
mkdir -p n8n/workflows
mkdir -p docs
mkdir -p scripts
mkdir -p pg_data

# Database init
touch db/init.sql

# Placeholder documentation
touch docs/architecture.md
touch docs/workflow.md

# Helper scripts
touch scripts/backup.sh
touch scripts/restore.sh

echo "Done."
echo ""
echo "Structure:"
tree -L 3
