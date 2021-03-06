CREATE TABLE features (
  id INT NOT NULL AUTO_INCREMENT,
  image_id INT NOT NULL,
  algorithm VARCHAR(15) NOT NULL,
  x DOUBLE NOT NULL,
  y DOUBLE NOT NULL,
  size DOUBLE NOT NULL,
  angle DOUBLE NOT NULL,
  descriptor TEXT NOT NULL,
  weight INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (image_id) REFERENCES images (id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
) ENGINE = InnoDB;
