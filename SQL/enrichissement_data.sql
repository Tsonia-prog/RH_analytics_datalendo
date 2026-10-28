-- Ancienneté des employés (en annés)

ALTER TABLE employes
ADD COLUMN anciennete INT;

UPDATE employes
SET anciennete = EXTRACT (YEAR FROM AGE(COALESCE(date_depart,CURRENT_DATE), date_embauche));

-- Cohorte d'embauche

ALTER TABLE employes
ADD COLUMN cohorte_embauche INT;

UPDATE employes
SET cohorte_embauche = EXTRACT(YEAR FROM date_embauche);

-- Score moyen par employé

CREATE VIEW performace_moyenne AS
SELECT 
    id_employe,
    ROUND(AVG(Score),2) AS score_moyen
FROM performances
GROUP BY id_employe;