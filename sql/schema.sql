CREATE TABLE segments (
    id_segment INT PRIMARY KEY,
    nom_segments VARCHAR(45)
);

CREATE TABLE temps (
    id_temps INT PRIMARY KEY,
    date_transaction DATE,
    annee INT,
    mois INT,
    trimestre INT,
    jour_semaine INT
);

CREATE TABLE clients (
    id_client VARCHAR(25) PRIMARY KEY,
    score_credit NUMERIC(12,2) NOT NULL,
    categorie_risque VARCHAR(20),
    taux_rejet NUMERIC(5,2),
    id_segment INT,
    FOREIGN KEY (id_segment) REFERENCES segments(id_segment)
);

CREATE TABLE comptes (
   id_compte  INT PRIMARY KEY,
    id_client VARCHAR(25),
    solde NUMERIC(12,2),
    FOREIGN KEY (id_client) REFERENCES clients(id_client)
);

CREATE TABLE produits (
    id_produit INT PRIMARY KEY,
    nom_produit VARCHAR(45),
    categorie VARCHAR(45)
);

CREATE TABLE agences (
    id_agence INT PRIMARY KEY,
    nom_agence VARCHAR(35)
);

CREATE TABLE transactions (
    id_transaction VARCHAR(25) PRIMARY KEY,
    id_compte INT,
    id_produit INT,
    id_agence INT,
    id_temps INT,
    montant NUMERIC(12,2) NOT NULL,
    devise VARCHAR(20),
    montant_eur NUMERIC(12,2) NOT NULL,
    type_operation VARCHAR(10) CHECK (type_operation IN ('Credit','Debit')),
    statut VARCHAR(20) CHECK (statut IN ('Rejete','Complete','En attente')),

    FOREIGN KEY (id_compte) REFERENCES comptes(id_compte),
    FOREIGN KEY (id_produit) REFERENCES produits(id_produit),
    FOREIGN KEY (id_agence) REFERENCES agences(id_agence),
    FOREIGN KEY (id_temps) REFERENCES temps(id_temps)
);