#!/bin/bash
# ============================================================
# RESTORE A SNAPSHOT — reverts your site to a saved point
# Usage:
#   bash restore-snapshot.sh
#   (shows list of snapshots, you pick one)
# ============================================================

echo ""
echo "============================================"
echo "  Available snapshots"
echo "============================================"
echo ""

SNAPSHOTS=($(ls _snapshots/ | sort -r))

if [ ${#SNAPSHOTS[@]} -eq 0 ]; then
  echo "  No snapshots found. Run save-snapshot.sh first."
  echo ""
  exit 1
fi

for i in "${!SNAPSHOTS[@]}"; do
  echo "  [$i] ${SNAPSHOTS[$i]}"
done

echo ""
read -p "Enter the number of the snapshot to restore: " CHOICE

SELECTED="${SNAPSHOTS[$CHOICE]}"

if [ -z "$SELECTED" ]; then
  echo "Invalid choice. Exiting."
  exit 1
fi

echo ""
echo "You selected: $SELECTED"
read -p "Are you sure? This will overwrite current files. (yes/no): " CONFIRM

if [ "$CONFIRM" != "yes" ]; then
  echo "Cancelled. Nothing was changed."
  exit 0
fi

# Save current state as auto-backup before restoring
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")
AUTO_BACKUP="_snapshots/${TIMESTAMP}_auto-backup-before-restore"
mkdir -p "$AUTO_BACKUP"
rsync -a --exclude='_snapshots' --exclude='save-snapshot.sh' --exclude='restore-snapshot.sh' . "$AUTO_BACKUP/"
echo "✓ Current state auto-saved to: $AUTO_BACKUP"

# Restore selected snapshot
rsync -a --delete --exclude='_snapshots' --exclude='save-snapshot.sh' --exclude='restore-snapshot.sh' "_snapshots/$SELECTED/" .

echo "✓ Restored to: $SELECTED"
echo ""
