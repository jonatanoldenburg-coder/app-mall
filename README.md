# App-mall

Mall för nya appar byggda med agentdriven utveckling i Claude Code.

## Ny app
1. På GitHub: **Use this template → Create a new repository**.
2. Öppna det nya repot i Claude Code och skriv: *"Kör skillen starta-app."*
3. Claude intervjuar dig och fyller i CLAUDE.md, kontrollskript, domängranskare och publicering.
4. Bygg funktioner med *"Följ feature-workflow: …"*.

## Innehåll
| Del | Generell | Fylls i per app |
|---|---|---|
| `CLAUDE.md` | stomme | arkitektur, domänregler, kodstil |
| `.claude/agents/planerare.md`, `granskare.md`, `testare.md` | ✔ | |
| Domängranskare (t.ex. bokföring, GDPR) | | skapas av `starta-app` |
| `.claude/skills/feature-workflow`, `definition-of-done` | ✔ | |
| `.claude/skills/starta-app` | ✔ (körs en gång) | |
| `.claude/skills/publicera` | | skapas av `starta-app` |
| `scripts/check.sh` | | testkommandon |
| `.claude/settings.json` | ✔ kör `check.sh` efter varje ändring | |

## Förbättra mallen
Förbättringar som visar sig generella i en app förs tillbaka hit. Appar som redan skapats uppdateras inte automatiskt.
När mallen har stabiliserats kan de generella delarna paketeras som ett plugin så att förbättringar når alla appar.
