# Projet RH Analytics – SQL (PostgreSQL)

## 👤 Contexte du projet

Ce projet simule une mission réelle de Data Analyst SQL au sein de l’entreprise fictive **DataLendo**, pour le compte du service **Ressources Humaines (RH)**.

L’objectif est d’exploiter des données RH afin de fournir des **indicateurs clés**, des **analyses de performance** et des **insights décisionnels** utiles à la direction RH.

Ce projet est conçu pour démontrer mes compétences en :

- SQL avancé avec PostgreSQL
- Analyse de données RH
- Structuration de projets data
- Traduction de besoins business en requêtes analytiques

---

## 🎯 Objectifs business

Le service RH souhaite :

- Comprendre l’évolution des effectifs
- Identifier les départements à risque en matière de turnover
- Évaluer la performance des employés
- Analyser la rétention par cohorte d’embauche
- Disposer d’un tableau de bord RH exploitable

> **15 questions business** ont été posées par le manager RH et résolues exclusivement avec SQL.

---

## 🗄️ Données utilisées

Le projet repose sur **4 tables principales**, fournies au format CSV.

### 1. `employes`

Informations individuelles des employés :

- `id_employe` (PK)
- `nom`
- `prenom`
- `poste`
- `departement_id` (FK)
- `date_embauche`
- `date_depart`
- `salaire`

### 2. `departements`

Référentiel des départements :

- `id_departement` (PK)
- `nom_departement`
- `manager`
- `budget`

### 3. `performances`

Évaluations trimestrielles de performance :

- `id_performance` (PK)
- `id_employe` (FK)
- `date_evaluation`
- `score`
- `objectifs_atteints`

### 4. `turnover`

Historique des départs d’employés :

- `id_depart` (PK)
- `id_employe`
- `date_depart`
- `type_depart` (volontaire / involontaire)
- `anciennete`

---

## 🛠️ Outils et technologies

- **PostgreSQL** : requêtes analytiques
- **VS Code** : environnement de travail
- **SQL** : CTE, `JOIN`, agrégations, sous-requêtes et fonctions de fenêtrage

---

## 🔄 Transformations et enrichissement des données

Pour rendre les données exploitables pour l’analyse RH, plusieurs colonnes dérivées ont été créées.

### 📌 Colonnes calculées

- **Ancienneté** : durée entre la date d’embauche et aujourd’hui, ou la date de départ pour les anciens employés.
- **Cohorte d’embauche** : année d’entrée dans l’entreprise.
- **Score moyen** : moyenne des scores de performance par employé.
- **Catégorie de performance** :
  - Faible : score inférieur à 60
  - Moyenne : score compris entre 60 et 80
  - Élevée : score supérieur à 80

> Ces transformations permettent une analyse temporelle, comparative et stratégique des données RH.

---

## 📊 Analyses réalisées (questions business)

Les analyses couvrent notamment :

1. Calcul de l’effectif actuel
2. Calcul du turnover global et par département
3. Répartition des départs volontaires et involontaires
4. Calcul du salaire moyen par département
5. Identification des employés ayant une forte ancienneté
6. Analyse de la performance moyenne par département
7. Identification des 10 employés les plus performants
8. Identification des employés en difficulté
9. Analyse de la rétention par cohorte d’embauche
10. Identification des départements qui recrutent le plus
11. Identification des employés sans feedback récent
12. Segmentation des employés selon leur performance
13. Calcul des indicateurs RH par département
14. Analyse croisée des performances et de l’ancienneté
15. Construction d’un tableau de KPI RH par département et cohorte

> Toutes les analyses sont réalisées à l’aide de requêtes SQL documentées, sans outil de visualisation.

---

## 📈 Exemples de KPI produits

Les principaux indicateurs calculés dans le cadre du projet sont :

- Effectif total et effectif par département
- Salaire moyen par département
- Score de performance moyen
- Ancienneté moyenne des employés
- Taux de turnover global et par département
- Répartition des départs par type
- Taux de rétention par cohorte d’embauche

Ces indicateurs permettent de suivre l’évolution des effectifs, de repérer les tendances et d’éclairer les décisions de la direction RH.

---

## 🧠 Insights et recommandations RH

Les résultats des analyses peuvent permettre de formuler plusieurs recommandations :

- Mettre en place des plans de rétention pour les employés présentant un risque de départ.
- Examiner les causes du turnover élevé dans certains départements.
- Renforcer les processus de feedback et d’évaluation des performances.
- Analyser les écarts salariaux en tenant compte du poste, de l’ancienneté et des responsabilités.
- Améliorer le processus d’intégration (*onboarding*) des nouveaux employés.
- Mettre en place un suivi régulier des KPI RH pour faciliter la prise de décision.

> Les recommandations définitives doivent être fondées sur les résultats réellement observés dans les données.

---

## 📁 Structure du projet

```text
rh-analytics-sql/
│
├── data/
│   ├── employes.csv
│   ├── departements.csv
│   ├── performances.csv
│   └── turnover.csv
│
├── sql/
│   ├── 01_creation_tables.sql
│   ├── 02_import_donnees.sql
│   ├── 03_nettoyage_donnees.sql
│   ├── 04_analyses_rh.sql
│   └── 05_kpi_rh.sql
│
└── README.md
```

*Cette arborescence est une proposition d’organisation. Les noms des fichiers doivent être adaptés à la structure réelle du dépôt.*

---

## 🚀 Comment exécuter le projet

1. Installer PostgreSQL et ouvrir un client SQL, par exemple pgAdmin ou VS Code avec une extension PostgreSQL.
2. Créer une base de données dédiée au projet RH Analytics.
3. Créer les tables à partir du schéma défini dans les scripts SQL.
4. Importer les fichiers CSV dans les tables correspondantes.
5. Exécuter les scripts de nettoyage et de préparation des données.
6. Lancer les requêtes d’analyse RH.
7. Vérifier les résultats et documenter les principaux enseignements.

---

## 👨‍💻 Auteur

**Sonia Tsago**  

---

## ✅ Pourquoi ce projet est pertinent pour un recruteur ?

- Mise en pratique d’un cas métier réaliste
- Utilisation de SQL avec PostgreSQL
- Maîtrise des jointures, agrégations, CTE et fonctions de fenêtrage
- Capacité à traduire des besoins métier en analyses de données
- Construction d’indicateurs clés de performance RH
- Capacité à transformer des résultats SQL en recommandations métier
- Organisation et documentation d’un projet data

**Objectif final :** démontrer ma capacité à exploiter des données RH, à répondre à des questions métier et à produire des analyses utiles à la prise de décision.
