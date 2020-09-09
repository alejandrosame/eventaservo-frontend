# eventaservo_fasado

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/28862f5b8896425fa129987279ed16f5)](https://app.codacy.com/gh/eventaservo/frontend?utm_source=github.com&utm_medium=referral&utm_content=eventaservo/frontend&utm_campaign=Badge_Grade_Dashboard)

> Fasado de Eventa Servo

Vi bezonos instali la "backend" servilon por redakti la API-ojn. Tamen, vi povas
uzi Staging-Servilon (https://staging.eventaservo.org) se vi volas nur programi
la fasadon.

## Por uzi en via komputilo, sen Docker

Kopiu kaj redaktu ```.env``` dosieron
```bash
$ cp .env.ekzemplo .env
```

Uzu ```yarn``` por startigi la servilon. 
```
$ yarn install
$ yarn dev
```

## Per Docker

```
docker-compose up --build
```
