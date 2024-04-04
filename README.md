# Sportify

## ***Projet en cours de réalisation***

## Introduction

Ce projet est une SAE libre. Le projet lui doit etre réalisé de A à Z.

Il s'agit d'un site web de pronostique (pari sportif) sur les matchs de divers sport.

Le site contient aussi une séction dédié a l'actualité sportive.

## Prérequis

Navigateur web

docker-desktop

## Lancement du projet 

Commencer par récuperer le projet : 
```bash
git clone https://forge.univ-lyon1.fr/p2200950/sportify.git
```
Suite à cela déplacer vous sur le dossier sportify/ si ce n'est pas déja fait avec : 

```bash
cd sportify/
```
Lancer la commande : 
```bash
docker-compose up -d 
```

Le site est accessible en tapant localhost dans le navigateur web de votre choix (de preference google chrome)

Vous pouvez remarquer que 3 sercices sont donc lancer : 
- La partie base de donnée 
- Le site web

Pour voir ces sercices faites : 
```bash
docker ps
```

Vous n'avez rien a faire juste à lancer le projet avec la commande et a profiter pleinement du site. 


Pour stopper le projet : 
```bash 
docker-compose down 
```

## Accès au site héberger

Lien du site : [Sportify](http://ec2-52-90-201-153.compute-1.amazonaws.com)

## Auteurs

* **Haithem HADJ AZZEM** _alias_ [@KeapRoof]
* **Rafik BOUCHENNA** _alias_ [@rafiklatrikdu69]
* **Ramazan KUS** _alias_ [@Rameray1]
* **Nahil RAHMANI** _alias_ [@]
