<div style="text-align:center;">
    <img src="https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/logo.png?raw=true" width="350px" alt="Logo WildBooking">
</div>

## Description

WildBooking est un site de réservation de matériel sportif pour la montagne. 
Il permet aux utilisateurs de visualiser différents articles, de les trier par sport, de les rechercher par nom et de trouver les produits disponibles en sélectionnant des dates.
Les utilisateurs doivent s'inscrire sur le site pour pouvoir réserver du matériel. 

Il existe également une application mobile qui permet aux utilisateurs de louer du matériel depuis leur propre smartphone.

Pour gérer les stocks des articles et des commandes, il existe un back-office.

## Objectifs

Les objectifs de WildBooking sont de :

* Faciliter la location de matériel sportif pour la montagne
* Proposer un large choix d'articles
* Offrir un service de qualité

## Fonctionnalités

Les principales fonctionnalités de WildBooking sont les suivantes :

* Formulaire d’inscription
* Formulaire de connexion
* Homepage avec 4 derniers produits ajoutés
* Catalogue avec tous le produits
* Filtre Catalogue selon la catégorie choisie
* Filtre Catalogue par mot clé
* Filtre Catalogue selon une période donnée
* Gestion du panier
* Page Contact
* Page Mon Compte
* Liste Commandes passées
* Visualisation de chaque commande
* Télécharger les factures en pdf
* Fonctionnalité mot de passe oublié
* BackOffice admin pour gérer : produits, catégories, commandes, clients

## Technos utilisées
* Application mobile : React Native
* Front-end : React JS TypeScript
* Back-end : Node JS TypeScript
* TypeORM
* PostgreSQL
* Adminer
* API : GraphQL
* Docker
* Expo Go

## Instructions d'installation et d'utilisation pour le site web


1. Installer Docker et exécuter les commandes suivantes sur le backend et le frontend :

2. npm install 

3. docker-compose up --build

4. Le site Web sera démarré sur localhost:3000 et Adminer sur localhost:8081.

5. Connectez-vous à Adminer avec les identifiants suivants :

* System : `PostegreSQL`
* Utilisateur : `wildRent`
* Mot de passe : `wildRent`

6. Importer le fichier `wildRent.sql` dans la base de données
[Utiliser le fichier SQL](WildBooking-back/wildRent.sql)

7. Se connecter au site Web ou à l'application mobile avec les identifiants suivants :

* Utilisateur : `user@gmail.com`
* Mot de passe : `UserUser2023!`
* Administrateur : `admin@gmail.com`
* Mot de passe : `AdminAdmin2023!`


## Instructions d'installation et d'utilisation pour l'application mobile

1. Téléchargez et installez l'application Expo sur votre téléphone portable.

2. Démarrez le conteneur WildBooking-back.

3. Accédez au dossier WildBooking-mobile, puis dans le terminal, exécutez les commandes suivantes :

4. npm install 

5. npx expo start

6. Ouvrez l'application Expo sur votre téléphone portable et scannez le QR code pour demarrer l'application.


![Homepage (site web)](https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/home.png?raw=true)  


![Catalogue (site web)](https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/catalogue.png?raw=true)  


![Récapitulatif commande (site web)](https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/recap-commande.png?raw=true)  


![Profil (site web)](https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/profile.png?raw=true)  


<img src="https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/home-mobile.png?raw=true" width="400px" alt="Screen Home (application mobile)">  


<img src="https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/catalogue-mobile.png?raw=true" width="400px" alt="Screen catalogue (application mobile)">  


<img src="https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/panier-mobile.png?raw=true" width="400px" alt="Screen panier (application mobile)">  


<img src="https://github.com/AndreaDellaBiancia/images-readme/blob/main/WildBooking/profile-mobile.png?raw=true" width="400px" alt="Screen Profil (application mobile)">
