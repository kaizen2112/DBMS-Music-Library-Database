-- Declare and Print Variable:
DECLARE
  v_name VARCHAR2(100) := 'John Doe';
BEGIN
  DBMS_OUTPUT.PUT_LINE(v_name);
END;

-- Insert User with Default Email:
DECLARE
  v_default_email VARCHAR2(100) DEFAULT 'noemail@domain.com';
BEGIN
  INSERT INTO Users (user_id, name, date_of_birth, gender, email) 
  VALUES (3, 'Alice', TO_DATE('1992-12-01', 'YYYY-MM-DD'), 'Female', v_default_email);
  COMMIT;
END;

-- Fetch User's Data into Row Type Variable:
DECLARE
  v_user Users%ROWTYPE;
BEGIN
  SELECT * INTO v_user FROM Users WHERE user_id = 1;
  DBMS_OUTPUT.PUT_LINE('User Name: ' || v_user.name);
END;

-- Count Number of Users using Cursor:
DECLARE
  CURSOR user_cursor IS SELECT * FROM Users;
  v_count NUMBER := 0;
BEGIN
  OPEN user_cursor;
  LOOP
    FETCH user_cursor INTO v_user;
    EXIT WHEN user_cursor%NOTFOUND;
    v_count := v_count + 1;
  END LOOP;
  CLOSE user_cursor;
  DBMS_OUTPUT.PUT_LINE('Total Users: ' || v_count);
END;

-- Create an Array of Numbers and Iterate through it using FOR LOOP:
DECLARE
  TYPE t_numbers IS TABLE OF INTEGER INDEX BY BINARY_INTEGER;
  v_numbers t_numbers;
BEGIN
  FOR i IN 1..5 LOOP
    v_numbers.EXTEND;
    v_numbers(i) := i * 10;
  END LOOP;
  
  FOR i IN 1..v_numbers.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE(v_numbers(i));
  END LOOP;
END;

-- Categorize Age using IF/ELSEIF/ELSE:
DECLARE
  v_age NUMBER := 25;
BEGIN
  IF v_age < 20 THEN
    DBMS_OUTPUT.PUT_LINE('Teen');
  ELSIF v_age BETWEEN 20 AND 60 THEN
    DBMS_OUTPUT.PUT_LINE('Adult');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Senior');
  END IF;
END;

-- Procedure to Update User's Email:
CREATE OR REPLACE PROCEDURE UpdateEmail (p_user_id NUMBER, p_email VARCHAR2) IS
BEGIN
  UPDATE Users SET email = p_email WHERE user_id = p_user_id;
  COMMIT;
END;
