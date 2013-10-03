
(* McCarthy 91 function *)
MODULE McCarthy91;
  IMPORT Console;


  (**)
  PROCEDURE Mc91(n : INTEGER) : INTEGER;
  VAR
    res : INTEGER;
  BEGIN
    IF n > 100 THEN
      res := n - 10
    ELSE
      res := Mc91(Mc91(n + 11))
    END;
    RETURN res
  END Mc91;
  
  (**)
  PROCEDURE Test0(n, e : INTEGER);
  BEGIN
    IF e = Mc91(n) THEN
      Console.String("PASS")
    ELSE
      Console.String("FAIL")
    END;
    Console.Ln;Console.Flush
  END Test0;

BEGIN
  Test0(1,91); 
  Test0(10,91);
  Test0(100,91);
  Test0(102,92);
  Test0(1000,990);
  Test0(10000,9990)
END McCarthy91.
