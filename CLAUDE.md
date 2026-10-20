# <APPNAMN> – instruktioner för Claude

> Denna fil är en stomme. Kör skillen `starta-app` så fyller Claude i den tillsammans med dig.
> Ta bort alla rader som börjar med `>` när filen är ifylld.

<En till två meningar: vad appen gör, för vem och varför.>

## Arkitektur – ändra inte utan uttryckligt beslut
> Stack, var koden ligger, hur data lagras och nås, hur appen körs och publiceras.
- <Stack och struktur>
- <Datalagring och dataåtkomst>
- <Drift: var appen körs och hur den publiceras>
- <Tillåtna externa beroenden>

## Domänregler – får aldrig brytas
> Affärsregler, lagkrav och dataskydd som koden alltid ska respektera.
- <Regel>

## Säkerhet och data
- Inga hemligheter (nycklar, lösenord, tokens) i koden eller i repot.
- Användartext saneras innan den visas eller sparas.
- <Vilka persondata appen hanterar och hur de skyddas>

## Kodstil
- <Språk i UI, kommentarer och commit-meddelanden>
- Följ befintlig stil i koden. Gör minsta möjliga ändring som löser uppgiften.
- Ingen omstrukturering "i förbifarten". Inga nya beroenden utan att de står i planen.
- Nya fält i datamodellen ska tåla att gamla poster saknar dem.

## Verifiering
- Kör `scripts/check.sh` efter varje ändring. Den körs också automatiskt efter filändringar.
- <Hur UI kontrolleras visuellt>

## Arbetsflöde
Följ skillen `feature-workflow` för allt utöver triviala fixar. Subagenter:
`planerare` → (implementation i huvudsessionen) → `granskare` (+ eventuell domängranskare) → `testare`.
Klart betyder att `definition-of-done` är uppfylld.
