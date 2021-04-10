USE SIBW;

CREATE TABLE events
( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
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