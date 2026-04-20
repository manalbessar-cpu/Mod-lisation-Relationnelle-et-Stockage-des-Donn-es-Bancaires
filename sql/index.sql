CREATE INDEX IF NOT EXISTS idx_clientid
ON clients(id_client);

CREATE INDEX IF NOT EXISTS idx_datetransaction
ON temps(date_transaction);

CREATE INDEX IF NOT EXISTS idx_agence
ON transactions(id_agence);
