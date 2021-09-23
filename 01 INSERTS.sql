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
                        (2, 12, 17, 'Ivysaur', 13, 1, 12.5),
                        (3, 12, 17, 'Venusaur', 100, 2, 12.5),
                        (4, 7, NULL, 'Charmander', 8.5, 0.6, 12.5),
                        (5, 7, NULL, 'Charmeleon', 19, 1.1, 12.5),
                        (6, 7, 18, 'Charizard', 90.5, 1.7, 12.5),
                        (7, 2, NULL, 'Squirtle', 9, 0.5, 12.5),
                        (8, 2, NULL, 'Wartortle', 22.5, 1, 12.5),
                        (9, 2, NULL, 'Blastoise', 85.5, 1.6, 12.5),
                        (11, 3, NULL, 'Metapod', 9.9, 0.7, 50);

COMMIT;