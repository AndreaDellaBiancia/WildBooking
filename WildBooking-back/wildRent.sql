-- Adminer 4.8.1 PostgreSQL 15.1 dump

INSERT INTO "category" ("id", "name") VALUES
(1,	'Randonnée'),
(2,	'Ski'),
(3,	'Escalade'),
(4,	'Canyoning');


INSERT INTO "product" ("id", "name", "description", "image", "price", "quantity", "category_id") VALUES
(1,	'CHAUSSURES DE RANDONNEE NEIGE SALOMON QUESTMID X ULTRA 04 MEN',	'TAILLE : 42 ',	'https://contents.mediadecathlon.com/p2061492/k$19450a9d077d9d92fcf946c926ce6b44/sq/chaussures-de-randonnee-neige-salomon-questmid-x-ultra-04-men.jpg?format=auto&f=969x969',	12,	10,	1),
(2,	'CHAUSSURES CHAUDES ET IMPERMÉABLES DE RANDONNÉE - SH100 ULTRA-WARM - HOMME',	'TAILLE : 39',	'https://contents.mediadecathlon.com/p2047865/k$d1dbac37ae3c0ec0f58fe4e76e4c5734/sq/chaussures-chaudes-et-impermeables-de-randonnee-sh100-ultra-warm-homme.jpg?format=auto&f=969x969',	11,	8,	1),
(3,	'SKI ALPIN FEMME AVEC FIXATION - NOVA 6 - ROSSIGNOL',	'TAILLE : 156cm',	'https://contents.mediadecathlon.com/p2332585/k$725707a2b92d6e4d399e9fd9b54cd238/sq/ski-alpin-femme-avec-fixation-nova-6-rossignol.jpg?format=auto&f=969x969',	30,	5,	2),
(4,	'HEAD  CHAUSSURES DE SKI CUBE 3 60 W WHITE',	'TAILLE : 38',	'https://contents.mediadecathlon.com/m4132786/k$f00f5470d9873e05d0c5e46211134494/sq/chaussures-de-ski-cube-3-60-w-white.jpg?format=auto&f=969x969',	15,	5,	2),
(5,	'KIT VIA FERRATA ERGO CORE',	'TAILLE M',	'https://contents.mediadecathlon.com/p1993529/k$d2155622668e7dc54cc0f0c469da4a8f/sq/kit-via-ferrata-ergo-core.jpg?format=auto&f=969x969',	17,	10,	3),
(6,	'CASQUE D''ESCALADE ET D''ALPINISME - ROCK BLANC',	'TAILLE : 54cm - 61cm',	'https://contents.mediadecathlon.com/p1149248/k$86cdce0e57b30c138c1bb7e47e16248a/sq/casque-descalade-et-dalpinisme-rock-blanc.jpg?format=auto&f=969x969',	5,	12,	3),
(7,	'VESTE DE CANYONING 5MM HOMME - MASKOON 500',	'TAILLE : M',	'https://contents.mediadecathlon.com/p1979493/k$25b2acf57a00c4b6b4a11bc9aa276705/sq/veste-de-canyoning-5mm-homme-maskoon-500.jpg?format=auto&f=969x969',	16,	6,	4),
(8,	'PANTALON COMBINAISON CANYONING 5MM UNISEXE - MASKOON 300',	'TAILLE : M',	'https://contents.mediadecathlon.com/p1979471/k$7c0426a402592addb0e4b245dca564e7/sq/pantalon-combinaison-canyoning-5mm-unisexe-maskoon-300.jpg?format=auto&f=969x969',	20,	8,	4);


INSERT INTO "role" ("id", "name") VALUES
(1,	'ADMIN'),
(2,	'CUSTOMER');

INSERT INTO "user" ("id", "firstname", "lastname", "phone", "email", "password") VALUES
(1,	'Jean',	'Dupon',	655478456,	'admin@gmail.com',	'$argon2i$v=19$m=16,t=2,p=1$TjZPa0FlMnlkS0huV0tJQw$47N01AgIsRsBWh4MzmNTSA'),
(2,	'Elodie',	'Championne',	785456996,	'user@gmail.com',	'$argon2i$v=19$m=16,t=2,p=1$TjZPa0FlMnlkS0huV0tJQw$dmvbGj8LfFjKS630ewsCHw');

INSERT INTO "user_roles_role" ("role_id", "user_id") VALUES
(1,	1),
(2,	2);

ALTER TABLE ONLY "public"."order" ADD CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0" FOREIGN KEY (customer_id) REFERENCES "user"(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."product" ADD CONSTRAINT "FK_0dce9bc93c2d2c399982d04bef1" FOREIGN KEY (category_id) REFERENCES category(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."reservation" ADD CONSTRAINT "FK_8d50e21bc2ac13e92bddb624513" FOREIGN KEY (product_id) REFERENCES product(id) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."reservation" ADD CONSTRAINT "FK_f43b5c5ed718e0bda39bc696b4a" FOREIGN KEY (order_id) REFERENCES "order"(id) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."user_roles_role" ADD CONSTRAINT "FK_09d115a69b6014d324d592f9c42" FOREIGN KEY (user_id) REFERENCES role(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;
ALTER TABLE ONLY "public"."user_roles_role" ADD CONSTRAINT "FK_0e2f5483d5e8d52043f97634538" FOREIGN KEY (role_id) REFERENCES "user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

-- 2022-12-20 16:19:53.580784+00
