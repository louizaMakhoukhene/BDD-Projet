create table Createur(
    nCreateur Number(3) primary key,
    prenom varchar(15),
    nom varchar(15), 
    dateNaissance Date,
    nationalite varchar(15),
	anneeExperienceCreateur Date

);

create table MaisonMode(
    nomMaisonMode varchar(20) primary key,
    nomFondateur varchar(15),
    dateFondation Date,
    Localisation varchar(15),
    logo varchar(10),
	siteWEB varchar(30),
    nCreateur Number(3),
    constraint fk_createur
    foreign key (nCreateur)
    references Createur(nCreateur)
    on delete cascade);


create table Collection(
    nCollection number(4) primary key,
    nomCollection varchar(15),
    themeCollection varchar(15),
    saison varchar(10),
    nbrTenues number(3),
    nomMaisonMode varchar(20),
    nCreateur Number(3),
    foreign key (nCreateur) references Createur(nCreateur),
    constraint fk_nomMaisonMode
    foreign key (nomMaisonMode)
    references MaisonMode(nomMaisonMode)
    on delete cascade
    );

CREATE TABLE Tenue (
    nTenue NUMBER(3) PRIMARY KEY, 
    taille NUMBER(2),
    prix NUMBER(5),
    nomTenue VARCHAR(10),
    Description VARCHAR(30),
    categorieTenue VARCHAR(20),
    nomMaisonMode VARCHAR(20),
    nCollection NUMBER(4),
    nCreateur NUMBER(5),

    CONSTRAINT fk_nomMaisonMode
        FOREIGN KEY (nomMaisonMode)
        REFERENCES MaisonMode(nomMaisonMode)
        ON DELETE CASCADE,
    
    CONSTRAINT fk_nCollection
        FOREIGN KEY (nCollection)
        REFERENCES Collection(nCollection)
        ON DELETE CASCADE,

    CONSTRAINT fk_nCreateur
        FOREIGN KEY (nCreateur)
        REFERENCES Createur(nCreateur)
        ON DELETE CASCADE
);
