create database cookingbase;
use cookingbase; 

CREATE TABLE compte (solde int NOT NULL, mdp varchar(200),  nomc varchar(200));
CREATE TABLE cooking (adresse varchar(200) NOT NULL, referencestock varchar(200));
CREATE TABLE plat (nomp varchar(200) NOT NULL, quantiteproduits int, descriptif varchar(256), prix int, type varchar(200), listeingredients varchar(200), nomcdr varchar(200), unite varchar(200), adresse varchar(200), compteur int); 
CREATE TABLE cdr (nomcdr varchar(200) NOT NULL, soldecook int, nomc varchar(200), adresse varchar(200)); 
CREATE TABLE client (nomc varchar(200) NOT NULL, num varchar(200), adresse varchar(200), solde int, nomcdr varchar(200));
CREATE TABLE stock (referencestock varchar(200) NOT NULL, adresse varchar(200)); 
CREATE TABLE produit (nompro varchar(200) NOT NULL, categorie varchar(200),stockmin int, stockactuel int, stockmax int, nomfournisseur varchar(200), reffournisseur varchar(200), referencestock varchar(200), unite varchar(200)); 
CREATE TABLE fournisseur (reference varchar(200) NOT NULL, listeproduits varchar(200));
CREATE TABLE commande (numeroc varchar(200) NOT NULL, prixc int, nomc varchar(200)); 
CREATE TABLE prix (unite varchar(200) NOT NULL); 
CREATE TABLE compose (nompro varchar(200) NOT NULL, nomp varchar(200) NOT NULL);
CREATE TABLE composee (nomp varchar(200) NOT NULL, numeroc varchar(200) NOT NULL); 
CREATE TABLE fournit (nompro varchar(200) NOT NULL, reference varchar(200) NOT NULL); 
ALTER TABLE compte ADD CONSTRAINT PK_compte PRIMARY KEY (solde);
ALTER TABLE cooking ADD CONSTRAINT PK_cooking PRIMARY KEY (adresse);
ALTER TABLE plat ADD CONSTRAINT PK_plat PRIMARY KEY (nomp); 
ALTER TABLE cdr ADD CONSTRAINT PK_cdr PRIMARY KEY (nomcdr); 
ALTER TABLE client ADD CONSTRAINT PK_client PRIMARY KEY (nomc); 
ALTER TABLE stock ADD CONSTRAINT PK_stock PRIMARY KEY (referencestock);
ALTER TABLE produit ADD CONSTRAINT PK_produit PRIMARY KEY (nompro);
ALTER TABLE fournisseur ADD CONSTRAINT PK_fournisseur PRIMARY KEY (reference);
ALTER TABLE commande ADD CONSTRAINT PK_commande PRIMARY KEY (numeroc);
ALTER TABLE prix ADD CONSTRAINT PK_prix PRIMARY KEY (unite);
ALTER TABLE compose ADD CONSTRAINT PK_compose PRIMARY KEY (nompro, nomp); 
ALTER TABLE composee ADD CONSTRAINT PK_composee PRIMARY KEY (nomp, numeroc); 
ALTER TABLE fournit ADD CONSTRAINT PK_fournit PRIMARY KEY (nompro, reference);

 
insert into cdr values("Alice", 100, "Alice", "8 rue des Bauches");
insert into cdr values("Lucas", 100, "Lucas", "3 boulevard Exelmans");
insert into cdr values("Isaure", 100, "Isaure", "5 rue Crevaux");

insert into client values("Lena", "0677578685", "15 rue de Remusat", 100 ,"Lena");
insert into client values("Tristan", "0611076854", "3 rue des riches ", 90,"Tristan");
insert into client values("Victor", "06556677883", "23 rue de Clamart", 80, "Victor");
insert into client values("Alice", "0612345678", "8 rue des Bauches", 70, "Alice");
insert into client values("Lucas", "0687654321", "3 boulevard Exelmans", 60, "Lucas");
insert into client values("Isaure", "0698765432", "5 rue Crevaux", 50, "Isaure");

insert into compte values(100, "lenajonckheere", "Lena");
insert into compte values(90, "tristandarrigol", "Tristan");
insert into compte values(80, "victordufour", "Victor");
insert into compte values(70, "alicejonckheere", "Alice");
insert into compte values(60, "lucasjonckheere", "Lucas");
insert into compte values(50, "isaureberger", "Isaure"); 

insert into plat values("Carbonara", 6 ,"pates à la carbonara sauce à base d'oeuf et lardons", 15,"plat","spaghetti oeuf lardons fromage creme poivre","Alice","cook", "Paris", 0);
insert into plat values("Bolognaise", 4 ,"pates bolognaise sauce à base de tomates et boulettes de viande", 15,"plat","spaghetti coulistomates boeuf basilic","Lucas","cook","Paris", 0);
insert into plat values("Tomates-Mozza", 4 , "salade tomates mozzarella à base d'huile d'olive", 10, "entree", " tomates mozarella huiledolive basilic", "Lucas", "cook", "Paris", 0);
insert into plat values("Omelette", 4, "Omelette composee d'oeufs de fromage de tomates et de champignons", 10, "entree", "oeuf tomates fromage champignon", "Isaure", "cook", "Paris", 0);

insert into produit values("spaghetti", "pates", 1000, 5000, 10000, "Barilla", "1A1B1C1D1E", "01", "grammes");
insert into produit values("tomate", "legume", 10, 25, 100, "BelleFerme", "2A2B2C2D2E", "02", "pièce(s)");
insert into produit values("mozzarella", "laitage", 10, 25, 100, "BelleFerme", "2A2B2C2D2E", "03", "pièce(s)");
insert into produit values("lardon", "viande", 100, 180, 1000, "LeBoucher", "4A4B4C4D4E", "04", "grammes");
insert into produit values("oeuf", "produit animalier", 20, 40, 100, "BelleFerme", "2A2B2C2D2E", "05", "pièce(s)");
insert into produit values("champignon", "legume", 100, 400, 1000, "BelleFerme", "2A2B2C2D2E", "06", "grammes)");
insert into produit values("boeuf", "viande", 500, 1000, 5000, "LeBoucher", "4A4B4C4D4E", "07", "grammes");
insert into produit values("fromage", "laitage", 500, 1000, 5000, "BelleFerme", "2A2B2C2D2E", "08", "grammes");


