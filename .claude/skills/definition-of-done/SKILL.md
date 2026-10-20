---
name: definition-of-done
description: Checklista som ska vara uppfylld innan en ändring räknas som klar eller committas.
---
# Definition of done

Gå igenom varje punkt och redovisa ja/nej. En ändring är inte klar förrän alla relevanta punkter är ja.

- [ ] Ändringen gör det planen beskriver, varken mer eller mindre.
- [ ] `scripts/check.sh` går igenom, och ny logik har egna tester.
- [ ] Granskarens "Måste åtgärdas" är åtgärdade, liksom eventuella domängranskares.
- [ ] Inga domänregler i CLAUDE.md är brutna.
- [ ] Befintliga data fungerar (bakåtkompatibelt).
- [ ] Inga hemligheter i koden. Användarinmatning saneras.
- [ ] Fungerar i mobilbredd och i mörkt läge, om appen har ett UI.
- [ ] Inga nya beroenden, eller så är de godkända i planen.
- [ ] README och CLAUDE.md uppdaterade om arkitektur, datamodell eller drift ändrats.
- [ ] Commit-meddelandet beskriver varför, inte bara vad.
