#!/usr/bin/env bash
# Projektets samlade kontroll: tester, lint, typkontroll.
# Körs automatiskt efter varje filändring (se .claude/settings.json) och av testaren.
# Skillen `starta-app` ersätter raden nedan med projektets riktiga kommandon.
set -euo pipefail
cd "$(dirname "$0")/.."

echo "Inga kontroller konfigurerade ännu. Kör skillen starta-app."
