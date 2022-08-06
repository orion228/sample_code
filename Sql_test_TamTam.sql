
#-1 Give the request that allows you to obtain the monthly turnover for the current year
SELECT sum(Qte*PrixUnitaire), MONTH(DateCmd) FROM Produit, Vente, Commande 
WHERE Produit.Ref=Vente.Ref AND Vente.Ncom=Commande.Ncom AND YEAR(DateCmd)=YEAR(NOW()) 
GROUP BY MONTH(DateCmd) 

#-2 Give the query that calculates the sales rate for each product

ELECT Ref, sum(Qte)/(select sum(Qte) FROM Vente) FROM Vente 
GROUP BY Ref 

#-3 Give the query that displays the best-selling product of the current month

SELECT Ref, Designation, tot 
FROM (SELECT Ref, Designation, SUM(Qte) as tot FROM Produit, Vente WHERE Produit.Ref=Vente.Ref GROUP BY Ref) 
ORDER BY tot DESC LIMIT 1

#-4  Give the query that allows you to add all the products of competitor GleenAlu to the Products table.

INSERT INTO Produit (Ref,Designation,PrixUnitaire,Dimension,code_machine) 
(SELECT Ref, Designation, PrixUnitaire, Dimension,code_machine FROM Produit_concurrent where Nom_Concurent="GleenAlu") 