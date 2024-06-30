CREATE TABLE food
(
    id    SERIAL         NOT NULL PRIMARY KEY,
    title VARCHAR(100)   NOT NULL,
    image VARCHAR(1000)  NOT NULL,
    price DECIMAL(8, 2)  NOT NULL
);