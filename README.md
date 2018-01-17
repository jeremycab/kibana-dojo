
# Kibana tutorial

## Pré-requis
Les applications nécessitent d'être installées pour exécuter l'environnement de travail :
 1. Docker : https://docs.docker.com/engine/installation/
 2. Docker compose : https://docs.docker.com/compose/install/#install-compose

## Installation complète
Pour installer et exécuter l'environnement de travail ainsi qu'importer les données de tests :

    make

## Démarrer l'application
Pour simplement démarrer Kibana et l'environnement associé :

    make up

## Arrêter l'application
Pour stopper l'environnement de travail

    make down

## Charger les données de tests
Pour recharger les données de tests dans ElasticSearch

    make load-data
## Usage
Une fois correctement installé et configuré, Kibana est disponible à l'adresse : http://localhost:5601
