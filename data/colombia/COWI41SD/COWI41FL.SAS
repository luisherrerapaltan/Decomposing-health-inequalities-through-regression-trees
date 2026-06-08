libname user ' ';
Proc format;
  value WLTHIND_
     1 = "Lowest quintile"
     2 = "Second quintile"
     3 = "Middle quintile"
     4 = "Fourth quintile"
     5 = "Highest quintile"
     ;
Data COwi41; 
  attrib WHHID    length=$12 label="Household ID";
  attrib WLTHINDF length=8 label="Wealth Index from factor scores";
  attrib WLTHIND5 length=4 format=WLTHIND_. label="Quintiles of wealth index";
infile 'COwi41.DAT' LRECL=23 MISSOVER ; 
    input
    @1    WHHID    $12.
    @13   WLTHINDF 11.5
    @24   WLTHIND5 5.0
    ;
