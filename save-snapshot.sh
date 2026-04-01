#!/bin/bash
# ============================================================
# SAVE A SNAPSHOT — run this before making any changes
# Usage:
#   Double-click this file in Finder, OR
#   In terminal: bash save-snapshot.sh
#   With a label: bash save-snapshot.sh "added photo"
# ============================================================

LABEL="${1:-snapshot}"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")
SNAPSHOT_NAME="${TIMESTAMP}_${LABEL// /-}"
SNAPSHOT_DIR="_snapshots/$SNAPSHOT_NAME"

# Copy all site files (exclude _snapshots folder itself)
mkdir -p "$SNAPSHOT_DIR"
rsync -a --exclude='_snapshots' --exclude='save-snapshot.sh' --exclude='restore-snapshot.sh' . "$SNAPSHOT_DIR/"

echo ""
echo "✓ Snapshot saved: $SNAPSHOT_NAME"
echo ""
echo "To restore this snapshot later, run:"
echo "  bash restore-snapshot.sh $SNAPSHOT_NAME"
echo ""
