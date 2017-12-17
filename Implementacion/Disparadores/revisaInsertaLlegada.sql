DELIMITER |

CREATE OR REPLACE TRIGGER revisaInsertaLlegada
BEFORE INSERT ON Llega
FOR EACH ROW
BEGIN
    IF (NEW.CodigoBicicleta<0 OR NEW.CodigoBicicleta>199) THEN
        SIGNAL SQLSTATE "45000"
        SET MESSAGE_TEXT="Código de bicicleta fuera de los límites [0,199]";
    END IF;
    IF (NEW.CodigoEstacion<0 OR NEW.CodigoEstacion>29) THEN
        SIGNAL SQLSTATE "45000"
        SET MESSAGE_TEXT="Código de estacion fuera de los límites [0,29]";
    END IF;
END |

DELIMITER ;
