---
name: feature-workflow
description: Arbetsflödet för att bygga en ny funktion eller göra en större ändring, från plan till pull request.
---
# Feature-workflow

Använd för allt utöver triviala fixar (stavfel, en färg, en etikett).

1. **Plan** – låt subagenten `planerare` ta fram en plan. Visa planen för användaren och vänta på godkännande.
   Bygg inte innan planen är godkänd. Öppna frågor besvaras först.
2. **Gren** – skapa en gren `feature/<kort-namn>`.
3. **Implementation** – i huvudsessionen, steg för steg enligt planen. Kör `scripts/check.sh` efter varje steg.
   Avvik inte från planen utan att säga till. Visar sig planen vara fel: stanna och föreslå justering.
4. **Granskning** – kör `granskare`. Finns domängranskare i `.claude/agents/` och ändringen berör deras område,
   kör dem parallellt. Åtgärda allt under "Måste åtgärdas".
5. **Test** – kör `testare`.
6. **Klart?** – gå igenom skillen `definition-of-done`.
7. **Leverans** – commit med meddelande i imperativ som förklarar varför. Pusha grenen och öppna PR.
   Sammanfatta för användaren i högst fem rader: vad som ändrats, vad som testats, vad hen behöver kontrollera själv.
8. **Driftsättning** – först efter godkännande och merge, enligt projektets egen skill för publicering om en sådan finns.
