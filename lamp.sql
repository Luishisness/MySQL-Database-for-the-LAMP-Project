/* author: Shawn Vega
   Professor: Deena Engel
   Class: Database Design and Web implementation 
   Homework 5: Lamp Project
*/

/* ---------------------------------------PART 1:  script to create all of the tables for controlled vocabularies ("reference tables") that you will need along with the INSERT queries required to populate those tables-----------------------------------------  */

DROP TABLE IF EXISTS artisTable;
DROP TABLE IF EXISTS pokemon_topsun_blueback_errorTable;
DROP TABLE IF EXISTS pokemon_topsun_blueback_Table;
DROP TABLE IF EXISTS pokemon_topsun_greenback_Table;
DROP TABLE IF EXISTS pokemon_japanese_baseerror_Table;
DROP TABLE IF EXISTS pokemon_japanese_base_Table;
DROP TABLE IF EXISTS pokemon_english_base_Table;
DROP TABLE IF EXISTS pokemon_english_basefirstedition_Table;
DROP TABLE IF EXISTS psaTable;
DROP TABLE IF EXISTS priceTable;


CREATE TABLE artistTable (
	artist_id int NOT NULL AUTO_INCREMENT,
	artist_firstName varchar(30),
	artist_lastName varchar(30),
	artist_origin varchar(30),
	artist_sex varchar(20),
	artist_dobMonth int,	
	artist_dobDay int ,
	artist_dobYear int,
	artist_alive boolean,
	PRIMARY KEY (artist_id)
);

CREATE TABLE pokemon_topsun_blueback_errorTable(
	pokemon_id int NOT NULL AUTO_INCREMENT,
	pokemon_origin varchar(30),
	pokemon_setName varchar(100),
	pokemon_name varchar(30),
	pokemon_number varchar(20),
	pokemon_stage int,	
	pokemon_type varchar(20),
	pokemon_manufacture varchar(20),
	pokemon_year int,
	PRIMARY KEY (pokemon_id),
	FOREIGN KEY(pokemon_id) REFERENCES artistTable (artist_id)

);

CREATE TABLE pokemon_topsun_blueback_Table(
	pokemon_id int NOT NULL AUTO_INCREMENT,
	pokemon_origin varchar(30),
	pokemon_setName varchar(100),
	pokemon_name varchar(30),
	pokemon_number int,
	pokemon_stage int,	
	pokemon_type varchar(20),
	pokemon_manufacture varchar(20),
	pokemon_year int,
	PRIMARY KEY (pokemon_id),
	FOREIGN KEY(pokemon_id) REFERENCES artistTable (artist_id)

);

CREATE TABLE pokemon_topsun_greenback_Table(
	pokemon_id int NOT NULL AUTO_INCREMENT,
	pokemon_origin varchar(30),
	pokemon_setName varchar(100),
	pokemon_name varchar(30),
	pokemon_number int,
	pokemon_stage int,	
	pokemon_type varchar(20),
	pokemon_manufacture varchar(20),
	pokemon_year int,
	PRIMARY KEY (pokemon_id),
	FOREIGN KEY(pokemon_id) REFERENCES artistTable (artist_id)
);

CREATE TABLE pokemon_japanese_baseerror_Table(
	pokemon_id int NOT NULL AUTO_INCREMENT,
	pokemon_origin varchar(30),
	pokemon_setName varchar(100),
	pokemon_name varchar(30),
	pokemon_number int,
	pokemon_stage int,	
	pokemon_type varchar(20),
	pokemon_rarity varchar(20),
	pokemon_manufacture varchar(20),
	pokemon_year int,
	PRIMARY KEY (pokemon_id),
	FOREIGN KEY(pokemon_id) REFERENCES artistTable (artist_id)
);

CREATE TABLE pokemon_japanese_base_Table(
	pokemon_id int NOT NULL AUTO_INCREMENT,
	pokemon_origin varchar(30),
	pokemon_setName varchar(100),
	pokemon_name varchar(30),
	pokemon_number int,
	pokemon_stage int,	
	pokemon_type varchar(20),
	pokemon_rarity varchar(20),
	pokemon_manufacture varchar(20),
	pokemon_year int,
	PRIMARY KEY (pokemon_id),
	FOREIGN KEY(pokemon_id) REFERENCES artistTable (artist_id)
);

CREATE TABLE pokemon_english_base_Table(
	pokemon_id int NOT NULL AUTO_INCREMENT,
	pokemon_origin varchar(30),
	pokemon_setName varchar(100),
	pokemon_name varchar(30),
	pokemon_number int,
	pokemon_stage int,	
	pokemon_type varchar(20),
	pokemon_rarity varchar(20),
	pokemon_manufacture varchar(20),
	pokemon_year int,
	PRIMARY KEY (pokemon_id),
	FOREIGN KEY(pokemon_id) REFERENCES artistTable (artist_id)
);

CREATE TABLE pokemon_english_basefirstedition_Table(
	pokemon_id int NOT NULL AUTO_INCREMENT,
	pokemon_origin varchar(30),
	pokemon_setName varchar(100),
	pokemon_name varchar(30),
	pokemon_number int,
	pokemon_stage int,	
	pokemon_type varchar(20),
	pokemon_rarity varchar(20),
	pokemon_manufacture varchar(20),
	pokemon_year int,
	PRIMARY KEY (pokemon_id),
	FOREIGN KEY(pokemon_id) REFERENCES artistTable (artist_id)
);


CREATE TABLE psaTable (
	psa_id int NOT NULL AUTO_INCREMENT,
	poke_name varchar(30),
	psa_one_population int,
	psa_two_population  int,
	psa_three_population  int,
	psa_four_population  int,
	psa_five_population  int,
	psa_six_population  int,
	psa_seven_population  int,
	psa_eight_population  int,
	psa_nine_population  int,
	psa_ten_population  int,
	PRIMARY KEY (psa_id),
	FOREIGN KEY(psa_id) REFERENCES artistTable (artist_id)
);

CREATE TABLE priceTable (
	price_id int NOT NULL AUTO_INCREMENT,
	poke_name varchar(30),
	psa_one_price int,
	psa_two_price  int,
	psa_three_price  int,
	psa_four_price  int,
	psa_five_price  int,
	psa_six_price  int,
	psa_seven_price  int,
	psa_eight_price  int,
	psa_nine_price  int,
	psa_ten_price  int,
	PRIMARY KEY (price_id),
	FOREIGN KEY(price_id) REFERENCES artistTable (artist_id)

);


/* ---------------------------------------PART 1&3:  Populating tables with data-----------------------------------------  */


/* ---------------------------------------Topsun Blue Back Error-----------------------------------------  */

/*bulbasaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese", "Blue Back Topsun Error","bulbasaur","none",1,"grass","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"bulbasaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"bulbasaur",1,2,3,4,5,6,7,88,9,10);

/*ivysaur*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese ", "Blue Back Topsun Error","ivysaur","none",2,"grass","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"ivysaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"ivysaur",1,2,3,4,5,6,7,8,9,10);

/*venusaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese", " Blue Back Topsun Error","venusaur","none",3,"grass","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"venusaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"venusaur",1,2,3,4,5,6,7,8,9,10);


/*charmander*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese ", "Blue Back Topsun Error","charmander","none",1,"Fire","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"charmander",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmander",1,2,3,4,5,6,7,8,9,10);

/*charmeleon*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese", " Blue Back Topsun Error","charmeleon","none",2,"Fire","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"charmeleon",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmeleon",1,2,3,4,5,6,7,8,9,10);

/*Charizard*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese ", "Blue Back Topsun Error","Charizard","none",3,"Fire","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*squirtle*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese", " Blue Back Topsun Error","squirtle","none",1,"water","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"squirtle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"squirtle",1,2,3,4,5,6,7,8,9,10);

/*wartortle*/ 
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese", " Blue Back Topsun Error ","wartortle","none",2,"water","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"wartortle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"wartortle",1,2,3,4,5,6,7,8,9,10);

/*blastoise*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese", " Blue Back Topsun Error","blastoise","none",3,"water","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"blastoise",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"blastoise",1,2,3,4,5,6,7,8,9,10);

/*abra*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese ", "Blue Back Topsun Error","abra","none",1,"psychic","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"abra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"abra",1,2,3,4,5,6,7,8,9,10);

/*kadabra*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese ", "Blue Back Topsun Error","kadabra","none",2,"psychic","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"kadabra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"kadabra",1,2,3,4,5,6,7,8,9,10);

/*alakazam*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",02,02,2009,true);
INSERT INTO pokemon_topsun_blueback_errorTable VALUES(pokemon_id,"Japanese", " Blue Back Topsun Error","alakazam","none",3,"psychic","Nintendo",1995);
INSERT INTO psaTable VALUES(psa_id ,"alakazam",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"alakazam",1,2,3,4,5,6,7,8,9,10);

/* ---------------------------------------Topsun Blue Back-----------------------------------------  */


 
/*bulbasaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese ", "Topsun Blue Back","bulbasaur",1,1,"grass","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"bulbasaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"bulbasaur",1,2,3,4,5,6,7,8,9,10);

/*ivysaur*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","ivysaur",2,2,"grass","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"ivysaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"ivysaur",1,2,3,4,5,6,7,8,9,10);

/*venusaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","venusaur",3,3,"grass","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"venusaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"venusaur",1,2,3,4,5,6,7,8,9,10);

/*charmander*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","charmander",4,1,"Fire","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"charmander",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmander",1,2,3,4,5,6,7,8,9,10);

/*charmeleon*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","charmeleon",5,2,"Fire","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"charmeleon",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmeleon",1,2,3,4,5,6,7,8,9,10);

/*Charizard*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","Charizard",6,3,"Fire","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*squirtle*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","squirtle",7,1,"water","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"squirtle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"squirtle",1,2,3,4,5,6,7,8,9,10);

/*wartortle*/ 
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","wartortle",8,2,"water","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"wartortle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"wartortle",1,2,3,4,5,6,7,8,9,10);

/*blastoise*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","blastoise",9,3,"water","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"blastoise",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"blastoise",1,2,3,4,5,6,7,8,9,10);

/*abra*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","abra",63,1,"psychic","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"abra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"abra",1,2,3,4,5,6,7,8,9,10);

/*kadabra*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese", " Topsun Blue Back","kadabra",64,2,"psychic","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"kadabra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"kadabra",1,2,3,4,5,6,7,8,9,10);

/*alakazam*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",03,02,2009,true);
INSERT INTO pokemon_topsun_blueback_Table VALUES(pokemon_id,"Japanese ", "Topsun Blue Back","alakazam",65,3,"psychic","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"alakazam",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"alakazam",1,2,3,4,5,6,7,8,9,10);

/* ---------------------------------------Topsun Green Back-----------------------------------------  */

/*bulbasaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese", " Topsun Green Back","bulbasaur",1,1,"grass","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"bulbasaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"bulbasaur",1,2,3,4,5,6,7,8,9,10);

/*ivysaur*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","ivysaur",2,2,"grass","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"ivysaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"ivysaur",1,2,3,4,5,6,7,8,9,10);

/*venusaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","venusaur",3,3,"grass","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"venusaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"venusaur",1,2,3,4,5,6,7,8,9,10);

/*charmander*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","charmander",4,1,"Fire","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"charmander",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmander",1,2,3,4,5,6,7,8,9,10);

/*charmeleon*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","charmeleon",5,2,"Fire","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"charmeleon",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmeleon",1,2,3,4,5,6,7,8,9,10);

/*Charizard*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","Charizard",6,3,"Fire","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);
 

/*squirtle*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese", " Topsun Green Back","Charizard",7,1,"water","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"squirtle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"squirtle",1,2,3,4,5,6,7,8,9,10);

/*wartortle*/ 
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","Charizard",8,2,"water","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*blastoise*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese", " Topsun Green Back","Charizard",9,3,"water","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*abra*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","abra",63,1,"psychic","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"abra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"abra",1,2,3,4,5,6,7,8,9,10);

/*kadabra*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese", " Topsun Green Back","kadabra",64,2,"psychic","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"kadabra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"kadabra",1,2,3,4,5,6,7,8,9,10);

/*alakazam*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",04,02,2009,true);
INSERT INTO pokemon_topsun_greenback_Table VALUES(pokemon_id,"Japanese ", "Topsun Green Back","alakazam",65,3,"psychic","Nintendo",1995 );
INSERT INTO psaTable VALUES(psa_id ,"alakazam",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"alakazam",1,2,3,4,5,6,7,8,9,10);

/* --------------------------------------- Japanese Base Set Error-----------------------------------------  */

 
/*bulbasaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese ", "Base Set Error (1st Ed.)","bulbasaur",1,1,"grass","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"bulbasaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"bulbasaur",1,2,3,4,5,6,7,8,9,10);

/*ivysaur*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese", " Base Set Error (1st Ed.)","ivysaur",2,2,"grass","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"ivysaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"ivysaur",1,2,3,4,5,6,7,8,9,10);

/*venusaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese ", "Base Set Error (1st Ed.)","venusaur",3,3,"grass","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"venusaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"venusaur",1,2,3,4,5,6,7,8,9,10);

/*charmander*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese", " Base Set Error (1st Ed.)","Charmander",4,1,"Fire","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"Charmander",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charmander",1,2,3,4,5,6,7,8,9,10);

/*charmeleon*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese", " Base Set Error (1st Ed.)","charmeleon",5,2,"Fire","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"charmeleon",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmeleon",1,2,3,4,5,6,7,8,9,10);

/*Charizard*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese ", "Base Set Error (1st Ed.)","Charizard",6,3,"Fire","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*squirtle*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese", " Base Set Error (1st Ed.)","squirtle",7,1,"water","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"squirtle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"squirtle",1,2,3,4,5,6,7,8,9,10);

/*wartortle*/ 
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese ", "Base Set Error (1st Ed.)","wartortle",8,2,"water","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"wartortle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"wartortle",1,2,3,4,5,6,7,8,9,10);

/*blastoise*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese ", "Base Set Error (1st Ed.)","blastoise",9,3,"water","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"blastoise",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"blastoise",1,2,3,4,5,6,7,8,9,10);

/*abra*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese", " Base Set Error (1st Ed.)","abra",63,1,"psychic","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"abra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"abra",1,2,3,4,5,6,7,8,9,10);

/*kadabra*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese ", "Base Set Error (1st Ed.)","kadabra",64,2,"psychic","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"kadabra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"kadabra",1,2,3,4,5,6,7,8,9,10);

/*alakazam*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",05,02,2009,true);
INSERT INTO pokemon_japanese_baseerror_Table VALUES(pokemon_id,"Japanese ", "Base Set Error (1st Ed.)","alakazam",65,3,"psychic","none","Nintendo",1996 );
INSERT INTO psaTable VALUES(psa_id ,"alakazam",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"alakazam",1,2,3,4,5,6,7,8,9,10);

/* --------------------------------------- Japanese Base Set-----------------------------------------  */

 
/*bulbasaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese ", "Base Set","bulbasaur",1,1,"grass","circle","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"bulbasaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"bulbasaur",1,2,3,4,5,6,7,8,9,10);

/*ivysaur*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","ivysaur",2,2,"grass","diamond","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"ivysaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"ivysaur",1,2,3,4,5,6,7,8,9,10);

/*venusaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","venusaur",3,3,"grass","star","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"venusaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"venusaur",1,2,3,4,5,6,7,8,9,10);

/*charmander*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","charmander",4,1,"Fire","circle","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"charmander",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmander",1,2,3,4,5,6,7,8,9,10);

/*charmeleon*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","charmeleon",5,2,"Fire","diamond","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"charmeleon",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmeleon",1,2,3,4,5,6,7,8,9,10);

/*Charizard*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","Charizard",6,3,"Fire","star","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*squirtle*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese ", "Base Set","squirtle",7,1,"water","circle","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"squirtle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"squirtle",1,2,3,4,5,6,7,8,9,10);

/*wartortle*/ 
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","wartortle",8,2,"water","diamond","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"wartortle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"wartortle",1,2,3,4,5,6,7,8,9,10);

/*blastoise*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","blastoise",9,3,"water","star","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"blastoise",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"blastoise",1,2,3,4,5,6,7,8,9,10);

/*abra*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","abra",63,1,"psychic","circle","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"abra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"abra",1,2,3,4,5,6,7,8,9,10);

/*kadabra*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","kadabra",64,2,"psychic","diamond","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"kadabra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"kadabra",1,2,3,4,5,6,7,8,9,10);

/*alakazam*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",06,02,2009,true);
INSERT INTO pokemon_japanese_base_Table VALUES(pokemon_id,"Japanese", " Base Set","alakazam",65,3,"psychic","star","Nintendo",1996  );
INSERT INTO psaTable VALUES(psa_id ,"alakazam",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"alakazam",1,2,3,4,5,6,7,8,9,10);

/* ---------------------------------------English Base Set-----------------------------------------  */


 
/*bulbasaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","bulbasaur",44,1,"grass","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"bulbasaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"bulbasaur",1,2,3,4,5,6,7,8,9,10);

/*ivysaur*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","ivysaur",30,2,"grass","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"ivysaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"ivysaur",1,2,3,4,5,6,7,8,9,10);

/*venusaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","venusaur",15,3,"grass","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"venusaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"venusaur",1,2,3,4,5,6,7,8,9,10);

/*charmander*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","charmander",46,1,"Fire","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"charmander",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmander",1,2,3,4,5,6,7,8,9,10);

/*charmeleon*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","charmeleon",24,2,"Fire","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"charmeleon",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmeleon",1,2,3,4,5,6,7,8,9,10);

/*Charizard*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","Charizard",4,3,"Fire","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*squirtle*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","squirtle",63,1,"water","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"squirtle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"squirtle",1,2,3,4,5,6,7,8,9,10);

/*wartortle*/ 
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English ", "Base Set-Shadowless","wartortle",42,2,"water","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"wartortle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"wartortle",1,2,3,4,5,6,7,8,9,10);

/*blastoise*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English ", "Base Set-Shadowless","blastoise",2,3,"water","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"blastoise",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"blastoise",1,2,3,4,5,6,7,8,9,10);

/*abra*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English ", "Base Set-Shadowless","abra",65,1,"psychic","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"abra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"abra",1,2,3,4,5,6,7,8,9,10);

/*kadabra*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English ", "Base Set-Shadowless","kadabra",32,2,"psychic","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"kadabra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"kadabra",1,2,3,4,5,6,7,8,9,10);

/*alakazam*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",07,02,2009,true);
INSERT INTO pokemon_english_base_Table VALUES(pokemon_id,"English", " Base Set-Shadowless","alakazam",1,3,"psychic","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"alakazam",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"alakazam",1,2,3,4,5,6,7,8,9,10);

/* ---------------------------------------English Base Set First Edition-----------------------------------------  */

 
/*bulbasaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English ", "Base Set-Shadowless (1st Ed.)","bulbasaur",44,1,"grass","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"bulbasaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"bulbasaur",1,2,3,4,5,6,7,8,9,10);

/*ivysaur*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","ivysaur",30,1,"grass","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"ivysaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"ivysaur",1,2,3,4,5,6,7,8,9,10);

/*venusaur*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","venusaur",15,1,"grass","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"venusaur",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"venusaur",1,2,3,4,5,6,7,8,9,10);

/*charmander*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","charmander",46,1,"Fire","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"charmander",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmander",1,2,3,4,5,6,7,8,9,10);

/*charmeleon*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English ", "Base Set-Shadowless (1st Ed.)","charmeleon",24,2,"Fire","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"charmeleon",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"charmeleon",1,2,3,4,5,6,7,8,9,10);

/*Charizard*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","Charizard",4,3,"Fire","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"Charizard",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"Charizard",1,2,3,4,5,6,7,8,9,10);

/*squirtle*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","squirtle",63,1,"water","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"squirtle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"squirtle",1,2,3,4,5,6,7,8,9,10);

/*wartortle*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","wartortle",42,2,"water","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"wartortle",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"wartortle",1,2,3,4,5,6,7,8,9,10); 

/*blastoise*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","blastoise",2,3,"water","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"blastoise",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"blastoise",1,2,3,4,5,6,7,8,9,1120);

/*abra*/
INSERT INTO artistTable VALUES(artist_id, "Mitsuhiro" ,"Arita","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","abra",65,1,"psychic","circle","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"abra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"abra",1,2,3,4,5,6,7,8,9,1230);

/*kadabra*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","kadabra",32,2,"psychic","diamond","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"kadabra",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"kadabra",1,2,3,4,5,6,7,8,9,110);

/*alakazam*/
INSERT INTO artistTable VALUES(artist_id, "Ken" ,"Sugimori","Japan","Male",08,02,2009,true);
INSERT INTO pokemon_english_basefirstedition_Table VALUES(pokemon_id,"English", " Base Set-Shadowless (1st Ed.)","alakazam",1,3,"psychic","star","Nintendo",1999);
INSERT INTO psaTable VALUES(psa_id ,"alakazam",1,2,3,4,5,6,7,8,9,10);
INSERT INTO priceTable VALUES(price_id,"alakazam",1,2,3,4,5,6,7,8,9,101);


/*Show the customer the different tables and data associated*/
SELECT *
FROM artistTable; 

SELECT *
FROM pokemon_topsun_blueback_errorTable;

SELECT *
FROM pokemon_topsun_blueback_Table;

SELECT *
FROM pokemon_topsun_greenback_Table;

SELECT *
FROM pokemon_japanese_baseerror_Table;

SELECT *
FROM pokemon_japanese_base_Table;

SELECT *
FROM pokemon_english_base_Table;

SELECT *
FROM pokemon_english_basefirstedition_Table;

SELECT *
FROM psaTable;

SELECT *
FROM priceTable;

/* ---------------------------------------PART 2:  Tables that will be used with user data entry-----------------------------------------  */


/*Show the price of all the PSA 8 cards from the blueback error series and show artists*/
SELECT artistTable.artist_firstName, priceTable.psa_eight_price,pokemon_topsun_blueback_errorTable.pokemon_name
FROM priceTable,artistTable,pokemon_topsun_blueback_errorTable
WHERE artistTable.artist_id=priceTable.price_id AND artistTable.artist_id=pokemon_topsun_blueback_errorTable.pokemon_id;

/*show  all the english and Japanese cards and show the artists and pokemon name*/
SELECT artistTable.artist_firstName AS Artist,
CONCAT(pokemon_topsun_blueback_errorTable.pokemon_setName,'-', pokemon_topsun_blueback_errorTable.pokemon_name) AS blueback_err,
CONCAT(pokemon_topsun_blueback_Table.pokemon_setName ,'-', pokemon_topsun_blueback_Table.pokemon_name) AS blueback,
CONCAT(pokemon_topsun_greenback_Table.pokemon_setName ,'-', pokemon_topsun_greenback_Table.pokemon_name) AS greenback,
CONCAT(pokemon_japanese_baseerror_Table.pokemon_setName ,'-', pokemon_japanese_baseerror_Table.pokemon_name) AS japan_base_err,
CONCAT(pokemon_japanese_base_Table.pokemon_setName ,'-', pokemon_japanese_base_Table.pokemon_name) AS japan_base,
CONCAT(pokemon_english_base_Table.pokemon_setName,'-',pokemon_english_base_Table.pokemon_name) AS English_base,
CONCAT(pokemon_english_basefirstedition_Table.pokemon_setName,'-',pokemon_english_basefirstedition_Table.pokemon_name) AS English_first
FROM  artistTable,pokemon_topsun_blueback_errorTable,pokemon_topsun_blueback_Table,pokemon_topsun_greenback_Table,pokemon_japanese_baseerror_Table,
pokemon_japanese_base_Table,pokemon_english_base_Table,pokemon_english_basefirstedition_Table
WHERE artistTable.artist_id=pokemon_topsun_blueback_errorTable.pokemon_id AND pokemon_topsun_blueback_errorTable.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_topsun_blueback_Table.pokemon_id AND pokemon_topsun_blueback_Table.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_topsun_greenback_Table.pokemon_id AND pokemon_topsun_greenback_Table.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_japanese_baseerror_Table.pokemon_id AND pokemon_japanese_baseerror_Table.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_japanese_base_Table.pokemon_id AND pokemon_japanese_base_Table.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_english_base_Table.pokemon_id AND pokemon_english_base_Table.pokemon_origin='English'
AND artistTable.artist_id=pokemon_english_basefirstedition_Table.pokemon_id AND pokemon_english_basefirstedition_Table.pokemon_origin='English';

/*Show only english cards*/
SELECT artistTable.artist_firstName AS Artist,
CONCAT(pokemon_english_base_Table.pokemon_setName,'-',pokemon_english_base_Table.pokemon_name) AS English_base,
CONCAT(pokemon_english_basefirstedition_Table.pokemon_setName,'-',pokemon_english_basefirstedition_Table.pokemon_name) AS English_first
FROM  artistTable, pokemon_english_base_Table,pokemon_english_basefirstedition_Table
WHERE artistTable.artist_id=pokemon_english_base_Table.pokemon_id AND pokemon_english_base_Table.pokemon_origin='English'
AND artistTable.artist_id=pokemon_english_basefirstedition_Table.pokemon_id AND pokemon_english_basefirstedition_Table.pokemon_origin='English';

/*Show only japanese cards*/
SELECT artistTable.artist_firstName AS Artist,
CONCAT(pokemon_topsun_blueback_errorTable.pokemon_setName,'-', pokemon_topsun_blueback_errorTable.pokemon_name) AS blueback_err,
CONCAT(pokemon_topsun_blueback_Table.pokemon_setName ,'-', pokemon_topsun_blueback_Table.pokemon_name) AS blueback,
CONCAT(pokemon_topsun_greenback_Table.pokemon_setName ,'-', pokemon_topsun_greenback_Table.pokemon_name) AS greenback,
CONCAT(pokemon_japanese_baseerror_Table.pokemon_setName ,'-', pokemon_japanese_baseerror_Table.pokemon_name) AS japan_base_err,
CONCAT(pokemon_japanese_base_Table.pokemon_setName ,'-', pokemon_japanese_base_Table.pokemon_name) AS japan_base
FROM  artistTable,pokemon_topsun_blueback_errorTable,pokemon_topsun_blueback_Table,pokemon_topsun_greenback_Table,pokemon_japanese_baseerror_Table,
pokemon_japanese_base_Table
WHERE artistTable.artist_id=pokemon_topsun_blueback_errorTable.pokemon_id AND pokemon_topsun_blueback_errorTable.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_topsun_blueback_Table.pokemon_id AND pokemon_topsun_blueback_Table.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_topsun_greenback_Table.pokemon_id AND pokemon_topsun_greenback_Table.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_japanese_baseerror_Table.pokemon_id AND pokemon_japanese_baseerror_Table.pokemon_origin='Japanese'
AND artistTable.artist_id=pokemon_japanese_base_Table.pokemon_id AND pokemon_japanese_base_Table.pokemon_origin='Japanese';

/*show all psa 10 cards,pokemon, and artist associated with pricing*/
SELECT priceTable.poke_name,priceTable.psa_ten_price,artistTable.artist_firstName AS Artist
FROM priceTable,artistTable
WHERE artistTable.artist_id=priceTable.price_id;
