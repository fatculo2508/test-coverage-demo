#!/bin/bash
# Helper script to set up Codecov token

set -e

echo "========================================"
echo "  Codecov Token Setup Helper"
echo "========================================"
echo ""
echo "The Codecov page should now be open in your browser."
echo "If not, visit: https://app.codecov.io/gh/fatculo2508/test-coverage-demo"
echo ""
echo "Steps to get your Codecov token:"
echo "1. Sign in to Codecov with GitHub"
echo "2. The repository 'test-coverage-demo' should appear"
echo "3. Click 'Configure' or go to Settings"
echo "4. Copy the 'Repository Upload Token'"
echo ""
read -p "Press Enter when you have your token ready..."
echo ""
read -s -p "Paste your Codecov token: " CODECOV_TOKEN
echo ""
echo ""

if [ -z "$CODECOV_TOKEN" ]; then
    echo "❌ No token provided. Exiting."
    exit 1
fi

echo "Adding token to GitHub secrets..."
echo "$CODECOV_TOKEN" | gh secret set CODECOV_TOKEN --repo fatculo2508/test-coverage-demo

echo ""
echo "✅ Codecov token successfully added to GitHub secrets!"
echo ""
echo "Next steps:"
echo "1. Push a commit to trigger the GitHub Actions workflow"
echo "2. Or manually trigger the workflow from: https://github.com/fatculo2508/test-coverage-demo/actions"
echo ""
