# FolketingetForDummies

Dette projekt har til formål at skabe en indgangsvinkel for lægmanden til at forstå det politiske landskab i folketinget. 

Ønskede funktionaliteter:
* Venn-diagrammer der viser hvordan partier og/eller politikere har stemt ved diverse forslag
* Valgtest
* Lægmandsforklaringer (ikke noget med at kun kunne finde logningsloven ved at søge "L93")
* Domstolsafgørelser (nok et separat projekt...)
* Links til nyhedsartikler omkring emnet
  * Politisk vægtning af nyhedsmediet i stil med Reddit botten [u/coverageanalysisbot](https://reddit.com/u/coverageanalysisbot)

NB: Ønskede funktionaliteter skal ikke ses som en backlog eller et udtryk for at der er et reelt ønske om at få det 
udviklet. Det er blot en liste over funktionaliteter som har været nævnt og blot har til formål at give contributors 
et udgangspunkt for den videre diskussion om udviklingen.

## Kodesprog
Framework'et som jeg vil foreslå at køre med er Ruby on Rails, da det 1) er velegnet til at udvikle en web-app og 2) 
er et nemt sprog at lære at kende for den nye Rubyist 3) er et framework jeg har god erfaring med, hvilket nok ville 
være en forudsætning for at jeg ville kunne tage tjansen som maintainer. 

## Contribution
Pull requests er velkomne. For større ændringer, så opret venligst en issue først for at diskutere ændringerne. 

Sørg venligst for at lave og opdatere tests som nødvendigt, samt at følge 
[The Ruby Style Guide](https://rubystyle.guide/) og [The Rails Style Guide](https://rails.rubystyle.guide/)


## Licens
To be determined

## Afsluttende note
Dette projekt tilhører Danmark og alle os som ønsker en mere gennemskuelig politik, så vi kan tage mere velfunderede 
valg i fremtiden. Af den årsag vil jeg lade alle aspekter af dette projekt være op til debat blandt dem der ønsker
at bidrage. Derfor er der heller ikke nogen licens endnu da jeg vil lade det være op til fællesskabet at beslutte 
hvad der er bedst. Jeg har godt nok sat nogle rammer som en start, men de er ikke til for at begrænse projektet, 
blot skabe et fundament man kan gå ud fra. Så snart projektet begynder at få et fodfæste, så vil ting som framework 
og licens af praktiske årsager selvfølgelig ikke længere være til diskussion. Men indtil da, så byd gerne ind med 
hvad I tænker!

---

## Development guide
Projektet benytter `docker-compose` til at køre systemet (`podman-compose` kan også anvendes for Linux-brugere)

* Opret en `.env.development` baseret på `.env.example`. Værdierne er ikke vigtige, da containerne selv refererer til dem.
* Kør `docker-compose build` for at builde systemet. Det skal som det mindste gøres før første run.
* Kør `docker-compose up -d main` for at køre systemet. Det vil nu være tilgængeligt på `http://localhost:3000`

Nedenstående kræver at `main` kører
* For at køre alle tests: `docker-compose run folketinget_for_dummies_test`
* For at køre enkelt test med verbose: `podman-compose run folketinget_for_dummies_test test/test_file.rb:10 TESTOPTS="-v"`

Første gang systemet sættes op skal databasen oprettes:
* `docker exec folketinget_for_dummies_app bin/rails db:create RAILS_ENV=development`
* `docker exec folketinget_for_dummies_app bin/rails db:migrate RAILS_ENV=development`
