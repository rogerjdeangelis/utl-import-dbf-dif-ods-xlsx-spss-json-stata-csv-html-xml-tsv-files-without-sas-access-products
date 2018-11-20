Import dbf dif ods xlsx spss json stata fwf csv html xml tsv files without SAS access products

Similarly you can export SAS datasets to all these foreigh formats.

github
https://tinyurl.com/ybhctatf
https://github.com/rogerjdeangelis/utl-import-dbf-dif-ods-xlsx-spss-json-stata-csv-html-xml-tsv-files-without-sas-access-products

for MDB import
https://tinyurl.com/yanqfy8o
https://github.com/rogerjdeangelis/utl_converting_32bit_ms_access_tables_to_sas_datasets_without_sas_access_products


macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

INPUT
=====

Just unzip mtcars.zip
https://tinyurl.com/ybhctatf

d:/rio/mtcars.xlsx          Excel
d:/rio/mtcars.ods           Libre Office
d:/rio/mtcars.dif           Data interchange
d:/rio/mtcars.dbf           Data interchange
d:/rio/mtcars.sav           SPSS
d:/rio/mtcars.json          JSON
d:/rio/mtcars.dta           STATA
d:/rio/mtcars.dbf           XBASE
d:/rio/mtcars.csv           CSV
d:/rio/mtcars.html          HTML   single table and shallow
d:/rio/mtcars.xml           XML    single table and shallow
d:/rio/mtcars.tsv           Tab delimited
d:/mdb/HelpfulContacts.mdb  (https://www.medicare.gov/Download/DownloaddbInterim.asp
                             click on download)


EXAMPLE OUTPUT
==============

wrk.mtcarsxlsx.sas7bdat
wrk.mtcarshtml.sas7bdat
wrk.mtcarsjson.sas7bdat
wrk.mtcarssav.sas7bdat
wrk.mtcarsdta.sas7bdat
wrk.mtcarsfwf.sas7bdat
wrk.mtcarscsv.sas7bdat
wrk.mtcarsxml.sas7bdat
wrk.mtcarstsv.sas7bdat
wrk.mtcarsdif.sas7bdat
wrk.mtcarsdbf.sas7bdat
wrk.mtcarsods.sas7bdat
wrk.mtcarsmdb.sas7bdat


The CONTENTS Procedure

      Directory

Libref         WRK
Engine         V9
Physical Name  d:\wrk
Filename       d:\wrk


          Member  Obs, Entries             File
 #  Name  Type     or Indexes   Vars       Size  Last Modified

 1  CSV   DATA         32        11      131072  11/19/2018 19:37:13
 2  DBF   DATA         32        11      131072  11/19/2018 19:37:13
 3  DIF   DATA         32        11      131072  11/19/2018 19:37:13
 4  DTA   DATA         32        11      131072  11/19/2018 19:37:13
 5  HTML  DATA         32        11      131072  11/19/2018 19:37:13
 6  JSON  DATA         32        11      131072  11/19/2018 19:37:13
 7  ODS   DATA         32        11      131072  11/19/2018 19:37:13
 8  SAV   DATA         32        11      131072  11/19/2018 19:37:13
 9  TSV   DATA         32        11      131072  11/19/2018 19:37:13
10  XLSX  DATA         32        11      131072  11/19/2018 19:37:13
11  XML   DATA         32        11      131072  11/19/2018 19:37:13


PROCESS
=======

%utl_submit_r64('
library(rio);
library(foreign);
library(SASxport);
library(haven);
write_dta(mtcars,"d:/rio/mtcars.dta");
write_sav(mtcars,"d:/rio/mtcars.sav");
export(mtcars,"d:/rio/mtcars.ods");
csv  <-import("d:/rio/mtcars.csv");
tsv  <-import("d:/rio/mtcars.tsv");
xml  <-import("d:/rio/mtcars.xml");
html <-import("d:/rio/mtcars.html");
json <-import("d:/rio/mtcars.json");
xlsx <-import("d:/rio/mtcars.xlsx");
dbf  <-import("d:/rio/mtcars.dbf");
ods  <-import("d:/rio/mtcars.ods");
dif  <-read.DIF("d:/rio/mtcars.dif",header=TRUE,transpose=TRUE);
dta  <-read_dta("d:/rio/mtcars.dta");
sav  <-read_sav("d:/rio/mtcars.sav");
write.xport(csv,tsv,xml,html,json,xlsx,dta,sav,dbf,ods,dif,file="d:/xpt/dozen.xpt");
');


libname xpt xport "d:/xpt/dozen.xpt";
libname wrk "d:/wrk";

proc copy in=xpt out=wrk;
run;quit;
proc contents data=wrk._all_;
run;quit;

*                _              _       _
 _ __ ___   __ _| | _____    __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \  / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/ | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|  \__,_|\__,_|\__\__,_|

;

Just unzip mtcars.zip

https://tinyurl.com/ybhctatf


