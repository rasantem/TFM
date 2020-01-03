proc export data=work.NHANES_concat
    outfile='/folders/myfolders/Data/nhanes.csv'
    dbms=csv
    replace;
run;