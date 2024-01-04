-- CREATE DATABASE BANKMANAGEMENTSYSTEM;

	CREATE TABLE BRANCH (
        BRANCH_ID INT PRIMARY KEY,
        BRANCH_NAME VARCHAR(50),
        ADDRESS VARCHAR(50)
    );
	
    -- CREATE THE BANK TABLE
    CREATE TABLE BANK (
        ACCOUNT_NO INT PRIMARY KEY,
        FIRST_NAME VARCHAR(50),
        LAST_NAME VARCHAR(50),
        PHONE_NUMBER BIGINT,
        ADDRESS VARCHAR(50),
        CITY VARCHAR(10),
		BRANCH_ID INT,
        FOREIGN KEY(BRANCH_ID) REFERENCES BRANCH(BRANCH_ID)
    );

    -- CREATE THE ACCOUNT TABLE WITH THE SPECIFIED COLUMNS
    CREATE TABLE ACCOUNT (
        ACCOUNT_NO INT PRIMARY KEY,
        ACCOUNT_TYPE VARCHAR(50),
        BALANCE NUMERIC,
        FOREIGN KEY (ACCOUNT_NO) REFERENCES BANK(ACCOUNT_NO)
    );
	
    -- CREATE THE FD TABLE WITH THE SPECIFIED COLUMNS
	CREATE TABLE FD (
        ACCOUNT_NO BIGINT,
        FIRST_NAME VARCHAR(50),
        LAST_NAME VARCHAR(50),
        AMOUNT INT,
        TIME_YEAR INT,
        RETURN_VALUE NUMERIC,
        FOREIGN KEY (ACCOUNT_NO) REFERENCES BANK(ACCOUNT_NO)
    );
	

-- INSERT 50 ENTRIES WITH INDIAN NAMES, PHONE NUMBERS, ADDRESSES, AND CITIES
    INSERT INTO BANK(ACCOUNT_NO, FIRST_NAME, LAST_NAME, PHONE_NUMBER, ADDRESS, CITY)
    VALUES
        (1001, 'RAHUL', 'VERMA', 9876543210, '123 MAIN STREET, DELHI', 'DELHI'),
        (1002, 'PRIYA', 'SHARMA', 9876543211, '456 OAK AVENUE, MUMBAI', 'MUMBAI'),
        (1003, 'AMIT', 'YADAV', 9876543212, '789 MAPLE LANE, BANGALORE', 'BANGALORE'),
        (1004, 'NEHA', 'PANDEY', 9876543213, '101 PINE ROAD, CHENNAI', 'CHENNAI'),
        (1005, 'RAJESH', 'SINHA', 9876543214, '567 CEDAR STREET, KOLKATA', 'KOLKATA'),
        (1006, 'SNEHA', 'SINGH', 9876543215, '890 ELM AVENUE, HYDERABAD', 'HYDERABAD'),
        (1007, 'MANOJ', 'MISHRA', 9876543216, '234 BIRCH LANE, PUNE', 'PUNE'),
        (1008, 'POOJA', 'GUPTA', 9876543217, '345 CEDAR STREET, JAIPUR', 'JAIPUR'),
        (1009, 'ALOK', 'YADAV', 9876543218, '456 MAPLE ROAD, AHMEDABAD', 'AHMEDABAD'),
        (1010, 'SUNITA', 'PANDEY', 9876543219, '678 OAK STREET, CHANDIGARH', 'CHANDIGARH'),
        (1011, 'ANKIT', 'SINHA', 9876543220, '789 PINE LANE, LUCKNOW', 'LUCKNOW'),
        (1012, 'SARITA', 'SHARMA', 9876543221, '890 MAIN AVENUE, BHOPAL', 'BHOPAL'),
        (1013, 'RAVI', 'VERMA', 9876543222, '123 OAK ROAD, KOLKATA', 'KOLKATA'),
        (1014, 'MEENA', 'YADAV', 9876543223, '456 PINE LANE, CHENNAI', 'CHENNAI'),
        (1015, 'ARUN', 'SINHA', 9876543224, '789 CEDAR AVENUE, MUMBAI', 'MUMBAI'),
        (1016, 'RINA', 'GUPTA', 9876543225, '101 ELM ROAD, HYDERABAD', 'HYDERABAD'),
        (1017, 'DEEPAK', 'PANDEY', 9876543226, '234 MAIN LANE, DELHI', 'DELHI'),
        (1018, 'NEETA', 'VERMA', 9876543227, '345 MAPLE AVENUE, BANGALORE', 'BANGALORE'),
        (1019, 'VIKAS', 'SHARMA', 9876543228, '456 CEDAR ROAD, PUNE', 'PUNE'),
        (1020, 'RASHMI', 'SINHA', 9876543229, '567 OAK STREET, JAIPUR', 'JAIPUR'),
        (1021, 'SANJAY', 'MISHRA', 9876543230, '678 PINE ROAD, AHMEDABAD', 'AHMEDABAD'),
        (1022, 'ANITA', 'GUPTA', 9876543231, '789 ELM LANE, CHANDIGARH', 'CHANDIGARH'),
        (1023, 'RAJAT', 'SINHA', 9876543232, '890 CEDAR ROAD, LUCKNOW', 'LUCKNOW'),
        (1024, 'SHWETA', 'YADAV', 9876543233, '123 MAPLE LANE, BHOPAL', 'BHOPAL'),
        (1025, 'VISHAL', 'GUPTA', 9876543234, '456 PINE ROAD, KOLKATA', 'KOLKATA'),
        (1026, 'POONAM', 'SINHA', 9876543235, '567 MAIN STREET, MUMBAI', 'MUMBAI'),
        (1027, 'GAURAV', 'PANDEY', 9876543236, '101 OAK AVENUE, DELHI', 'DELHI'),
        (1028, 'NISHA', 'VERMA', 9876543237, '234 CEDAR ROAD, HYDERABAD', 'HYDERABAD'),
        (1029, 'AMITA', 'SHARMA', 9876543238, '345 ELM LANE, CHENNAI', 'CHENNAI'),
        (1030, 'RAJIV', 'GUPTA', 9876543239, '456 CEDAR AVENUE, PUNE', 'PUNE'),
        (1031, 'MEENAKSHI', 'YADAV', 9876543240, '567 MAIN LANE, JAIPUR', 'JAIPUR'),
        (1032, 'AMAR', 'SINHA', 9876543241, '678 PINE AVENUE, AHMEDABAD', 'AHMEDABAD'),
        (1033, 'ANJALI', 'PANDEY', 9876543242, '789 OAK LANE, CHANDIGARH', 'CHANDIGARH'),
        (1034, 'SANDEEP', 'SHARMA', 9876543243, '890 MAPLE ROAD, LUCKNOW', 'LUCKNOW'),
        (1035, 'PREETI', 'VERMA', 9876543244, '123 PINE ROAD, BHOPAL', 'BHOPAL'),
        (1036, 'SURESH', 'SINHA', 9876543245, '234 OAK LANE, KOLKATA', 'KOLKATA'),
        (1037, 'KAVITA', 'GUPTA', 9876543246, '345 CEDAR AVENUE, MUMBAI', 'MUMBAI'),
        (1038, 'RAKESH', 'SHARMA', 9876543247, '456 MAIN STREET, DELHI', 'DELHI'),
        (1039, 'ARTI', 'PANDEY', 9876543248, '567 ELM ROAD, PUNE', 'PUNE'),
        (1040, 'ARUNA', 'SINHA', 9876543249, '678 MAIN ROAD, JAIPUR', 'JAIPUR'),
        (1041, 'RAHUL', 'YADAV', 9876543250, '789 CEDAR LANE, HYDERABAD', 'HYDERABAD'),
        (1042, 'SWATI', 'SHARMA', 9876543251, '101 OAK ROAD, CHENNAI', 'CHENNAI'),
        (1043, 'RAJENDRA', 'SINHA', 9876543252, '234 ELM LANE, BANGALORE', 'BANGALORE'),
        (1044, 'NEERAJ', 'PANDEY', 9390123456, '345 MAIN LANE, CHANDIGARH','CHANDIGARH'),
        (1045, 'KIRAN', 'VERMA', 9401234567, '456 CEDAR ROAD, LUCKNOW','LUCKNOW'),
        (1046, 'SUSHIL', 'GUPTA', 9412345678, '567 PINE AVENUE, AHMEDABAD','AHMEDABAD'),
        (1047, 'RAMA', 'SINHA', 9423456789, '678 OAK ROAD, KOLKATA','KOLKATA'),
        (1048, 'ASHISH', 'PANDEY', 9434567890, '789 MAIN AVENUE, MUMBAI','MUMBAI'),
        (1049, 'PALLAVI', 'SHARMA', 9445678901, '101 PINE LANE, DELHI','DELHI'),
        (1050, 'ANIL', 'SINHA', 9456789012, '234 MAIN STREET, PUNE','PUNE');



    -- INSERT 8 ENTRIES INTO THE BRANCH TABLE
    INSERT INTO BRANCH (BRANCH_ID, BRANCH_NAME, ADDRESS)
    VALUES
        (800001, 'MUMBAI', '123 MUMBAI BRANCH STREET'),
        (800002, 'DELHI', '456 DELHI BRANCH AVENUE'),
        (800003, 'BANGALORE', '789 BANGALORE BRANCH ROAD'),
        (800004, 'CHENNAI', '101 CHENNAI BRANCH LANE'),
        (800005, 'KOLKATA', '202 KOLKATA BRANCH BOULEVARD'),
        (800006, 'HYDERABAD', '303 HYDERABAD BRANCH PLACE'),
        (800007, 'PUNE', '404 PUNE BRANCH SQUARE'),
        (800008, 'AHMEDABAD', '505 AHMEDABAD BRANCH CIRCLE'),
        (800009, 'JAIPUR', '142 JAIPUR BRANCH STREET'),
        (800010, 'CHANDIGARH', '741 CHANDIGARH BRANCH CIRLE'),
        (800011, 'LUCKNOW', '144 LUCKNOW BRANCH LANE'),
        (800012, 'BHOPAL', '820 BHOPAL ADDRESS AVENUE');
		
		
	--SET BRANCH_ID IN BANK TABLE.
	UPDATE BANK SET BRANCH_ID = 800001 WHERE CITY = 'MUMBAI';
	UPDATE BANK SET BRANCH_ID = 800002 WHERE CITY = 'DELHI';
	UPDATE BANK SET BRANCH_ID = 800003 WHERE CITY = 'BANGALORE';
	UPDATE BANK SET BRANCH_ID = 800004 WHERE CITY = 'CHENNAI';
	UPDATE BANK SET BRANCH_ID = 800005 WHERE CITY = 'KOLKATA';
	UPDATE BANK SET BRANCH_ID = 800006 WHERE CITY = 'HYDERABAD';
	UPDATE BANK SET BRANCH_ID = 800007 WHERE CITY = 'PUNE';
	UPDATE BANK SET BRANCH_ID = 800008 WHERE CITY = 'AHMEDABAD';
	UPDATE BANK SET BRANCH_ID = 800009 WHERE CITY = 'JAIPUR';
	UPDATE BANK SET BRANCH_ID = 800010 WHERE CITY = 'CHANDIGARH';
	UPDATE BANK SET BRANCH_ID = 800011 WHERE CITY = 'LUCKNOW';
	UPDATE BANK SET BRANCH_ID = 800012 WHERE CITY = 'BHOPAL';

    
    -- INSERT ENTRIES INTO THE ACCOUNT TABLE WITH VARIOUS ACCOUNT TYPES
    INSERT INTO ACCOUNT (ACCOUNT_NO, ACCOUNT_TYPE, BALANCE)
    VALUES
        (1001, 'SAVINGS', 5000),
        (1002, 'CURRENT', 7500),
        (1003, 'SAVINGS', 6000),
        (1004, 'FIXED DEPOSIT', 300000),
        (1005, 'RECURRING DEPOSIT', 15000),
        (1006, 'DEMAT', 20000),
        (1007, 'SAVINGS', 7200),
        (1008, 'CURRENT', 5500),
        (1009, 'SAVINGS', 4800),
        (1010, 'FIXED DEPOSIT', 400000),
        (1011, 'RECURRING DEPOSIT', 12000),
        (1012, 'DEMAT', 25000),
        (1013, 'SAVINGS', 5500),
        (1014, 'CURRENT', 6700),
        (1015, 'SAVINGS', 4200),
        (1016, 'FIXED DEPOSIT', 300000),
        (1017, 'RECURRING DEPOSIT', 9000),
        (1018, 'DEMAT', 30000),
        (1019, 'SAVINGS', 6200),
        (1020, 'CURRENT', 5600),
        (1021, 'SAVINGS', 7200),
        (1022, 'FIXED DEPOSIT', 500000),
        (1023, 'RECURRING DEPOSIT', 8000),
        (1024, 'DEMAT', 18000),
        (1025, 'SAVINGS', 6700),
        (1026, 'CURRENT', 4200),
        (1027, 'SAVINGS', 8900),
        (1028, 'FIXED DEPOSIT', 200000),
        (1029, 'RECURRING DEPOSIT', 10000),
        (1030, 'DEMAT', 22000),
        (1031, 'SAVINGS', 7500),
        (1032, 'CURRENT', 5400),
        (1033, 'SAVINGS', 8300),
        (1034, 'FIXED DEPOSIT', 600000),
        (1035, 'RECURRING DEPOSIT', 7500),
        (1036, 'DEMAT', 28000),
        (1037, 'SAVINGS', 6000),
        (1038, 'CURRENT', 4200),
        (1039, 'SAVINGS', 7800),
        (1040, 'FIXED DEPOSIT', 350000),
        (1041, 'RECURRING DEPOSIT', 11000),
        (1042, 'DEMAT', 32000),
        (1043, 'SAVINGS', 5200),
        (1044, 'CURRENT', 4800),
        (1045, 'SAVINGS', 6900),
        (1046, 'FIXED DEPOSIT', 450000),
        (1047, 'RECURRING DEPOSIT', 9000),
        (1048, 'DEMAT', 40000),
        (1049, 'SAVINGS', 4800),
        (1050, 'CURRENT', 7900);



--1.INSERT INTO FD
--PROCEDURE :- INSERT_FD(ACC_NO,AMOUNT,YEARS,RETURN_VALUE)
--TRIGGER :- CHECK_FOR_FD()[FUNCTION --> CHECK_ACCOUNT_TYPE()] 

    --CREATE TRIGGER TO CHECK THAT GIVEN ACCOUNT TYPE IS VALID TO MAKE FD.
    CREATE OR REPLACE FUNCTION CHECK_ACCOUNT_TYPE() RETURNS TRIGGER AS $$

    DECLARE
        ACC_NO INT:=0;
        ACC_TYPE VARCHAR(50);
        ACC_BAL INT:=0;
    
    BEGIN
    
        SELECT ACCOUNT_NO, ACCOUNT_TYPE, BALANCE INTO ACC_NO, ACC_TYPE, ACC_BAL FROM ACCOUNT WHERE ACCOUNT_NO = NEW.ACCOUNT_NO;
    
        IF ACC_NO = 0 THEN
            RAISE 'THERE IS NO ACCOUNT WITH THIS ACCOUNT NUMBER.';
    
        ELSE
    
            IF ACC_TYPE<>'FIXED DEPOSIT' THEN
                RAISE 'INVALID TYPE FOR THIS ACCOUNT NUMBER.';
    
            ELSE
                IF NEW.AMOUNT > ACC_BAL THEN
                    RAISE 'INSUFFIENT BALANCE.';
                END IF;
    
            END IF;
    
        END IF;
        RETURN NEW;
    END;
    $$
    LANGUAGE PLPGSQL;
    
    CREATE TRIGGER CHECK_FOR_FD BEFORE INSERT ON FD FOR EACH ROW EXECUTE FUNCTION CHECK_ACCOUNT_TYPE();
    
    --PROCEDURE TO INSERT IN FD
    CREATE OR REPLACE PROCEDURE INSERT_FD (ACC_NO IN INT,AMT IN INT,YEARS IN INT,RETURN_VALUE OUT NUMERIC) AS $$
    DECLARE
        F_NAME BANK.FIRST_NAME%TYPE;
        L_NAME BANK.LAST_NAME%TYPE;
        ACC_TYPE VARCHAR(50);
    
    BEGIN
    
        SELECT ACCOUNT_TYPE INTO ACC_TYPE FROM ACCOUNT WHERE ACCOUNT_NO=ACC_NO;
        SELECT FIRST_NAME,LAST_NAME INTO F_NAME,L_NAME FROM BANK WHERE ACCOUNT_NO=ACC_NO;
    
        IF  YEARS<3 THEN
            RETURN_VALUE=AMT+ AMT*0.07*YEARS;
    
        ELSIF YEARS>3 AND YEARS<5 THEN
            RETURN_VALUE=AMT+ AMT*0.085*YEARS;
    
        ELSE
            RETURN_VALUE=AMT+ AMT*0.095*YEARS;
    
        END IF;
    
        UPDATE ACCOUNT SET BALANCE=BALANCE-AMT WHERE ACCOUNT_NO=ACC_NO;
        --CHECK_FOR_FD TRIGGER FIRED.
        INSERT INTO FD VALUES (ACC_NO,F_NAME,L_NAME,AMT,YEARS,RETURN_VALUE);
    
    END
    $$
    LANGUAGE PLPGSQL;
    CALL INSERT_FD(1004,1000,5,0);
	SELECT * FROM FD;
	SELECT * FROM ACCOUNT;



--2.TRANSFER MONEY
--PROCEDURE :- PAY_SOMEONE(ACC1_NO,ACC2_NO,AMT)
--TRIGGER :- CHECK_FOR_TRANSFER()[PROCEDURE --> CHECK_CREDENTIALS_FOR_WITHRAWAL()]

    --CREATE TRIGGER TO CHECK BALANCE AND ACCOUNT_NUMBER IN ACCOUNT.
    CREATE OR REPLACE FUNCTION CHECK_CREDENTIALS_FOR_WITHRAWAL() RETURNS TRIGGER AS $$

    DECLARE
		BAL ACCOUNT.BALANCE%TYPE;
        ACC1_NO INT := 0;

    BEGIN

        SELECT BALANCE,ACCOUNT_NO INTO BAL,ACC1_NO FROM ACCOUNT WHERE ACCOUNT_NO = NEW.ACCOUNT_NO;

        IF ACC1_NO = 0 THEN
            RAISE 'THERE IS NO ACCOUNT OF THIS ACCOUNT NUMBER.';

        ELSE
            IF NEW.BALANCE < 0 THEN
                RAISE 'INSUFFIENT BALANCE.';
            END IF;

        END IF;
        RETURN NEW;
    END
    $$
    LANGUAGE PLPGSQL;

    CREATE TRIGGER CHECK_FOR_TRANSFER AFTER UPDATE ON ACCOUNT FOR EACH ROW EXECUTE FUNCTION CHECK_CREDENTIALS_FOR_WITHRAWAL();



    --PROCEDURE TO TRANSFER MONEY

    CREATE OR REPLACE PROCEDURE PAY_SOMEONE (ACC1_NO IN INT, ACC2_NO IN INT,AMT IN NUMERIC) AS $$

    BEGIN
        --CHECH_FOR_TRANSFER TRIGGER FIRED FOR ACC1_NO.
        UPDATE ACCOUNT SET BALANCE = BALANCE - AMT WHERE ACCOUNT_NO = ACC1_NO;
        UPDATE ACCOUNT SET BALANCE = BALANCE + AMT WHERE ACCOUNT_NO = ACC2_NO;

    END
    $$
    LANGUAGE PLPGSQL;
    CALL PAY_SOMEONE(1002,1001,500);
	SELECT * FROM ACCOUNT;

--3.ADD MONEY
--PROCEDURES :- ADD_MONEY(ACC_NO IN INT, AMT IN NUMERIC)

    --CREATE PROCEDURE TO ADD MONEY
    CREATE OR REPLACE PROCEDURE ADD_MONEY(ACC_NO IN INT, AMT IN NUMERIC) AS $$

    BEGIN
        UPDATE ACCOUNT SET BALANCE = BALANCE + AMT WHERE ACCOUNT_NO = ACC_NO ;
    END
    $$
    LANGUAGE PLPGSQL;

    CALL ADD_MONEY(1001,5000);
	SELECT * FROM ACCOUNT;



--4.WITHDRAW MONEY
--PROCEDURES :- WITHDRAW_MONEY (ACC_NO IN INT,BAL IN NUMERIC)

    -- CREATE PROCEDURE TO WITHDRAW MONEY
    CREATE OR REPLACE PROCEDURE WITHDRAW_MONEY (ACC_NO IN INT,BAL IN NUMERIC) AS $$
    BEGIN
        UPDATE ACCOUNT SET BALANCE = BALANCE - BAL WHERE ACCOUNT_NO = ACC_NO ;
    END
    $$
    LANGUAGE PLPGSQL;

    CALL WITHDRAW_MONEY(1001,5000);
	SELECT * FROM ACCOUNT;


--5.ADD ACCOUNT
--PROCEDURES :- ADD_ACCOUNT(F_NAME IN VARCHAR(50),L_NAME IN VARCHAR(50),PH_NUM IN BIGINT,ADDRESS_IN IN VARCHAR(100),CITY IN VARCHAR(25),ACC_TYPE IN VARCHAR,BAL IN INT)

    -- CREATE PROCEDURE TO ADD ACCOUNT INTO THE BANK AND ACCOUNT TABLE.
    CREATE OR REPLACE PROCEDURE ADD_ACCOUNT(F_NAME IN VARCHAR(50),L_NAME IN VARCHAR(50),PH_NUM IN BIGINT,ADDRESS_IN IN VARCHAR(100),CITY IN VARCHAR(25),ACC_TYPE IN VARCHAR,BAL IN INT) AS $$

    DECLARE
            ACC_NO BANK.ACCOUNT_NO%TYPE;
			BRNCH_ID BRANCH.BRANCH_ID%TYPE;
    BEGIN

        SELECT MAX(ACCOUNT_NO) FROM BANK INTO ACC_NO;
		SELECT BRANCH_ID FROM BRANCH INTO BRNCH_ID WHERE BRANCH_NAME = CITY;
        INSERT INTO BANK VALUES(ACC_NO+1,F_NAME,L_NAME,PH_NUM,ADDRESS_IN,CITY,BRNCH_ID);
        INSERT INTO ACCOUNT VALUES(ACC_NO+1,ACC_TYPE,BAL);

    END
    $$
    LANGUAGE PLPGSQL;

    CALL ADD_ACCOUNT('HETAVI','SHAH',9876789909,'678 SILVER OAK ROAD, KOLKATA','KOLKATA','FIXED DEPOSIT',100000);
	SELECT * FROM BANK;
	SELECT * FROM ACCOUNT;



--6.DELETE ACCOUNT
--PROCEDURES :- DELETE_ACCOUNT(ACC_NO IN INT)
--TRIGGERS :-  CHECK_FOR_ACCOUNT_NUMBER()[FUNCTION --> DELETE_FROM_ACCOUNT_AND_FD()] 
	
-- DROP TRIGGER CHECK_FOR_ACCOUNT_NUMBER ON BANK;

	CREATE OR REPLACE FUNCTION DELETE_FROM_ACCOUNT_AND_FD() RETURNS TRIGGER AS $$

    BEGIN
    	DELETE FROM FD WHERE ACCOUNT_NO = OLD.ACCOUNT_NO;
        DELETE FROM ACCOUNT WHERE ACCOUNT_NO = OLD.ACCOUNT_NO;

        RETURN NEW;
    END
    $$
    LANGUAGE PLPGSQL;


    CREATE TRIGGER DELETE_FROM_ALL_TABLES AFTER DELETE ON BANK FOR EACH ROW EXECUTE FUNCTION DELETE_FROM_ACCOUNT_AND_FD();

    -- CREATE PROCEDURE TO DELETE ACCOUNT
    CREATE OR REPLACE PROCEDURE DELETE_ACCOUNT(ACC_NO IN BANK.ACCOUNT_NO%type) AS $$

    BEGIN

        --DELETE_FROM_ALL_TABLES TRIGGER FIRED.
        DELETE FROM BANK WHERE ACCOUNT_NO = ACC_NO;

		IF FOUND THEN 
			RAISE NOTICE 'DATA OF ACCOUNT WITH ACCOUNT NO % DELETED SUCCESSFULLY',ACC_NO;
		ELSE
			RAISE NOTICE 'THERE IS NO ACCOUNT OF THIS ACCOUNT NUMBER.';

		END IF;

    END
    $$
    LANGUAGE PLPGSQL;

    CALL DELETE_ACCOUNT(1002);
	SELECT * FROM BANK;
	SELECT * FROM ACCOUNT;
	SELECT * FROM FD;



--7.GET ALL USERS BY CITY.
    SELECT FIRST_NAME, LAST_NAME,ACCOUNT_NO,pHONE_NUMBER FROM BANK INNER JOIN BRANCH ON BANK.BRANCH_ID = BRANCH.BRANCH_ID WHERE CITY = 'KOLKATA';



--8.GET ALL USERS BY BRANCH.
    SELECT FIRST_NAME, LAST_NAME,ACCOUNT_NO,pHONE_NUMBER FROM BANK INNER JOIN BRANCH ON BANK.BRANCH_ID = BRANCH.BRANCH_ID WHERE BRANCH_NAME = 'KOLKATA';



--9.RETRIEVE FD AMOUNT
-- PROCEDURE :- RETRIEVE_FD_AMOUNT(ACC_NO IN INT)

    CREATE OR REPLACE PROCEDURE RETRIEVE_FD_AMOUNT(ACC_NO IN INT) AS $$

    DECLARE
        RETRIVE_AMT NUMERIC;
         
    BEGIN
        SELECT RETURN_VALUE INTO RETRIVE_AMT FROM FD WHERE ACCOUNT_NO = ACC_NO ;
        UPDATE ACCOUNT SET BALANCE = RETRIVE_AMT+BALANCE WHERE ACCOUNT_NO = ACC_NO ;
        DELETE FROM FD WHERE ACCOUNT_NO = ACC_NO;
    END
    $$
    LANGUAGE PLPGSQL;
    CALL RETRIEVE_FD_AMOUNT(1004);
	SELECT * FROM FD;
	SELECT * FROM ACCOUNT;

-- 10.INSERT NEW BRANCH.
-- PROCEDURE :- ADD_NEW_BRANCH(BRANCH_NAME IN VARCHAR(50),BRANCH_ADDRESS IN VARCHAR(50))

    -- CREATE PROCEDURE TO ADD BRANCH
    CREATE OR REPLACE PROCEDURE ADD_NEW_BRANCH(BRANCH_NAME IN VARCHAR(50),BRANCH_ADDRESS IN VARCHAR(50))  AS $$

    DECLARE
        B_ID BRANCH.BRANCH_ID%TYPE;

    BEGIN

        SELECT MAX(BRANCH_ID) FROM BRANCH INTO B_ID;
        INSERT INTO BRANCH VALUES(B_ID+1,BRANCH_NAME,BRANCH_ADDRESS);

    END;
    $$
    LANGUAGE PLPGSQL;
    CALL ADD_NEW_BRANCH('AHMEDABAD','AHMEDABAD SOLA ROAD');
	SELECT * FROM BRANCH;


--11.UPDATE PHONE NUMBER.
--procedure :- UPDATE_PHONE_NUMBER(ACC_NO IN BANK.ACCOUNT_NO%TYPE, PH_NO IN BANK.PHONE_NUMBER%TYPE)
--TIGGER :- CHECK_FOR_ACCOUNT_NUMBER [FUNCTION --> CHECK_ACCOUNT_NUMBER()]

    --FUNCTIN TAKEN FROM 6TH QUERY.
    CREATE TRIGGER CHECK_FOR_ACCOUNT_NUMBER BEFORE UPDATE ON BANK FOR EACH ROW EXECUTE FUNCTION CHECK_ACCOUNT_NUMBER();

    CREATE OR REPLACE PROCEDURE UPDATE_PHONE_NUMBER(ACC_NO IN BANK.ACCOUNT_NO%TYPE, PH_NO IN BANK.PHONE_NUMBER%TYPE) AS $$
    BEGIN
        UPDATE BANK SET PHONE_NUMBER  = PH_NO WHERE ACCOUNT_NO = ACC_NO;
    END
    $$
    LANGUAGE PLPGSQL;
    CALL UPDATE_PHONE_NUMBER(1001,9988998899);
	SELECT * FROM BANK;

--12. UPDATE ADDRESS AND CITY.
--procedure :- UPDATE_ADDRESS(ACC_NO IN BANK.ACCOUNT_NO%TYPE, PH_NO IN BANK.PHONE_NUMBER%TYPE)
--TIGGER :- CHECK_FOR_ACCOUNT_NUMBER [FUNCTION --> CHECK_ACCOUNT_NUMBER()]

    --FUNCTIN TAKEN FROM 6TH QUERY.
    CREATE TRIGGER CHECK_FOR_ACCOUNT_NUMBER BEFORE UPDATE ON BANK FOR EACH ROW EXECUTE FUNCTION CHECK_ACCOUNT_NUMBER();

    --CREATE PROCEDURE TO UPDATE ADDRESS AND CITY.
    CREATE OR REPLACE PROCEDURE UPDATE_ADDRESS(ACC_NO IN BANK.ACCOUNT_NO%TYPE, ADRS IN BANK.ADDRESS%TYPE,NEW_CITY IN BANK.CITY%TYPE) AS $$
    BEGIN
        UPDATE BANK SET ADDRESS  = ADRS WHERE ACCOUNT_NO = ACC_NO;
        UPDATE BANK SET CITY = NEW_CITY WHERE ACCOUNT_NO = ACC_NO;
    END
    $$
    LANGUAGE PLPGSQL;
    CALL UPDATE_ADDRESS(1001,'NEW ADDRESS','A');


--13.GET DETAILS BY ACCOUNT NUMBER.
--PROCEDURE :- GET_DETAILS_BY_ACCOUNT_NO(ACC_NO IN BANK.ACCOUNT_NO%TYPE)

    CREATE OR REPLACE PROCEDURE GET_DETAILS_BY_ACCOUNT_NO(ACC_NO IN BANK.ACCOUNT_NO%TYPE) AS $$
    
        DECLARE
            PH_NO BANK.PHONE_NUMBER%TYPE;
            F_NAME BANK.FIRST_NAME%TYPE;
            L_NAME BANK.LAST_NAME%TYPE;
            ADRS BANK.ADDRESS%TYPE;
            ACC_TYPE ACCOUNT.aCCOUNT_TYPE%TYPE;
            BRNCH_NAME BANK.CITY%TYPE;
            BAL ACCOUNT.BALANCE%TYPE;
            NUMBER_OF_FD INT;
    
        BEGIN
            SELECT BANK.PHONE_NUMBER,BANK.FIRST_NAME,BANK.LAST_NAME,BANK.ADDRESS, ACCOUNT.ACCOUNT_TYPE, BANK.CITY, ACCOUNT.BALANCE INTO PH_NO, F_NAME, L_NAME, ADRS, ACC_TYPE, BRNCH_NAME, BAL FROM BANK JOIN ACCOUNT ON BANK.ACCOUNT_NO = ACCOUNT.ACCOUNT_NO WHERE BANK.ACCOUNT_NO = ACC_NO;
    
            RAISE NOTICE  'ACCOUNT NUMBER : %',ACC_NO;
            RAISE NOTICE  'NAME : % %',F_NAME,L_NAME;
            RAISE NOTICE  'PHONE NUMBER : %',PH_NO;
            RAISE  NOTICE 'BALANCE : %',BAL;
    
            SELECT COUNT(*) INTO NUMBER_OF_FD FROM FD WHERE FD.ACCOUNT_NO = ACC_NO GROUP BY FD.ACCOUNT_NO;
            RAISE NOTICE  'NUMBER OF FD : %',NUMBER_OF_FD;
    
            RAISE NOTICE  'ADDRESS : %',ADRS;
            RAISE NOTICE  'BRANCH NAME : %',BRNCH_NAME;
    
    
        END
        $$
    
    LANGUAGE PLPGSQL;
    CALL GET_DETAILS_BY_ACCOUNT_NO(1010);




SELECT * FROM BANK;
SELECT * FROM ACCOUNT;
SELECT * FROM FD;
SELECT * FROM BRANCH;


DROP TABLE BANK;
DROP TABLE ACCOUNT;
DROP TABLE FD
DROP TABLE BRANCH
