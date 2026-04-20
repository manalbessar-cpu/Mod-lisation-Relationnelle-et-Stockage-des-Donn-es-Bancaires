------Vue: Transactions + Clients + Comptes
CREATE VIEW v_transactions_clients AS
SELECT
    t.id_transaction,
    t.montant,
    t.montant_eur,
    t.devise,
    t.type_operation,
    t.statut,
    c.id_client,
    c.score_credit,
    c.categorie_risque,
    co.id_compte
FROM transactions t
JOIN comptes co ON t.id_compte = co.id_compte
JOIN clients c ON co.id_client = c.id_client;

--------Vue: Transactions + Temps (analyse temporelle)
CREATE VIEW v_transactions_temps AS
SELECT
    t.id_transaction,
    t.montant,
    t.montant_eur,
    tm.date_transaction,
    tm.annee,
    tm.mois,
    tm.trimestre
FROM transactions t
JOIN temps tm ON t.id_temps = tm.id_temps;

----------Vue complète (analyse bancaire globale)
CREATE VIEW v_bank_analysis AS
SELECT
    t.id_transaction,
    t.montant,
    t.montant_eur,
    t.type_operation,
    t.statut,
    c.id_client,
    c.categorie_risque,
    co.solde,
    p.nom_produit,
    a.nom_agence,
    tm.date_transaction
FROM transactions t
JOIN comptes co ON t.id_compte = co.id_compte
JOIN clients c ON co.id_client = c.id_client
JOIN produits p ON t.id_produit = p.id_produit
JOIN agences a ON t.id_agence = a.id_agence
JOIN temps tm ON t.id_temps = tm.id_temps;