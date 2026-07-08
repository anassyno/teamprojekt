USE e_commerce;


--1. Herausforderung
SELECT *
FROM bestellung 
WHERE id in
	(
	SELECT id
	FROM bestellung
	WHERE pr_id in
		(
		SELECT pr_id
		FROM bestellung
		GROUP BY pr_id, ku_id, datum
		HAVING COUNT(*) > 1
		)
	AND	ku_id in
		(
		SELECT ku_id
		FROM bestellung
		GROUP BY pr_id, ku_id, datum
		HAVING COUNT(*) > 1
		)
	AND datum in 
		(
		SELECT datum
		FROM bestellung
		GROUP BY pr_id, ku_id, datum
		HAVING COUNT(*) > 1
		)
	);

--Jahr nach Umsatz sortiert
SELECT YEAR(datum) Jahr, SUM(gesamtpreis) Umsatz
FROM bestellung
GROUP BY YEAR(datum)
ORDER BY SUM(gesamtpreis) DESC;

--Monate nach Umsatz sortiert
SELECT MONTH(datum) Monat, YEAR(datum) Jahr,  SUM(gesamtpreis) Umsatz
FROM bestellung
GROUP BY MONTH(datum), YEAR(datum)
ORDER BY SUM(gesamtpreis) DESC;


--Top 3 Kunden
SELECT TOP 3 WITH TIES k.ku_id ID, k.vorname Vorname, k.nachname Nachname, SUM(b.gesamtpreis) Umsatz
FROM bestellung b
JOIN kunde k on k.ku_id = b.ku_id
GROUP BY k.ku_id, k.vorname, k.nachname
ORDER BY SUM(b.gesamtpreis) DESC;

--Bottom 3 Kunden
SELECT TOP 3 WITH TIES k.ku_id ID, k.vorname Vorname, k.nachname Nachname, SUM(b.gesamtpreis) Umsatz
FROM bestellung b
JOIN kunde k on k.ku_id = b.ku_id
GROUP BY k.ku_id, k.vorname, k.nachname
ORDER BY SUM(b.gesamtpreis);

--Kunden ohne Bestellungen
SELECT k.ku_id ID, k.vorname Vorname, k.nachname Nachname
FROM kunde k
WHERE k.ku_id NOT IN 
	(
	SELECT b.ku_id
	FROM bestellung b
	);


--Lieferanten nach beschäftigung sortiert
SELECT l.bezeichnung Lieferant, COUNT(*) 'Bestellungen geliefert'
FROM bestellung b
JOIN produkt p on p.pr_id = b.pr_id
JOIN lieferant l on l.li_id = p.li_id
GROUP BY l.bezeichnung
ORDER BY COUNT(*) DESC;

--Lieferanten nach Umsatz sortiert
SELECT l.bezeichnung Lieferant, SUM(gesamtpreis) Umsatz
FROM bestellung b
JOIN produkt p on p.pr_id = b.pr_id
JOIN lieferant l on l.li_id = p.li_id
GROUP BY l.bezeichnung 
ORDER BY SUM(gesamtpreis) DESC;

