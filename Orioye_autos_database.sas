%let path=~/ESQ1M6;
libname sq "&path/data"; 


/* VEHICLES INVENTORY TABLE CREATED */

PROC SQL;
CREATE TABLE SQ.VEHICLES 
   (STOCK_ID NUM,
    YEAR NUM(4),
    MAKE VARCHAR(50),
    MODEL VARCHAR(50),
    TRIM_LEVEL VARCHAR(50),
    VEHICLE_TYPE VARCHAR(50),
    COLOR VARCHAR(50),
    DRIVETRAIN VARCHAR(50),
    ENGINE VARCHAR(50),
    MILEAGE NUM FORMAT = COMMA8.0 ,
    PRICE_LISTED NUM FORMAT =DOLLAR16.2,
    DATE_LISTED DATE FORMAT = mmddyy10.,
    CONSTRAINT VEHICLES_PK PRIMARY KEY (STOCK_ID));
QUIT;



/* VEHICLES SALES TABLE CREATED */

PROC SQL;
CREATE TABLE SQ.SALES
	(SALES_ID NUM,
	 STOCK_ID NUM,
	 PRICE_SOLD NUM FORMAT =DOLLAR16.2,
	 DATE_SOLD DATE FORMAT =mmddyy10.,
	 CONSTRAINT SALES_PK PRIMARY KEY (SALES_ID),
  	 CONSTRAINT SALES_STOCK_FK FOREIGN KEY (STOCK_ID) REFERENCES SQ.VEHICLES(STOCK_ID));
QUIT;




/* INSERT VEHICLE DATA IN TO VEHICLES TABLE */



PROC SQL;

INSERT INTO SQ.VEHICLES
   (STOCK_ID, YEAR, MAKE, MODEL,
    TRIM_LEVEL, VEHICLE_TYPE, COLOR, DRIVETRAIN, ENGINE,
    MILEAGE, PRICE_LISTED, DATE_LISTED)
    
    VALUES(1001, 2006,"Lexus", "GS", "300", "Sedan", "Off White"
           "AWD", "V6", 149000, 6700, '15JAN2021'D)
    
    VALUES(1002, 2010,"Toyota", "Camry", "SE", "Sport Sedan", "Metallic Black"
           "FWD", "V6", 131000, 6900, '15JAN2021'D)
           
    VALUES(1003, 2009,"Lexus", "IS", "250", "Sport Sedan", "Metallic Silver"
           "AWD", "V6", 109000, 9450, '19FEB2021'D)
    
    VALUES(1004, 2007,"Lexus", "IS", "250", "Sport Sedan", "Metallic Black"
           "AWD", "V6", 120000, 7450, '19FEB2021'D)
    
    VALUES(1005, 2009,"BMW", "5 Series" "528i", "Sedan", "Metallic Silver"
           "XDRIVE", "V6", 110000, 6850, '19FEB2021'D)
           
    VALUES(1006, 2011,"Toyota", "Camry",  "SE", "Sport Sedan", "Metallic Silver"
           "FWD", "V4", 97000, 8695, '22MAR2021'D)
    
    VALUES(1007, 2009,"Lexus", "GS", "350", "Sedan", "Metallic Silver"
           "AWD", "V6", 138000, 9700, '22MAR2021'D)
           
    VALUES(1008, 2015,"Mercedes-Benz", "C-class", "C300", "Sport Sedan", "Metallic Black"
           "4MATIC", "V4 Turbo", 102000, 19500, '22MAR2021'D)
           
    VALUES(1009, 2014,"Hyundai", "Sonata",  "SE", "Sport Sedan", "Alpine White"
           "FWD", "2.0T Turbo V4", 121000, 8495, '09APR2021'D)
           
    VALUES(1010, 2011,"Toyota", "Camry",  "SE", "Sport Sedan", "Metallic Black"
           "FWD", "V4", 130000, 7495, '09APR2021'D)
           
    VALUES(1011, 2010,"Mercedes-Benz", "C-Class", "C300", "Sport Sedan", "Metallic Grey"
           "4MATIC", "V6", 129000, 8495, '14APR2021'D)
           
    VALUES(1012, 2012,"Mercedes-Benz", "C-Class", "C300", "Sport Sedan", "Metallic Silver"
           "4MATIC", "V6", 128000, 10495, '28MAY2021'D)
           
    VALUES(1013, 2000,"Lexus", "ES", "300", "Sedan", "White"
           "FWD", "V6", 192000, 1700, '28JUN2021'D)
    
    VALUES(1014, 2011,"Infiniti", "G", "G37xS", "Sport Sedan", "Metallic Black"
           "X", "V6", 127000, 9495, '14JUL2021'D)
   
    VALUES(1015, 2012,"Mercedes-Benz", "C-Class", "C300", "Sport Sedan", "Metallic Blue"
           "4MATIC", "V6", 127000, 10495, '23JUL2021'D)
           
    VALUES(1016, 2012,"Mercedes-Benz", "C-Class", "C300", "Sport Sedan", "Metallic Black"
           "4MATIC", "V6", 116000, 11495, '02AUG2021'D)
           
    VALUES(1017, 2021,"Toyota", "RAV4",  "LE", "Sport SUV", "Metallic Grey"
           "AWD", "V4", 2000, 30995, '13AUG2021'D)
           
    VALUES(1018, 2013,"Mercedes-Benz", "C-Class",  "C300", "Sport Sedan", "Metallic Grey"
           "4MATIC", "V6", 132000, 11995, '17AUG2021'D)
           
    VALUES(1019, 2011,"Lexus", "IS",  "250", "Sport Sedan", "Alpine White"
           "AWD", "V6", 99000, 12995, '28AUG2021'D)
    
    VALUES(1020, 2010,"Mercedes-Benz", "E-Class",  "E550", "Sport Sedan", "Metallic Beige"
           "4MATIC", "V8 Bi-Turbo", 151000, 11995, '15OCT2021'D)
           
    VALUES(1021, 2010,"Mercedes-Benz", "E-Class",  "E350", "Sport Sedan", "Metallic Silver"
           "4MATIC", "V6", 130000, 11995, '15OCT2021'D)
           
    VALUES(1022, 2012,"Mercedes-Benz", "C-Class", "C300", "Sport Sedan", "Metallic Grey"
           "4MATIC", "V6", 141000, 10995, '15OCT2021'D)
           
    VALUES(1023, 2013,"Infiniti", "M",  "M37xS", "Sport Sedan", "Metallic Black"
           "X", "V6", 149000, 14995, '26DEC2021'D)
         
    VALUES(1024, 2007,"Lexus", "ES","350", "Sedan", "White"
           "FWD", "V6", 142000, 8995, '26DEC2021'D)
           
    VALUES(1025, 2011,"Mercedes-Benz", "E-Class","E350", "Sport Sedan", "Metallic Black"
           "4MATIC", "V6", 120000, 13995, '19FEB2022'D)
    
    VALUES(1026, 2011,"Mercedes-Benz", "E-Class","E350", "Sport Sedan", "Metallic White"
           "4MATIC", "V6", 125000, 12495, '23MAR2022'D)
           
    VALUES(1027, 2014,"Hyundai", "Sonata","SE", "Sport Sedan", "Alpine White"
           "FWD", "2.0T Turbo V4", 119000, 10995, '08APR2022'D)
             
    VALUES(1028, 2013,"Mercedes-Benz", "C-Class","C300", "Sport Sedan", "Metallic Black"
           "4MATIC", "V6", 109000, 15995, '17JUL2022'D)
                
    VALUES(1029, 2013,"Mercedes-Benz", "C-Class","C300", "Sport Sedan", "Alpine White"
           "4MATIC", "V6", 90000, 17395, '08MAY2022'D)
                
    VALUES(1030, 2012,"Mercedes-Benz", "E-Class","E350", "Sport Sedan", "Metallic Black"
           "4MATIC", "V6", 168000, 13495, '17JUL2022'D)
              
    VALUES(1031, 2013,"Mercedes-Benz", "C-Class","C300", "Sport Sedan", "Metallic Red"
           "4MATIC", "V6", 138000, 11795, '06AUG2022'D)
           
    VALUES(1032, 2008,"Lexus", "GS","350", "Sedan", "Metallic Grey"
           "AWD", "V6", 130000, 11995, '17AUG2022'D)
                 
    VALUES(1033, 2016,"Toyota", "Highlander","XLE", "Sport SUV", "Metallic White"
           "AWD", "V6", 62000, 32995, '29SEP2022'D)
              
    VALUES(1034, 2011,"Mercedes-Benz", "E-Class","E350", "Sport Sedan", "Metallic White"
           "4MATIC", "V6", 112000, 13995, '07OCT2022'D)
               
    VALUES(1035, 2008,"Infiniti", "EX","35", "Sport SUV", "Metallic White"
           "X", "V6", 130000, 9995, '24OCT2022'D)
                
    VALUES(1036, 2011,"Mercedes-Benz", "E-Class","E350", "Sport Sedan", "Metallic White"
           "4MATIC", "V6", 113000, 14750, '10NOV2022'D)     
           
    VALUES(1037, 2011,"Lexus", "RX","350", "Sport SUV", "Metallic White"
           "AWD", "V6", 126000, 14995, '11NOV2022'D)
           
    VALUES(1038, 2012,"Lexus", "RX","350", "Sport SUV", "Metallic Beige"
           "AWD", "V6", 151000, 14995, '10MAR2023'D)
           
    VALUES(1039, 2016,"Acura", "MDX"," ", "Sport SUV", "Metallic Black"
           "SH-AWD", "V6", 96000, 25495, '10MAR2023'D)
           
    VALUES(1040, 2013,"Lexus", "RX","450H", "Sport SUV", "Metallic Silver"
           "AWD", "Hybrid", 135000, 17995, '10MAR2023'D);
   
      
Quit;


/* INSERT VEHICLE SALES DATA IN TO SALES TABLE */



PROC SQL;
    INSERT INTO SQ.SALES
    (SALES_ID, STOCK_ID, PRICE_SOLD, DATE_SOLD)
    
    vALUES(3011, 1001, 6200, '19JAN2021'D )

    vALUES(3012, 1002, 6100, '17JAN2021'D )
    
    vALUES(3013, 1003, 8800, '22FEB2021'D )
    
    vALUES(3014, 1004, 6500, '02MAR2021'D )
    
    vALUES(3015, 1005, 6000, '08MAR2021'D )
    
    vALUES(3016, 1006, 8500, '30MAR2021'D )
    
    vALUES(3017, 1007, 9300, '28MAR2021'D )
    
    vALUES(3018, 1008, 18600, '24MAR2021'D )
    
    vALUES(3019, 1009, 7800, '19APR2021'D )
    
    vALUES(3020, 1010, 6500, '13APR2021'D )
    
    vALUES(3021, 1011, 6400, '17APR2021'D )
    
    vALUES(3022, 1012, 9500, '05JUN2021'D )
    
    vALUES(3023, 1013, 1300, '30JUN2021'D )
    
    vALUES(3024, 1014, 8100, '24JUL2021'D )
    
    vALUES(3025, 1015, 9500, '30JUL2021'D )
    
    vALUES(3026, 1016, 10600, '06AUG2021'D )
    
    vALUES(3027, 1017, 30000, '13SEP2021'D )
    
    vALUES(3028, 1018, 11000, '20AUG2021'D )
    
    vALUES(3029, 1019, 11800, '07SEP2021'D )
    
    vALUES(3030, 1020, 11000, '18OCT2021'D )
    
    vALUES(3031, 1021, 10500, '25OCT2021'D )
    
    vALUES(3032, 1022, 10000, '29OCT2021'D )
    
    vALUES(3033, 1023, 13200, '10JAN2022'D )
    
    vALUES(3034, 1024, 7900, '12JAN2022'D )
    
    vALUES(3035, 1025, 8000, '03APR2022'D )
    
    vALUES(3036, 1026, 11500, '30MAR2022'D )
    
    vALUES(3037, 1027, 9800, '19APR2022'D )
    
    vALUES(3038, 1028, 13500, '21JUL2022'D )
    
    vALUES(3039, 1029, 15900, '15MAY2022'D )
    
    vALUES(3040, 1030, 8000, '19JUL2022'D )
    
    vALUES(3041, 1031, 6200, '19JAN2021'D )
    
    vALUES(3042, 1032, 10000, '16AUG2022'D )
    
    vALUES(3043, 1033, 30000, '03OCT2022'D )
    
    vALUES(3044, 1034, 11500, '27OCT2023'D )
    
    vALUES(3045, 1035, 8000, '13NOV2022'D )
    
    vALUES(3046, 1036, 11400, '19JAN2023'D )
    
    vALUES(3047, 1037, 12000, '13NOV2022'D )
    
    vALUES(3048, 1038, 8500, '14MAR2023'D )
    
    vALUES(3049, 1039, 21500, '17MAR2023'D );
    
    

QUIT;





PROC SQL NUMBER;

SELECT *
FROM SQ.VEHICLES;

QUIT;
      
      
PROC SQL NUMBER;

SELECT *
FROM SQ.SALES;

QUIT;
           
           
           
