USE e_commerce;
  
-- Kategorien

INSERT INTO kategorie VALUES
('EL', 'Elektronik'),
('BU', 'Bürobedarf'),
('HA', 'Haushalt'),
('KL', 'Kleidung'),
('SP', 'Sport'),
('LE', 'Lebensmittel');
 
 
-- Lieferanten
 
INSERT INTO lieferant VALUES
('TechSupply GmbH', 'Hauptstrasse 10', '90402', 'Nuernberg'),
('OfficePro AG', 'Bahnhofstrasse 5', '90403', 'Nuernberg'),
('HomeGoods KG', 'Ringstrasse 22', '90429', 'Nuernberg'),
('FashionTrade GmbH', 'Marktplatz 7', '90411', 'Nuernberg'),
('SportMax GmbH', 'Sportallee 12', '90762', 'Fuerth'),
('FoodLine GmbH', 'Industriestrasse 18', '91052', 'Erlangen');
  
 
-- Kunden
 
INSERT INTO kunde VALUES
('Max', 'Mueller', 'Gartenstrasse 1', '90402', 'Nuernberg'),
('Anna', 'Schmidt', 'Friedrichstrasse 8', '90403', 'Nuernberg'),
('Lukas', 'Weber', 'Koenigstrasse 12', '90409', 'Nuernberg'),
('Maria', 'Fischer', 'Parkweg 4', '90419', 'Nuernberg'),
('Tim', 'Wagner', 'Seestrasse 15', '90425', 'Nuernberg'),
('Laura', 'Becker', 'Waldweg 9', '90762', 'Fuerth'),
('Jonas', 'Hoffmann', 'Bergstrasse 3', '91052', 'Erlangen'),
('Sofia', 'Klein', 'Lindenweg 6', '90431', 'Nuernberg');
  
-- Produkte

INSERT INTO produkt VALUES
('Laptop', 'EL', 1, 690.00),
('Monitor', 'EL', 1, 150.00),
('Tastatur', 'BU', 2, 35.00),
('Maus', 'BU', 2, 32.50),
('Druckerpapier', 'BU', 2, 7.99),
('Staubsauger', 'HA', 3, 259.90),
('Kaffeemaschine', 'HA', 3, 439.90),
('T-Shirt', 'KL', 4, 29.90),
('Jacke', 'KL', 4, 68.90),
('Sneaker', 'SP', 5, 74.90),
('Fussball', 'SP', 5, 49.50),
('Fitnessmatte', 'SP', 5, 24.0),
('Kaffee', 'LE', 6, 12.90),
('Tee', 'LE', 6, 3.90),
('Schokolade', 'LE', 6, 1.29);
  
 
-- Bestellungen

INSERT INTO bestellung VALUES
(1, 1, '2023-07-01', 1),
(2, 1, '2023-07-01', 2),
(3, 2, '2023-07-02', 1),
(4, 2, '2023-07-02', 2),
(5, 3, '2023-07-03', 5),
(6, 4, '2023-07-04', 1),
(7, 4, '2023-07-04', 1),
(8, 5, '2023-07-05', 3),
(9, 5, '2023-07-06', 1),
(10, 6, '2024-07-06', 1),
(11, 6, '2024-07-07', 2),
(12, 7, '2024-07-07', 1),
(13, 8, '2024-07-08', 4),
(14, 8, '2024-07-08', 2),
(15, 3, '2024-07-09', 6),
(1, 2, '2025-07-10', 1),
(3, 1, '2025-07-10', 2),
(6, 5, '2025-07-11', 1),
(10, 7, '2025-07-12', 1),
(13, 4, '2025-07-12', 3),
(1, 3, '2023-08-01', 1),
(2, 4, '2023-08-01', 2),
(3, 5, '2023-08-02', 1),
(4, 6, '2023-08-02', 1),
(5, 7, '2023-08-03', 2),
(6, 8, '2023-08-04', 1),
(7, 1, '2023-08-05', 4),
(8, 2, '2023-08-05', 1),
(9, 3, '2023-08-06', 2),
(10, 4, '2023-08-07', 1),
(11, 5, '2023-08-08', 3),
(12, 6, '2023-08-09', 1),
(13, 1, '2024-02-14', 2),
(14, 2, '2024-03-15', 1),
(15, 4, '2024-04-16', 5),
(1, 5, '2024-05-17', 1),
(2, 6, '2024-06-18', 2),
(3, 7, '2024-07-19', 1),
(4, 8, '2024-08-20', 3),
(5, 1, '2024-09-21', 1),
(6, 2, '2024-10-22', 2),
(7, 3, '2024-11-23', 1),
(8, 4, '2024-12-24', 4),
(9, 6, '2024-01-10', 1),
(10, 8, '2024-02-20', 2),
(11, 1, '2025-01-15', 1),
(12, 2, '2025-02-16', 1),
(13, 3, '2025-03-17', 2),
(14, 4, '2025-04-18', 1),
(15, 5, '2025-05-19', 3),
(1, 6, '2025-06-20', 1),
(2, 7, '2025-07-21', 1),
(3, 8, '2025-08-22', 2),
(4, 1, '2025-09-23', 1),
(5, 2, '2025-10-24', 4),
(6, 3, '2025-11-25', 1),
(7, 5, '2025-12-26', 2),
(8, 7, '2025-03-30', 1);
