CREATE TRIGGER revisaReparaBicicletas
BEFORE INSERT ON ReparaBicicleta
FOR EACH ROW
BEGIN
    IF NEW.CodigoBicicleta<0 OR NEW.CodigoBicicleta>199 THEN
        SELECT 'Código de bicicleta fuera de los límites [0,199]';
    END IF;
    IF NEW.CodigoPersonal<0 OR NEW.CodigoPersonal>29 THEN
        SELECT 'Código de personal fuera de los límites [0,29]';
    END IF;
END;
