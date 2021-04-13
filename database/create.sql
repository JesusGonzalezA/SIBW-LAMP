USE SIBW;

CREATE TABLE events
( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    photo VARCHAR(50),
    title VARCHAR(100) NOT NULL, 
    place VARCHAR(100) NOT NULL, 
    date DATE NOT NULL, 
    author VARCHAR(100) NOT NULL,
    description VARCHAR(3000)
);

CREATE TABLE comments
( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    idEvent INT NOT NULL,
    comment VARCHAR(300) NOT NULL,
    date DATE NOT NULL, 
    author VARCHAR(100) NOT NULL,
    FOREIGN KEY(idEvent) REFERENCES events(id)
);

CREATE TABLE banned_words
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE gallery
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    idEvent INT NOT NULL,
    photo VARCHAR(50) NOT NULL,
    FOREIGN KEY(idEvent) REFERENCES events(id)
);