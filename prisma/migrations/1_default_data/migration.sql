-- Inserts for User table (password: abc123456)
INSERT INTO "User" ("id", "email", "password", "name", "address", "role")
VALUES
    ('1', 'user1@example.com', '$2b$10$1XpzUYu8FuvuaBb3SC0xzuR9DX7KakbMLt0vLNoZ.UnLntDMFc4LK', 'User 1', 'Address 1', 'USER'),
    ('2', 'user2@example.com', '$2b$10$1XpzUYu8FuvuaBb3SC0xzuR9DX7KakbMLt0vLNoZ.UnLntDMFc4LK', 'User 2', 'Address 2', 'USER'),
    ('3', 'user3@example.com', '$2b$10$1XpzUYu8FuvuaBb3SC0xzuR9DX7KakbMLt0vLNoZ.UnLntDMFc4LK', 'User 3', 'Address 3', 'USER'),
    ('4', 'vincenzofadda@gmail.com', '$2b$10$1XpzUYu8FuvuaBb3SC0xzuR9DX7KakbMLt0vLNoZ.UnLntDMFc4LK', 'Vincenzo', 'Address 3', 'ADMIN'),
    ('5', 'freitasjoaovictor49@gmail.com', '$2b$10$1XpzUYu8FuvuaBb3SC0xzuR9DX7KakbMLt0vLNoZ.UnLntDMFc4LK', 'João', 'Address 3', 'ADMIN');

-- Inserts for Product table
INSERT INTO "Product" ("id", "name", "urlName", "picture", "modelUrl", "basePrice", "discountPercentage", "description")
VALUES
    (
        '1',
        'Minion',
        'minion',
        'https://media.istockphoto.com/id/474935824/pt/foto/minions-brinquedo-isolado-em-fundo-branco.jpg?s=612x612&w=0&k=20&c=K308oD2hHAgzIkwNCTGyed3dK2zr_O6MPr2Oz9eEXfE=',
        'https://sketchfab.com/models/ddfb31bbaf524d1ea5b818e368301988/embed?autostart=1&internal=1&tracking=0&ui_ar=0&ui_infos=0&ui_snapshots=1&ui_stop=0&ui_theatre=1&ui_watermark=0',
        19.99,
        5,
        'Modelo 3D de um minion do filme Meu Malvado Favorito.'
    );
    

-- Inserts for Category table
INSERT INTO "Category" ("id", "name", "description")
VALUES
    ('1', 'Personagens', ''),
    ('2', 'Animais', ''),
    ('3', 'Utilitários', '');

-- Inserts for CategoryToProduct table
INSERT INTO "_CategoryToProduct" ("A", "B")
VALUES
    ('1', '1'); -- Product 1 belongs to Category 1