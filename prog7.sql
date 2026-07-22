SET SERVEROUTPUT ON;

DECLARE
    rno RESULT.RollNo%TYPE := &RollNo;
    s1 RESULT.Sub1%TYPE;
    s2 RESULT.Sub2%TYPE;
    s3 RESULT.Sub3%TYPE;
    s4 RESULT.Sub4%TYPE;
    s5 RESULT.Sub5%TYPE;
    total NUMBER;
    per NUMBER(5,2);
    grade VARCHAR2(2);

BEGIN
    SELECT Sub1, Sub2, Sub3, Sub4, Sub5
    INTO s1, s2, s3, s4, s5
    FROM RESULT
    WHERE RollNo = rno;

    total := s1 + s2 + s3 + s4 + s5;
    per := total / 5;

    IF per >= 75 THEN
        grade := 'A';
    ELSIF per >= 60 THEN
        grade := 'B';
    ELSIF per >= 50 THEN
        grade := 'C';
    ELSIF per >= 35 THEN
        grade := 'D';
    ELSE
        grade := 'F';
    END IF;

    UPDATE RESULT
    SET Total = total,
        Per = per,
        Grade = grade
    WHERE RollNo = rno;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Roll No    : ' || rno);
    DBMS_OUTPUT.PUT_LINE('Total      : ' || total);
    DBMS_OUTPUT.PUT_LINE('Percentage : ' || per);
    DBMS_OUTPUT.PUT_LINE('Grade      : ' || grade);

END;
/