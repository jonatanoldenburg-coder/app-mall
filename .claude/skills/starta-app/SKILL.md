---
name: starta-app
description: Kör en gång när ett nytt repo skapats från app-mallen. Intervjuar användaren och fyller i CLAUDE.md, kontrollskript, domängranskare och publiceringsskill.
---
# Starta app

Målet är att göra mallen till appens egen uppsättning innan någon funktion byggs.

## 1. Intervju
Ställ frågorna nedan, högst fyra åt gången. Föreslå svar där du kan, så att användaren mest behöver bekräfta.
- Vad ska appen göra, för vem? Vad är första användbara versionen?
- Var ska den köras? Exempel: publicerad artefakt på claude.ai (en HTML-fil, data via `window.claude`),
  Azure (t.ex. .NET eller Node bakom Entra ID), eller annat.
- Vilka data hanterar den? Persondata? Ekonomi? Vem ska ha åtkomst?
- Vilka regler gäller i domänen (lag, avtal, affärsregler) som koden aldrig får bryta?
- Föredragen stack, eller ska du föreslå den enklaste som passar?

## 2. Förslag
Sammanfatta stack, struktur, datalagring, drift, domänregler och teststrategi på en skärm.
Välj det enklaste som räcker. Vänta på godkännande.

## 3. Fyll i uppsättningen
- **CLAUDE.md**: fyll i alla avsnitt, ta bort `>`-rader och platshållare.
- **scripts/check.sh**: ersätt platshållaren med riktiga kommandon (tester, lint, typkontroll).
  Lägg till ett första enkelt test så att skriptet faktiskt verifierar något.
- **Domängranskare**: om appen har viktiga domänregler, skapa `.claude/agents/<domän>granskare.md`
  med samma form som `granskare.md`, men fokuserad på domänreglerna och relevant lagstiftning.
  Exempel: bokföring (BAS, moms, SIE), GDPR och persondata, behörigheter.
- **Publicering**: skapa `.claude/skills/publicera/SKILL.md` som beskriver exakt hur appen driftsätts
  och vad som skyddar befintliga data. För en claude.ai-artefakt: uppdatera alltid den befintliga artefakten
  (samma URL), annars får den en tom databas.
- **README.md**: ersätt mallens text med appens.

## 4. Avsluta
Kör `scripts/check.sh`, committa ("Sätt upp <appnamn> från app-mallen") och föreslå första funktion
att bygga med `feature-workflow`.
