#!/bin/bash

echo "Running security scan (Shift-Left)..."

# Exclude this script from scanning
if grep -R "PASSWORD\|SECRET\|API_KEY" . \
   --exclude=security_scan.sh; then
  echo "❌ Security Issue: Hardcoded secret detected"
  exit 1
fi

echo "✅ Security scan passed"

