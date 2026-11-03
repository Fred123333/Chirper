# Chirper

Chirper est une petite application de microblogging construite avec Laravel. Elle permet de publier de courts messages, appelés « chirps », et de suivre les publications récentes depuis un fil d’actualité.

## Fonctionnalités

- Consulter les 50 chirps les plus récents, avec le nom de leur auteur et leur date de publication.
- Créer un compte, se connecter et se déconnecter.
- Publier un chirp de 255 caractères maximum lorsqu’on est connecté.
- Modifier ou supprimer ses propres chirps.
- Utiliser SQLite par défaut, ou configurer une autre base de données prise en charge par Laravel.

## Technologies

- PHP 8.3 ou supérieur et Laravel 13
- SQLite par défaut
- Blade, Tailwind CSS et Vite pour l’interface
- Node.js et npm pour compiler les ressources front-end

## Installation

Prérequis : PHP, Composer, Node.js et npm.

À la racine du projet, exécutez le script d’installation :

```bash
composer run setup
```

Ce script installe les dépendances, crée le fichier `.env` s’il n’existe pas, génère la clé de l’application, lance les migrations et compile les ressources front-end.

Pour démarrer l’application en développement, ouvrez deux terminaux :

```bash
php artisan serve
```

```bash
npm run dev
```

Ouvrez ensuite l’adresse indiquée par `php artisan serve` (par défaut `http://127.0.0.1:8000`).

## Tests

```bash
composer test
```
