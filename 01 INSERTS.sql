-- Datos de https://www.wikidex.net/wiki/Lista_de_Pok%C3%A9mon_de_la_primera_generaci%C3%B3n
START TRANSACTION;
    USE PokemonRPG;
    INSERT INTO Tipo(idTipo, tipo)
        VALUES      (1, 'Acero'),
                    (2,'Agua'),
                    (3,'Bicho'),
                    (4,'Dragón'),
                    (5,'Electrico'),
                    (6,'Fantasma'),
                    (7,'Fuego'),
                    (8,'Hada'),
                    (9,'Hielo'),
                    (10,'Lucha'),
                    (11,'Normal'),
                    (12,'Planta'),
                    (13,'Psíquico'),
                    (14,'Roca'),
                    (15,'Siniestro'),
                    (16,'Tierra'),
                    (17,'Veneno'),
                    (18,'Volador');

    INSERT INTO Especie (idEspecie, idTipo, idTipo2, nombre, peso, altura, probabilidadH)
                VALUES  (1, 12, 17, 'Bulbasaur', 6.9, 0.7, 12.5),
                        (11, 3, null, 'Metapod', 9.9, 0.7, 50),
                        (12, 3, 18, 'Butterfree', 32, 1.1, 50),
                        (13, 3, 17, 'Weedle', 3.2, 0.3, 50),
                        (14, 3, 17, 'Kakuna', 10, 0.6, 50),
                        (15, 3, 17, 'Beedrill', 29.5, 1, 50),
                        (16, 11, 18,'Pidgey', 1.8, 0.3, 50),
                        (17, 11, 18,'Pidgeotto', 30, 1.1, 50),
                        (18, 11, 18,'Pidgeot', 39.5, 1.5, 50),
                        (19, 11, null,'Rattata', 3.5, 0.3, 50),
                        (20, 11, null,'Raticate', 18.5, 0.7, 50);

COMMIT;