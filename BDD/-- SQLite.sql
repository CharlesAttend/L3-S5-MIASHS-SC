SELECT Equipe.ID, Equipe.Nom, COUNT(*) AS "MATCHS_GAGNES"
FROM Rencontre
JOIN Equipe
WHERE (Rencontre.ID_Equipe_Domicile=Equipe.ID AND Rencontre.Score_Domicile>Rencontre.Score_Exterieur)
    OR (Rencontre.ID_Equipe_Exterieur=Equipe.ID AND Rencontre.Score_Domicile<Rencontre.Score_Exterieur) 
GROUP BY Equipe.ID, Equipe.Nom
HAVING COUNT(*) >= 20