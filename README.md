---

# 📊 Projet : Stockage des Données Bancaires – SQL Analytics

## 📁 Description du projet

Ce projet a pour objectif de construire une base de données analytique à partir de données bancaires nettoyées (**FinanceCore**), en utilisant **SQL**, **Python** et **Jupyter Notebook**.

Il permet :

* la création du schéma relationnel
* l’optimisation des performances avec des index
* la création de vues analytiques
* l’analyse des données via Python
* la préparation pour un futur Data Warehouse ou Dashboard décisionnel

---

# 📂 Structure du projet

```
STOCKAGE DES DONNÉES BANCAIRES/
│
├── data/
│   └── financecore_clean.csv
│
├── env/
│
├── sql/
│   ├── schema.sql
│   ├── index.sql
│   └── views.sql
│
├── src/
│   └── banking-sql-analytics.ipynb
│
├── .env
└── .gitignore
```

---

# 📁 Description des dossiers

## 📁 data/

Contient les données sources utilisées dans le projet.

**financecore_clean.csv**

Dataset nettoyé contenant :

* transactions bancaires
* clients
* comptes
* agences
* segments
* produits
* dimension temps

Ces données servent à alimenter la base analytique.

---

## 📁 env/

Environnement virtuel Python contenant les dépendances nécessaires au projet :

Exemple :

```
pandas
sqlalchemy
psycopg2
matplotlib
streamlit
```

Permet d’isoler les bibliothèques du projet.

---

## 📁 sql/

Contient les scripts SQL nécessaires à la création et l’optimisation de la base de données.

### 📄 schema.sql

Script utilisé pour :

* créer les tables
* définir les clés primaires
* définir les clés étrangères
* structurer le modèle relationnel analytique

Tables principales :

* agences
* clients
* comptes
* transactions
* produits
* segments
* temps

---

### 📄 index.sql

Script utilisé pour améliorer les performances :

* accélération des requêtes
* optimisation des jointures
* amélioration du temps de réponse

Exemple :

```
CREATE INDEX idx_transactions_date
ON transactions(date_transaction);
```

---

### 📄 views.sql

Contient des vues analytiques pour simplifier l’analyse des données.

Exemples :

* évolution mensuelle des transactions
* analyse par segment client
* performance par agence
* analyse par produit bancaire

Objectif :

faciliter les requêtes décisionnelles sans écrire de SQL complexe.

---

## 📁 src/

Contient le notebook principal d’analyse.

### 📄 banking-sql-analytics.ipynb

Ce notebook permet :

* connexion à PostgreSQL avec SQLAlchemy
* exécution des requêtes SQL
* exploration des données
* jointures analytiques
* visualisation des résultats

Technologies utilisées :

* Python
* Pandas
* SQLAlchemy
* PostgreSQL

---

## 📄 .env

Contient les variables sensibles de connexion à la base :

```
DB_HOST=
DB_NAME=
DB_USER=
DB_PASSWORD=
DB_PORT=
```

Permet de sécuriser les informations confidentielles.

---

## 📄 .gitignore

Permet d’exclure du dépôt Git :

```
env/
.env
__pycache__/
*.pyc
```

Protège les fichiers sensibles et inutiles.

---

# 🎯 Objectifs du projet

Ce projet permet de :

✅ structurer des données bancaires propres
✅ créer une base SQL analytique
✅ optimiser les performances avec des index
✅ créer des vues analytiques
✅ analyser les données avec Python
✅ préparer la construction d’un Data Warehouse

---

