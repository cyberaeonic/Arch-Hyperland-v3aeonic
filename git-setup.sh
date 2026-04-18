#!/usr/bin/env bash
# ============================================================
# Arch-Hyperland-v3aeonic — Git Setup Script
# Run this ONCE from inside the project folder on your Arch
# Linux machine (or after installing Git for Windows).
# ============================================================

set -e

PROJECT="Arch-Hyperland-v3aeonic"
GITHUB_USER="cyber"
REMOTE="https://github.com/${GITHUB_USER}/${PROJECT}.git"

echo "================================================"
echo " Setting up git for: ${PROJECT}"
echo "================================================"

# Configure git identity (change if needed)
git config user.name "${GITHUB_USER}"
git config user.email "${GITHUB_USER}@users.noreply.github.com"

# Initialize repo and make initial commit
git init
git checkout -b main
git add .
git commit -m "feat: initial commit — ${PROJECT}

Initialized as standalone Arch Linux Hyprland dotfiles.
- Renamed project to ${PROJECT}
- Updated README, CONTRIBUTING, FUNDING, and issue templates
- Customized all references and branding throughout
- Clean, personalized setup for Arch Linux"

# Add remote and push
git remote add origin "${REMOTE}"

echo ""
echo "================================================"
echo " Ready to push! Run the following:"
echo "   git push -u origin main"
echo ""
echo " (Make sure you've created the repo on GitHub first:"
echo "  https://github.com/new  →  name: ${PROJECT})"
echo "================================================"
