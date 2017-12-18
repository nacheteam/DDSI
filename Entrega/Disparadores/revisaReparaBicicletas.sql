DELIMITER |

CREATE OR REPLACE TRIGGER revisaReparaBicicletas
BEFORE INSERT ON ReparaBicicleta
FOR EACH ROW
BEGIN
    IF (NEW.CodigoBicicleta<0 OR NEW.CodigoBicicleta>199) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de bicicleta fuera de los límites [0,199]';
    END IF;
    IF (NEW.CodigoPersonal<0 OR NEW.CodigoPersonal>29) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT='Código de personal fuera de los límites [0,29]';
    END IF;
END |

DELIMITER ;
