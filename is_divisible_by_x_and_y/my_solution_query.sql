CREATE OR REPLACE FUNCTION 
  FUN(n INTEGER,
      x INTEGER,
      y INTEGER) RETURNS BOOLEAN AS 
$$
  BEGIN
    IF ((n % x = 0) AND (n % y = 0))
      THEN RETURN true;
      ELSE RETURN false;
    END IF;
  END;
$$ LANGUAGE plpgsql;
  
SELECT ROW_NUMBER() OVER() AS id, FUN(n,x,y) AS res FROM kata;