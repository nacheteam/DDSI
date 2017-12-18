DELIMITER |

CREATE OR REPLACE TRIGGER edadMinima
BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
  IF (NEW.Edad <= 14) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "No se puede dar de alta un usuario menor de 15 años.";
  END IF;
END |

DELIMITER ;
