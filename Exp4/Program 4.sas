/* Generated Code (IMPORT) */
/* Source File: modified_climate_change.csv */
/* Source Path: /home/u61070796/Saas Exp */
/* Code generated on: 3/29/22, 3:16 PM */

%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/home/u61070796/Saas Exp/modified_climate_change.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;

ods graphics on;
proc reg data=WORK.IMPORT2;
	model Temp = {CFC12 Aerosols CFC11 TSI MEI};
run;

%web_open_table(WORK.IMPORT2);