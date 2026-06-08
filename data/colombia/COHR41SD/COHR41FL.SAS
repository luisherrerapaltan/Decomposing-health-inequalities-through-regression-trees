libname user ' ';
Proc format;
  value HV015_
     1 = "Completed"
     2 = "Refused"
     3 = "Absent momentaneously"
     4 = "Absent temporarily"
     5 = "Absent imposible to locate"
     6 = "Dwelling vacant"
     7 = "Dwelling changed use"
     8 = "Other"
     ;
  value HV020_
     0 = "All woman sample"
     1 = "Ever married sample"
     ;
  value HV023_
     1 = "Guajira, Cesar, Magdalena"
     2 = "Atlantico, Bolivar Norte"
     3 = "Bolivar, Sucre, Cordoba"
     4 = "Santanderes"
     5 = "Boyaca, C/marca, Meta"
     6 = "Antioquia"
     7 = "Medellin"
     8 = "Caldas, Risaralda, Quindio"
     9 = "Tolima, Huila, Caqueta"
    10 = "Cauca, Narino"
    11 = "Valle del cauca"
    12 = "Litoral pacifico"
    13 = "Cali"
    14 = "Bogota D.C."
     ;
  value HV024_
     1 = "Atlantica"
     2 = "Oriental"
     3 = "Central"
     4 = "Pacifica"
     5 = "Bogota"
     ;
  value HV025_
     1 = "Urban"
     2 = "Rural"
     ;
  value HV026_
     0 = "Capital, large city"
     1 = "Small city"
     2 = "Town"
     3 = "Countryside"
     ;
  value HV027_
     0 = "Not selected"
     1 = "Men's survey"
     2 = "Husband's survey"
     ;
  value HV042_
     0 = "Not selected"
     1 = "Selected"
     ;
  value HV043_
     0 = "Household not selected"
     1 = "Household selected"
     ;
  value HV044_
     0 = "Household not selected"
     1 = "Household selected"
     ;
  value HV201_
    10 = "PIPED WATER"
    11 = "Public aqueduct"
    12 = "Private aqueduct"
    13 = "Public tap"
    20 = "OPEN WELL WATER"
    21 = "Well"
    30 = "COVERED WELL/BOREHOLE"
    40 = "SURFACE WATER"
    41 = "River, spring, stream"
    51 = "Rainwater"
    61 = "Tanker truck"
    71 = "Bottled water"
    96 = "Other"
     ;
  value HV204_
   996 = "On premises"
     ;
  value HV205_
    10 = "FLUSH TOILET"
    11 = "Toilet to sewer"
    12 = "Toilet to pit"
    13 = "Toilet to creek, open space"
    20 = "PIT TOILET LATRINE"
    21 = "Traditional pit toilet"
    30 = "NO FACILITY"
    31 = "No facility"
    96 = "OTHER"
     ;
  value HV206_
     0 = "No"
     1 = "Yes"
     ;
  value HV207_
     0 = "No"
     1 = "Yes"
     ;
  value HV208_
     0 = "No"
     1 = "Yes"
     ;
  value HV209_
     0 = "No"
     1 = "Yes"
     ;
  value HV210_
     0 = "No"
     1 = "Yes"
     ;
  value HV211_
     0 = "No"
     1 = "Yes"
     ;
  value HV212_
     0 = "No"
     1 = "Yes"
     ;
  value HV213_
    10 = "NATURAL"
    11 = "Earth, sand"
    20 = "RUDIMENTARY"
    21 = "Wood planks"
    30 = "FINISHED"
    31 = "Carpet"
    32 = "Bricks"
    33 = "Tiles"
    34 = "Cement"
    35 = "Polished wood"
    36 = "Marmoble, ceramic tile"
    37 = "Rubber/vinil"
    96 = "OTHER"
     ;
  value HV214_
    10 = "NATURAL"
    20 = "RUDIMENTARY"
    30 = "FINISHED"
    96 = "OTHER"
     ;
  value HV215_
    10 = "NATURAL"
    20 = "RUDIMENTARY"
    30 = "FINISHED"
    96 = "OTHER"
     ;
  value HV217_
     0 = "No adults"
     1 = "One adult"
     2 = "Two adults, opp. sex"
     3 = "Two adults, same sex"
     4 = "Three+ related adult"
     5 = "Unrelated adults"
     ;
  value HV219_
     1 = "Male"
     2 = "Female"
     ;
  value HV220_
    97 = "97+"
    98 = "DK"
     ;
  value HV221_
     0 = "No"
     1 = "Yes"
     ;
  value HV225_
     0 = "No"
     1 = "Yes"
     ;
  value HV226_
     1 = "Electricity"
     2 = "LPG, natural gas"
     3 = "Biogas"
     4 = "Kerosene (ACPM)"
     5 = "Coal, lignite"
     6 = "Charcoal"
     7 = "Firewood, straw"
     8 = "Dung"
     9 = "Gasoline"
    10 = "Cocinol (gasoline for cooking)"
    95 = "Don't cook"
    96 = "Other"
     ;
  value HV227_
     0 = "No"
     1 = "Yes"
     ;
  value HV228_
     0 = "No"
     1 = "All children"
     2 = "Some children"
     3 = "No bednet in HH"
     ;
  value HV230_
     0 = "Nowhere"
     1 = "In dwelling/yard/plot"
     2 = "Somewhere else"
     ;
  value HV231_
     0 = "No"
     1 = "Yes"
     ;
  value HV232_
     0 = "No"
     1 = "Yes"
     ;
  value HV233_
     0 = "No"
     1 = "Yes"
     ;
  value HV234_
     0 = "0 PPM (No Iodine)"
     7 = "7 PPM"
    15 = "15 PPM"
    30 = "30 PPM"
     ;
  value HV101_
     1 = "Head"
     2 = "Wife or husband"
     3 = "Son/daughter"
     4 = "Son/daughter-in-law"
     5 = "Grandchild"
     6 = "Parent"
     7 = "Parent-in-law"
     8 = "Brother/sister"
     9 = "Co-spouse"
    10 = "Other relative"
    11 = "Adopted/foster child"
    12 = "Not related"
    98 = "DK"
     ;
  value HV102_
     0 = "No"
     1 = "Yes"
     ;
  value HV103_
     0 = "No"
     1 = "Yes"
     ;
  value HV104_
     1 = "Male"
     2 = "Female"
     ;
  value HV105_
    97 = "97+"
    98 = "DK"
     ;
  value HV106_
     0 = "No education, preschool"
     1 = "Primary"
     2 = "Secondary"
     3 = "Higher"
     8 = "DK"
     ;
  value HV107_
    98 = "DK"
     ;
  value HV108_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value HV109_
     0 = "No education"
     1 = "Incomplete primary"
     2 = "Complete primary"
     3 = "Incomplete secondary"
     4 = "Complete secondary"
     5 = "Higher"
     8 = "DK"
     ;
  value HV110_
     0 = "No"
     1 = "Yes"
     ;
  value HV111_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value HV112_
     0 = "Mother not in HH"
     ;
  value HV113_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value HV114_
     0 = "Father not in HH"
     ;
  value HV115_
     0 = "Never married"
     1 = "Married"
     2 = "Living together"
     3 = "Widowed"
     4 = "Divorced"
     5 = "Not living together"
     8 = "DK"
     ;
  value HV116_
     0 = "Never married"
     1 = "Currently married"
     2 = "Formerly/ever marr."
     8 = "DK"
     ;
  value HV117_
     0 = "Not eligible"
     1 = "Eligible"
     ;
  value HV118_
     0 = "Not eligible"
     1 = "Eligible"
     ;
  value HV120_
     0 = "Not eligible"
     1 = "Eligible"
     ;
  value HV121_
     0 = "No"
     1 = "Currently attending"
     2 = "Attended at some time"
     ;
  value HV122_
     0 = "No education, preschool"
     1 = "Primary"
     2 = "Secondary"
     3 = "Higher"
     8 = "DK"
     ;
  value HV123_
    98 = "DK"
     ;
  value HV124_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value HV125_
     0 = "No"
     1 = "Yes"
     ;
  value HV126_
     0 = "No education, preschool"
     1 = "Primary"
     2 = "Secondary"
     3 = "Higher"
     8 = "DK"
     ;
  value HV127_
    98 = "DK"
     ;
  value HV128_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value HV129_
     0 = "Never attended"
     1 = "Entered school"
     2 = "Advanced"
     3 = "Repeating"
     4 = "Dropout"
     5 = "Left school 2+ years ago"
     8 = "DK"
     ;
  value SHSUBRE_
     1 = "Guajira, Cesar, Magdalena"
     2 = "Atlantico, Bolivar Norte"
     3 = "Bolivar, Sucre, Cordoba"
     4 = "Santanderes"
     5 = "Boyaca, C/marca, Meta"
     6 = "Antioquia"
     7 = "Medellin"
     8 = "Caldas, Risaralda, Quindio"
     9 = "Tolima, Huila, Caqueta"
    10 = "Cauca, Narino"
    11 = "Valle del cauca"
    12 = "Litoral pacifico"
    13 = "Cali"
    14 = "Bogota D.C."
     ;
  value SHDEPTO_
     5 = "Antioquia"
     8 = "Atlantico"
    11 = "Bogota"
    13 = "Bolivar"
    15 = "Boyaca"
    17 = "Caldas"
    19 = "Cauca"
    20 = "Cesar"
    23 = "Cordoba"
    25 = "Cundinamarca"
    27 = "Choco"
    41 = "Huila"
    44 = "Guajira"
    47 = "Magdalena"
    50 = "Meta"
    52 = "Narino"
    54 = "Norte santander"
    63 = "Quindio"
    66 = "Risaralda"
    68 = "Santander"
    70 = "Sucre"
    73 = "Tolima"
    76 = "Valle"
     ;
  value SHAREA_
     1 = "Within city limits"
     2 = "Village"
     3 = "Disperse population"
     ;
  value SHLOCAL_
     1 = "Cities >700.000"
     2 = "Department capitals"
     3 = "Cities 50000-700.000"
     4 = "Remaining urban"
     5 = "Rural"
     ;
  value SH01_
    10 = "PIPED WATER"
    11 = "Public aqueduct"
    12 = "Private aqueduct"
    13 = "Public tap"
    20 = "OPEN WELL WATER"
    21 = "Well"
    30 = "COVERED WELL/BOREHOLE"
    40 = "SURFACE WATER"
    41 = "River, spring, stream"
    51 = "Rainwater"
    61 = "Tanker truck"
    71 = "Bottled water"
    96 = "Other"
     ;
  value SH03_
     0 = "No"
     1 = "Yes"
     ;
  value SH29_
     0 = "No"
     1 = "Yes"
     ;
  value SHTF_
     1 = "Jefe solo (JS)"
     2 = "Pareja sin hijos (PSH)"
     3 = "Pareja con hijos de familia (NUC)"
     4 = "Jefe sin conyuge con hijos (NUI)"
     5 = "NPC con uno o mas NSC"
     6 = "NPC con NSI de hija(o) y nieto(s), o con"
     7 = "NPC con nucleo NSC del hijo(a) y su cony"
     8 = "NPC con NSC o NSI de un hijo o de varios"
     9 = "NPC con NS completo o incompleto de algu"
    10 = "NPC con uno o ambos padres del jefe, o u"
    11 = "NPC con uno o mas hermanos, o uno o mas "
    12 = "NPC con nieto o nietos"
    13 = "NPC con NS de padre o madre y hermanos o"
    14 = "NPC con nietos y padres o suegros"
    15 = "Otras combinaciones"
    16 = "NPC con Otros Parientes"
    17 = "NPI con hijo(a) o nuera(yerno) con sus p"
    18 = "NPI con NSC de uno o varios hijos"
    19 = "NPI, mas nietos"
    20 = "NPI, mas padres o suegros"
    21 = "NPI, mas hermanos o cunados"
    22 = "NPI, mas NSI de hijo(a), mas padres o su"
    23 = "NPI, con NSC de hijo(a)-conyuge, mas nie"
    24 = "NPI, mas NS del padre/madre y hermanos o"
    25 = "Con otras combinaciones de OP. NPI, mas "
    26 = "NPI, mas OP solos o con su propia famili"
    27 = "PSH mas NSC de hijo(s)"
    28 = "PSH mas nietos"
    29 = "PSH mas NSI de hijo(a)"
    30 = "PSH con hermanos o cunados"
    31 = "PSH con padres o suegros"
    32 = "PSH con NSC y NSI de hijos"
    33 = "PSH con otras combinaciones de hijos"
    34 = "Con otras combinaciones. de OP PSH con o"
    35 = "Con 11. PSH con OP"
    36 = "Jefe con hijo y nietos, o nuera y nietos"
    37 = "Jefe con hermanos o cunados"
    38 = "Jefe con NSC y padres/suegros"
    39 = "Jefe con hija y su conyuge"
    40 = "Jefe con nietos"
    41 = "Jefe con padres o suegros"
    42 = "Jefe con madre y hermanos o con suegros "
    43 = "Otras combinaciones"
    44 = "Jefe mas OP"
    45 = "NPC, con NP; puede haber otros parientes"
    46 = "NPC, mas NSC y/o NSI y NP"
    47 = "NPC, con hermanos o cunados y NP"
    48 = "NPC, con padres o suegros y NP"
    49 = "NPC, con nietos y padres o suegros y NP"
    50 = "NPC, con padres y hermanos o suegros y c"
    51 = "Con otras combinaciones"
    52 = "NPC con NP y otras combinaciones de OP"
    53 = "NPI con NP"
    54 = "NPI con NSC o NSI y nietos mas NP"
    55 = "NPI con padres o suegros y NP"
    56 = "NPI con nietos y/o padres o suegros y NP"
    57 = "NPI con hermanos o cunados y NP"
    58 = "NPI con padres y hermanos o suegros y cu"
    59 = "Con otras combinaciones"
    60 = "PSH con NP"
    61 = "PSH con NSC o NSI con NP"
    62 = "PSH con padres o suegros mas NP"
    63 = "PSH, con nietos, padres o suegros y NP"
    64 = "PSH con hermanos o cunados y NP"
    65 = "PSH con padres y hermanos, o con suegros"
    66 = "Con otras combinaciones"
    67 = "Jefe con NP"
    68 = "Jefe con NSC o NSI y NP"
    69 = "Jefe con padres o suegros y NP"
    70 = "Jefe con nietos, padres y NP"
    71 = "Jefe con hermanos o cunados y NP"
    72 = "Jefe con NP y otras combinaciones de OP."
    73 = "Con otras combinaciones"
    98 = "Familia poligamica, en la que el jefe ti"
     ;
  value SHREC_
     0 = "En el hogar no hay padrastro ni madrastr"
     1 = "Hay padrastro, no hay hijos comunes: tod"
     2 = "Hay padrastro, hay hijos comunes: alguno"
     3 = "Hay madrastra, sin hijos comunes: todos "
     4 = "Hay madrastra, con hijos comunes: alguno"
     5 = "Ambos tienen hijos de uniones anteriores"
     6 = "Ambos tienen hijos de uniones anteriores"
     ;
  value SHNSC_
     0 = "There is none"
     ;
  value SHPSH_
     0 = "There is none"
     ;
  value SHNSI_
     0 = "There is none"
     ;
  value SHTNS_
     0 = "There are no secondary nucleus"
     ;
  value SH03A_
    40 = "Not a usual resident"
     ;
  value SH04_
     1 = "Head"
     2 = "Wife or husband"
     3 = "Son/daughter"
     4 = "Son/daughter-in-law"
     5 = "Grandchild"
     6 = "Parent"
     7 = "Parent-in-law"
     8 = "Brother/sister"
     9 = "Broth/sister-in-law"
    10 = "Adopted/foster child"
    11 = "Other relative"
    12 = "Not related"
    13 = "House maid"
    98 = "DK"
     ;
  value SH11_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value SH14_
     1 = "Worked"
     2 = "Looking for a job"
     3 = "Studied"
     4 = "House work"
     5 = "Retired"
     6 = "Lives off rent income"
     7 = "Incapacitated"
    96 = "Other"
    98 = "DK"
     ;
  value SH23_
     0 = "No"
     1 = "Paid work"
     2 = "Unpaid work"
     ;
  value SH25_
     0 = "No"
     1 = "Yes"
     ;
  value SH27_
     0 = "No"
     1 = "Yes"
     ;
  value SH30_
     0 = "No"
     1 = "ISS"
     2 = "Another EPS"
     3 = "ARS"
     4 = "Other system"
     8 = "DK"
     ;
  value SH31_
     1 = "Very good"
     2 = "Good"
     3 = "Not good (regular)"
     4 = "Bad"
     ;
  value HA4_
  9998 = "Flagged cases"
     ;
  value HA5_
  9998 = "Flagged cases"
     ;
  value HA6_
 99998 = "Flagged cases"
     ;
  value HA11_
  9998 = "Flagged cases"
     ;
  value HA12_
 99998 = "Flagged cases"
     ;
  value HA12A_
 99998 = "Flagged cases"
     ;
  value HA12B_
 99998 = "Flagged cases"
     ;
  value HA13_
     0 = "Measured"
     3 = "Not present"
     4 = "Refused"
     6 = "Other"
     ;
  value HA33_
     1 = "Month and year"
     2 = "Month and age"
     3 = "Year and age"
     4 = "Year"
     6 = "Age"
     7 = "Month"
     8 = "None"
     ;
  value HA35_
     0 = "No"
     1 = "Yes"
     ;
  value HA40_
  9998 = "Flagged cases"
     ;
  value HA41_
  9998 = "Flagged cases"
     ;
  value HA50_
     1 = "Under age 18"
     2 = "Age 18 or older"
     ;
  value HA51_
     0 = "Not in household"
     ;
  value HA52_
     1 = "Granted"
     2 = "Refused"
     ;
  value HA54_
     0 = "No/don't know"
     1 = "Yes"
     ;
  value HA55_
     0 = "Measured"
     3 = "Not present"
     4 = "Refused"
     6 = "Other"
     ;
  value HA57_
     1 = "Severe"
     2 = "Moderate"
     3 = "Mild"
     4 = "Not anemic"
     ;
  value HA58_
     0 = "No"
     1 = "Yes"
     ;
  value HC4_
  9998 = "Flagged cases"
     ;
  value HC5_
  9998 = "Flagged cases"
     ;
  value HC6_
 99998 = "Flagged cases"
     ;
  value HC7_
  9998 = "Flagged cases"
     ;
  value HC8_
  9998 = "Flagged cases"
     ;
  value HC9_
 99998 = "Flagged cases"
     ;
  value HC10_
  9998 = "Flagged cases"
     ;
  value HC11_
  9998 = "Flagged cases"
     ;
  value HC12_
 99998 = "Flagged cases"
     ;
  value HC13_
     0 = "Measured"
     3 = "Not present"
     4 = "Refused"
     6 = "Other"
     ;
  value HC15_
     1 = "Lying"
     2 = "Standing"
     ;
  value HC27_
     1 = "Male"
     2 = "Female"
     ;
  value HC30_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value HC31_
  9997 = "Inconsistent"
  9998 = "DK"
     ;
  value HC33_
     1 = "Month and year"
     2 = "Month and age"
     3 = "Year and age"
     4 = "Year"
     6 = "Age"
     7 = "Month"
     8 = "None"
     ;
  value HC51_
     0 = "Not in household"
     ;
  value HC52_
     1 = "Granted"
     2 = "Refused"
     ;
  value HC55_
     0 = "Measured"
     3 = "Not present"
     4 = "Refused"
     6 = "Other"
     ;
  value HC57_
     1 = "Severe"
     2 = "Moderate"
     3 = "Mild"
     4 = "Not anemic"
     ;
  value HC58_
     0 = "No"
     1 = "Yes"
     ;
  value HC60_
   993 = "Mother not de facto"
   994 = "Incomplete woman's interview"
   995 = "Not in household"
     ;
  value HC61_
     0 = "No education"
     1 = "Primary"
     2 = "Secondary"
     3 = "Higher"
     ;
  value SH33A_
     0 = "No"
     1 = "Yes"
     ;
  value SH33B_
     0 = "No"
     1 = "Yes"
     ;
  value SH33C_
     0 = "No"
     1 = "Yes"
     ;
  value SH33X_
     0 = "No"
     1 = "Yes"
     ;
  value SH34_
     1 = "Doctor health institution"
     2 = "Terapy"
     3 = "Community worker, nurse"
     4 = "Pharmacy, drugstore"
     5 = "Traditional remedies"
     6 = "Home made remedies"
     7 = "Self-prescription"
    95 = "Nothing"
    96 = "Other"
     ;
  value SH35_
     1 = "Problem wasn't serious"
     2 = "Lack of time"
     3 = "Accessibility"
     4 = "Cost"
     5 = "Service is not good"
     6 = "Didn't take him"
     7 = "Don't rely on doctors"
     8 = "Don't solve problems"
     9 = "Lots of paper work"
    96 = "Other"
     ;
  value SH38_
     1 = "Pregnancy"
     2 = "Operation"
     3 = "Illness"
     4 = "Work accident"
     5 = "Trafic accident"
     6 = "Other accident"
     7 = "Wound by weapon"
    96 = "Other"
     ;
  value SH40_
     1 = "P.O.S with subsidy"
     2 = "P.O.S with contribution"
     3 = "Prepaid"
     4 = "Own resources"
     6 = "Other"
     8 = "DK"
     ;
  value SH41_
     1 = "On time"
     2 = "Delayed"
     ;
  value SH42_
     1 = "Good"
     2 = "Fair (regular)"
     3 = "Bad"
     ;
  value SH43_
     1 = "Deficient"
     2 = "Fair (regular)"
     3 = "Good"
     4 = "Excellent"
     5 = "Indiferent"
     ;
Data COHR41FL;
  attrib HHID     length=$12 label="Case Identification";
  attrib HV000    length=$3 label="Country code and phase";
  attrib HV001    length=8 label="Cluster number";
  attrib HV002    length=4 label="Household number";
  attrib HV003    length=4 label="Respondent's line number";
  attrib HV004    length=4 label="Ultimate area unit";
  attrib HV005    length=8 label="Sample weight";
  attrib HV006    length=4 label="Month of interview";
  attrib HV007    length=4 label="Year of interview";
  attrib HV008    length=4 label="Date of interview (CMC)";
  attrib HV009    length=4 label="Number of household members";
  attrib HV010    length=4 label="Number of eligible women in HH";
  attrib HV011    length=4 label="Number of eligible men in HH";
  attrib HV012    length=4 label="Number of de jure members";
  attrib HV013    length=4 label="Number of de facto members";
  attrib HV014    length=4 label="Number of children 5 and under";
  attrib HV015    length=4 format=HV015_. label="Result of household interview";
  attrib HV016    length=4 label="Day of interview";
  attrib HV017    length=4 label="Number of visits";
  attrib HV018    length=4 label="Interviewer identification";
  attrib HV019    length=4 label="Keyer identification";
  attrib HV020    length=4 format=HV020_. label="Ever-married sample";
  attrib HV021    length=4 label="Primary sampling unit";
  attrib HV022    length=4 label="Sample stratum number";
  attrib HV023    length=4 format=HV023_. label="Sample domain";
  attrib HV024    length=4 format=HV024_. label="Region";
  attrib HV025    length=4 format=HV025_. label="Type of place of residence";
  attrib HV026    length=4 format=HV026_. label="Place of residence";
  attrib HV027    length=4 format=HV027_. label="Selection for male/husband interview";
  attrib HV028    length=8 label="Sample weight for male subsample";
  attrib HV030    length=4 label="Field supervisor";
  attrib HV031    length=4 label="Field editor";
  attrib HV032    length=4 label="Office editor";
  attrib HV033    length=8 label="Ultimate area selection prob.";
  attrib HV035    length=4 label="Number of eligible children-NA";
  attrib HV040    length=4 label="Cluster altitude in meters -NA";
  attrib HV041    length=4 label="Total adults measured      -NA";
  attrib HV042    length=4 format=HV042_. label="Selection for hemoglobin   -NA";
  attrib HV043    length=4 format=HV043_. label="Selection for women's stat-NA";
  attrib HV044    length=4 format=HV044_. label="Selection for domestic violence module";
  attrib HV201    length=4 format=HV201_. label="Source of drinking water";
  attrib HV204    length=4 format=HV204_. label="Time to get to water source";
  attrib HV205    length=4 format=HV205_. label="Type of toilet facility";
  attrib HV206    length=4 format=HV206_. label="Has electricity";
  attrib HV207    length=4 format=HV207_. label="Has radio";
  attrib HV208    length=4 format=HV208_. label="Has television";
  attrib HV209    length=4 format=HV209_. label="Has refrigerator";
  attrib HV210    length=4 format=HV210_. label="Has bicycle                -NA";
  attrib HV211    length=4 format=HV211_. label="Has motorcycle/scooter     -NA";
  attrib HV212    length=4 format=HV212_. label="Has car/truck              -NA";
  attrib HV213    length=4 format=HV213_. label="Main floor material";
  attrib HV214    length=4 format=HV214_. label="Main wall material         -NA";
  attrib HV215    length=4 format=HV215_. label="Main roof material         -NA";
  attrib HV217    length=4 format=HV217_. label="Relationship structure";
  attrib HV218    length=4 label="Line number of head of household";
  attrib HV219    length=4 format=HV219_. label="Sex of head of household";
  attrib HV220    length=4 format=HV220_. label="Age of head of household";
  attrib HV221    length=4 format=HV221_. label="Has telephone";
  attrib HV225    length=4 format=HV225_. label="Share toilet with other households";
  attrib HV226    length=4 format=HV226_. label="Type of cooking fuel";
  attrib HV227    length=4 format=HV227_. label="Have bednet for sleeping   -NA";
  attrib HV228    length=4 format=HV228_. label="Children under 5 slept unde-NA";
  attrib HV230    length=4 format=HV230_. label="Place for hand washing     -NA";
  attrib HV231    length=4 format=HV231_. label="Items present: Water, tap  -NA";
  attrib HV232    length=4 format=HV232_. label="Items present: soap/other c-NA";
  attrib HV233    length=4 format=HV233_. label="Items present: Basin       -NA";
  attrib HV234    length=4 format=HV234_. label="Test salt for Iodine       -NA";
  attrib HVIDX_01 length=4 label="Line number";
  attrib HV101_01 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_01 length=4 format=HV102_. label="Usual resident";
  attrib HV103_01 length=4 format=HV103_. label="Slept last night";
  attrib HV104_01 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_01 length=4 format=HV105_. label="Age of household members";
  attrib HV106_01 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_01 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_01 length=4 format=HV108_. label="Education in single years";
  attrib HV109_01 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_01 length=4 format=HV110_. label="Member still in school";
  attrib HV111_01 length=4 format=HV111_. label="Mother alive";
  attrib HV112_01 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_01 length=4 format=HV113_. label="Father alive";
  attrib HV114_01 length=4 format=HV114_. label="Father's line number";
  attrib HV115_01 length=4 format=HV115_. label="Current marital status";
  attrib HV116_01 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_01 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_01 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_01 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_01 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_01 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_01 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_01 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_01 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_01 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_01 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_01 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_01 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_02 length=4 label="Line number";
  attrib HV101_02 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_02 length=4 format=HV102_. label="Usual resident";
  attrib HV103_02 length=4 format=HV103_. label="Slept last night";
  attrib HV104_02 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_02 length=4 format=HV105_. label="Age of household members";
  attrib HV106_02 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_02 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_02 length=4 format=HV108_. label="Education in single years";
  attrib HV109_02 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_02 length=4 format=HV110_. label="Member still in school";
  attrib HV111_02 length=4 format=HV111_. label="Mother alive";
  attrib HV112_02 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_02 length=4 format=HV113_. label="Father alive";
  attrib HV114_02 length=4 format=HV114_. label="Father's line number";
  attrib HV115_02 length=4 format=HV115_. label="Current marital status";
  attrib HV116_02 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_02 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_02 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_02 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_02 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_02 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_02 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_02 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_02 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_02 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_02 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_02 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_02 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_03 length=4 label="Line number";
  attrib HV101_03 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_03 length=4 format=HV102_. label="Usual resident";
  attrib HV103_03 length=4 format=HV103_. label="Slept last night";
  attrib HV104_03 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_03 length=4 format=HV105_. label="Age of household members";
  attrib HV106_03 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_03 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_03 length=4 format=HV108_. label="Education in single years";
  attrib HV109_03 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_03 length=4 format=HV110_. label="Member still in school";
  attrib HV111_03 length=4 format=HV111_. label="Mother alive";
  attrib HV112_03 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_03 length=4 format=HV113_. label="Father alive";
  attrib HV114_03 length=4 format=HV114_. label="Father's line number";
  attrib HV115_03 length=4 format=HV115_. label="Current marital status";
  attrib HV116_03 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_03 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_03 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_03 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_03 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_03 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_03 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_03 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_03 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_03 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_03 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_03 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_03 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_04 length=4 label="Line number";
  attrib HV101_04 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_04 length=4 format=HV102_. label="Usual resident";
  attrib HV103_04 length=4 format=HV103_. label="Slept last night";
  attrib HV104_04 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_04 length=4 format=HV105_. label="Age of household members";
  attrib HV106_04 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_04 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_04 length=4 format=HV108_. label="Education in single years";
  attrib HV109_04 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_04 length=4 format=HV110_. label="Member still in school";
  attrib HV111_04 length=4 format=HV111_. label="Mother alive";
  attrib HV112_04 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_04 length=4 format=HV113_. label="Father alive";
  attrib HV114_04 length=4 format=HV114_. label="Father's line number";
  attrib HV115_04 length=4 format=HV115_. label="Current marital status";
  attrib HV116_04 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_04 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_04 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_04 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_04 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_04 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_04 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_04 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_04 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_04 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_04 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_04 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_04 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_05 length=4 label="Line number";
  attrib HV101_05 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_05 length=4 format=HV102_. label="Usual resident";
  attrib HV103_05 length=4 format=HV103_. label="Slept last night";
  attrib HV104_05 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_05 length=4 format=HV105_. label="Age of household members";
  attrib HV106_05 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_05 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_05 length=4 format=HV108_. label="Education in single years";
  attrib HV109_05 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_05 length=4 format=HV110_. label="Member still in school";
  attrib HV111_05 length=4 format=HV111_. label="Mother alive";
  attrib HV112_05 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_05 length=4 format=HV113_. label="Father alive";
  attrib HV114_05 length=4 format=HV114_. label="Father's line number";
  attrib HV115_05 length=4 format=HV115_. label="Current marital status";
  attrib HV116_05 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_05 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_05 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_05 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_05 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_05 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_05 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_05 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_05 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_05 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_05 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_05 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_05 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_06 length=4 label="Line number";
  attrib HV101_06 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_06 length=4 format=HV102_. label="Usual resident";
  attrib HV103_06 length=4 format=HV103_. label="Slept last night";
  attrib HV104_06 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_06 length=4 format=HV105_. label="Age of household members";
  attrib HV106_06 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_06 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_06 length=4 format=HV108_. label="Education in single years";
  attrib HV109_06 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_06 length=4 format=HV110_. label="Member still in school";
  attrib HV111_06 length=4 format=HV111_. label="Mother alive";
  attrib HV112_06 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_06 length=4 format=HV113_. label="Father alive";
  attrib HV114_06 length=4 format=HV114_. label="Father's line number";
  attrib HV115_06 length=4 format=HV115_. label="Current marital status";
  attrib HV116_06 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_06 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_06 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_06 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_06 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_06 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_06 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_06 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_06 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_06 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_06 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_06 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_06 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_07 length=4 label="Line number";
  attrib HV101_07 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_07 length=4 format=HV102_. label="Usual resident";
  attrib HV103_07 length=4 format=HV103_. label="Slept last night";
  attrib HV104_07 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_07 length=4 format=HV105_. label="Age of household members";
  attrib HV106_07 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_07 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_07 length=4 format=HV108_. label="Education in single years";
  attrib HV109_07 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_07 length=4 format=HV110_. label="Member still in school";
  attrib HV111_07 length=4 format=HV111_. label="Mother alive";
  attrib HV112_07 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_07 length=4 format=HV113_. label="Father alive";
  attrib HV114_07 length=4 format=HV114_. label="Father's line number";
  attrib HV115_07 length=4 format=HV115_. label="Current marital status";
  attrib HV116_07 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_07 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_07 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_07 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_07 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_07 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_07 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_07 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_07 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_07 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_07 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_07 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_07 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_08 length=4 label="Line number";
  attrib HV101_08 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_08 length=4 format=HV102_. label="Usual resident";
  attrib HV103_08 length=4 format=HV103_. label="Slept last night";
  attrib HV104_08 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_08 length=4 format=HV105_. label="Age of household members";
  attrib HV106_08 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_08 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_08 length=4 format=HV108_. label="Education in single years";
  attrib HV109_08 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_08 length=4 format=HV110_. label="Member still in school";
  attrib HV111_08 length=4 format=HV111_. label="Mother alive";
  attrib HV112_08 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_08 length=4 format=HV113_. label="Father alive";
  attrib HV114_08 length=4 format=HV114_. label="Father's line number";
  attrib HV115_08 length=4 format=HV115_. label="Current marital status";
  attrib HV116_08 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_08 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_08 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_08 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_08 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_08 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_08 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_08 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_08 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_08 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_08 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_08 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_08 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_09 length=4 label="Line number";
  attrib HV101_09 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_09 length=4 format=HV102_. label="Usual resident";
  attrib HV103_09 length=4 format=HV103_. label="Slept last night";
  attrib HV104_09 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_09 length=4 format=HV105_. label="Age of household members";
  attrib HV106_09 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_09 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_09 length=4 format=HV108_. label="Education in single years";
  attrib HV109_09 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_09 length=4 format=HV110_. label="Member still in school";
  attrib HV111_09 length=4 format=HV111_. label="Mother alive";
  attrib HV112_09 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_09 length=4 format=HV113_. label="Father alive";
  attrib HV114_09 length=4 format=HV114_. label="Father's line number";
  attrib HV115_09 length=4 format=HV115_. label="Current marital status";
  attrib HV116_09 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_09 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_09 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_09 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_09 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_09 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_09 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_09 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_09 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_09 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_09 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_09 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_09 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_10 length=4 label="Line number";
  attrib HV101_10 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_10 length=4 format=HV102_. label="Usual resident";
  attrib HV103_10 length=4 format=HV103_. label="Slept last night";
  attrib HV104_10 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_10 length=4 format=HV105_. label="Age of household members";
  attrib HV106_10 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_10 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_10 length=4 format=HV108_. label="Education in single years";
  attrib HV109_10 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_10 length=4 format=HV110_. label="Member still in school";
  attrib HV111_10 length=4 format=HV111_. label="Mother alive";
  attrib HV112_10 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_10 length=4 format=HV113_. label="Father alive";
  attrib HV114_10 length=4 format=HV114_. label="Father's line number";
  attrib HV115_10 length=4 format=HV115_. label="Current marital status";
  attrib HV116_10 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_10 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_10 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_10 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_10 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_10 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_10 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_10 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_10 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_10 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_10 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_10 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_10 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_11 length=4 label="Line number";
  attrib HV101_11 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_11 length=4 format=HV102_. label="Usual resident";
  attrib HV103_11 length=4 format=HV103_. label="Slept last night";
  attrib HV104_11 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_11 length=4 format=HV105_. label="Age of household members";
  attrib HV106_11 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_11 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_11 length=4 format=HV108_. label="Education in single years";
  attrib HV109_11 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_11 length=4 format=HV110_. label="Member still in school";
  attrib HV111_11 length=4 format=HV111_. label="Mother alive";
  attrib HV112_11 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_11 length=4 format=HV113_. label="Father alive";
  attrib HV114_11 length=4 format=HV114_. label="Father's line number";
  attrib HV115_11 length=4 format=HV115_. label="Current marital status";
  attrib HV116_11 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_11 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_11 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_11 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_11 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_11 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_11 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_11 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_11 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_11 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_11 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_11 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_11 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_12 length=4 label="Line number";
  attrib HV101_12 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_12 length=4 format=HV102_. label="Usual resident";
  attrib HV103_12 length=4 format=HV103_. label="Slept last night";
  attrib HV104_12 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_12 length=4 format=HV105_. label="Age of household members";
  attrib HV106_12 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_12 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_12 length=4 format=HV108_. label="Education in single years";
  attrib HV109_12 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_12 length=4 format=HV110_. label="Member still in school";
  attrib HV111_12 length=4 format=HV111_. label="Mother alive";
  attrib HV112_12 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_12 length=4 format=HV113_. label="Father alive";
  attrib HV114_12 length=4 format=HV114_. label="Father's line number";
  attrib HV115_12 length=4 format=HV115_. label="Current marital status";
  attrib HV116_12 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_12 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_12 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_12 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_12 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_12 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_12 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_12 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_12 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_12 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_12 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_12 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_12 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_13 length=4 label="Line number";
  attrib HV101_13 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_13 length=4 format=HV102_. label="Usual resident";
  attrib HV103_13 length=4 format=HV103_. label="Slept last night";
  attrib HV104_13 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_13 length=4 format=HV105_. label="Age of household members";
  attrib HV106_13 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_13 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_13 length=4 format=HV108_. label="Education in single years";
  attrib HV109_13 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_13 length=4 format=HV110_. label="Member still in school";
  attrib HV111_13 length=4 format=HV111_. label="Mother alive";
  attrib HV112_13 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_13 length=4 format=HV113_. label="Father alive";
  attrib HV114_13 length=4 format=HV114_. label="Father's line number";
  attrib HV115_13 length=4 format=HV115_. label="Current marital status";
  attrib HV116_13 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_13 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_13 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_13 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_13 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_13 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_13 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_13 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_13 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_13 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_13 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_13 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_13 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_14 length=4 label="Line number";
  attrib HV101_14 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_14 length=4 format=HV102_. label="Usual resident";
  attrib HV103_14 length=4 format=HV103_. label="Slept last night";
  attrib HV104_14 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_14 length=4 format=HV105_. label="Age of household members";
  attrib HV106_14 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_14 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_14 length=4 format=HV108_. label="Education in single years";
  attrib HV109_14 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_14 length=4 format=HV110_. label="Member still in school";
  attrib HV111_14 length=4 format=HV111_. label="Mother alive";
  attrib HV112_14 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_14 length=4 format=HV113_. label="Father alive";
  attrib HV114_14 length=4 format=HV114_. label="Father's line number";
  attrib HV115_14 length=4 format=HV115_. label="Current marital status";
  attrib HV116_14 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_14 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_14 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_14 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_14 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_14 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_14 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_14 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_14 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_14 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_14 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_14 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_14 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_15 length=4 label="Line number";
  attrib HV101_15 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_15 length=4 format=HV102_. label="Usual resident";
  attrib HV103_15 length=4 format=HV103_. label="Slept last night";
  attrib HV104_15 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_15 length=4 format=HV105_. label="Age of household members";
  attrib HV106_15 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_15 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_15 length=4 format=HV108_. label="Education in single years";
  attrib HV109_15 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_15 length=4 format=HV110_. label="Member still in school";
  attrib HV111_15 length=4 format=HV111_. label="Mother alive";
  attrib HV112_15 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_15 length=4 format=HV113_. label="Father alive";
  attrib HV114_15 length=4 format=HV114_. label="Father's line number";
  attrib HV115_15 length=4 format=HV115_. label="Current marital status";
  attrib HV116_15 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_15 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_15 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_15 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_15 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_15 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_15 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_15 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_15 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_15 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_15 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_15 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_15 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_16 length=4 label="Line number";
  attrib HV101_16 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_16 length=4 format=HV102_. label="Usual resident";
  attrib HV103_16 length=4 format=HV103_. label="Slept last night";
  attrib HV104_16 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_16 length=4 format=HV105_. label="Age of household members";
  attrib HV106_16 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_16 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_16 length=4 format=HV108_. label="Education in single years";
  attrib HV109_16 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_16 length=4 format=HV110_. label="Member still in school";
  attrib HV111_16 length=4 format=HV111_. label="Mother alive";
  attrib HV112_16 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_16 length=4 format=HV113_. label="Father alive";
  attrib HV114_16 length=4 format=HV114_. label="Father's line number";
  attrib HV115_16 length=4 format=HV115_. label="Current marital status";
  attrib HV116_16 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_16 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_16 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_16 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_16 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_16 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_16 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_16 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_16 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_16 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_16 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_16 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_16 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_17 length=4 label="Line number";
  attrib HV101_17 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_17 length=4 format=HV102_. label="Usual resident";
  attrib HV103_17 length=4 format=HV103_. label="Slept last night";
  attrib HV104_17 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_17 length=4 format=HV105_. label="Age of household members";
  attrib HV106_17 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_17 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_17 length=4 format=HV108_. label="Education in single years";
  attrib HV109_17 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_17 length=4 format=HV110_. label="Member still in school";
  attrib HV111_17 length=4 format=HV111_. label="Mother alive";
  attrib HV112_17 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_17 length=4 format=HV113_. label="Father alive";
  attrib HV114_17 length=4 format=HV114_. label="Father's line number";
  attrib HV115_17 length=4 format=HV115_. label="Current marital status";
  attrib HV116_17 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_17 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_17 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_17 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_17 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_17 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_17 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_17 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_17 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_17 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_17 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_17 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_17 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_18 length=4 label="Line number";
  attrib HV101_18 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_18 length=4 format=HV102_. label="Usual resident";
  attrib HV103_18 length=4 format=HV103_. label="Slept last night";
  attrib HV104_18 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_18 length=4 format=HV105_. label="Age of household members";
  attrib HV106_18 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_18 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_18 length=4 format=HV108_. label="Education in single years";
  attrib HV109_18 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_18 length=4 format=HV110_. label="Member still in school";
  attrib HV111_18 length=4 format=HV111_. label="Mother alive";
  attrib HV112_18 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_18 length=4 format=HV113_. label="Father alive";
  attrib HV114_18 length=4 format=HV114_. label="Father's line number";
  attrib HV115_18 length=4 format=HV115_. label="Current marital status";
  attrib HV116_18 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_18 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_18 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_18 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_18 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_18 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_18 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_18 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_18 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_18 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_18 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_18 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_18 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_19 length=4 label="Line number";
  attrib HV101_19 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_19 length=4 format=HV102_. label="Usual resident";
  attrib HV103_19 length=4 format=HV103_. label="Slept last night";
  attrib HV104_19 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_19 length=4 format=HV105_. label="Age of household members";
  attrib HV106_19 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_19 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_19 length=4 format=HV108_. label="Education in single years";
  attrib HV109_19 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_19 length=4 format=HV110_. label="Member still in school";
  attrib HV111_19 length=4 format=HV111_. label="Mother alive";
  attrib HV112_19 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_19 length=4 format=HV113_. label="Father alive";
  attrib HV114_19 length=4 format=HV114_. label="Father's line number";
  attrib HV115_19 length=4 format=HV115_. label="Current marital status";
  attrib HV116_19 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_19 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_19 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_19 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_19 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_19 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_19 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_19 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_19 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_19 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_19 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_19 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_19 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_20 length=4 label="Line number";
  attrib HV101_20 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_20 length=4 format=HV102_. label="Usual resident";
  attrib HV103_20 length=4 format=HV103_. label="Slept last night";
  attrib HV104_20 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_20 length=4 format=HV105_. label="Age of household members";
  attrib HV106_20 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_20 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_20 length=4 format=HV108_. label="Education in single years";
  attrib HV109_20 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_20 length=4 format=HV110_. label="Member still in school";
  attrib HV111_20 length=4 format=HV111_. label="Mother alive";
  attrib HV112_20 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_20 length=4 format=HV113_. label="Father alive";
  attrib HV114_20 length=4 format=HV114_. label="Father's line number";
  attrib HV115_20 length=4 format=HV115_. label="Current marital status";
  attrib HV116_20 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_20 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_20 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_20 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_20 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_20 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_20 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_20 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_20 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_20 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_20 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_20 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_20 length=4 format=HV129_. label="School attendance status";
  attrib HVIDX_21 length=4 label="Line number";
  attrib HV101_21 length=4 format=HV101_. label="Relationship to head";
  attrib HV102_21 length=4 format=HV102_. label="Usual resident";
  attrib HV103_21 length=4 format=HV103_. label="Slept last night";
  attrib HV104_21 length=4 format=HV104_. label="Sex of household member";
  attrib HV105_21 length=4 format=HV105_. label="Age of household members";
  attrib HV106_21 length=4 format=HV106_. label="Highest educational level";
  attrib HV107_21 length=4 format=HV107_. label="Highest year of education";
  attrib HV108_21 length=4 format=HV108_. label="Education in single years";
  attrib HV109_21 length=4 format=HV109_. label="Educational attainment";
  attrib HV110_21 length=4 format=HV110_. label="Member still in school";
  attrib HV111_21 length=4 format=HV111_. label="Mother alive";
  attrib HV112_21 length=4 format=HV112_. label="Mother's line number";
  attrib HV113_21 length=4 format=HV113_. label="Father alive";
  attrib HV114_21 length=4 format=HV114_. label="Father's line number";
  attrib HV115_21 length=4 format=HV115_. label="Current marital status";
  attrib HV116_21 length=4 format=HV116_. label="Currently, formerly, never m.";
  attrib HV117_21 length=4 format=HV117_. label="Eligibility for female interview";
  attrib HV118_21 length=4 format=HV118_. label="Eligibility for male interv-NA";
  attrib HV120_21 length=4 format=HV120_. label="Children eligibility for he-NA";
  attrib HV121_21 length=4 format=HV121_. label="Member attended school during current sc";
  attrib HV122_21 length=4 format=HV122_. label="Educational level during current school ";
  attrib HV123_21 length=4 format=HV123_. label="Grade of education during current school";
  attrib HV124_21 length=4 format=HV124_. label="Education in single years - current scho";
  attrib HV125_21 length=4 format=HV125_. label="Member attended school during previous s";
  attrib HV126_21 length=4 format=HV126_. label="Educational level during previous school";
  attrib HV127_21 length=4 format=HV127_. label="Grade of education during previous schoo";
  attrib HV128_21 length=4 format=HV128_. label="Education in single years - previous sch";
  attrib HV129_21 length=4 format=HV129_. label="School attendance status";
  attrib SHSUBREG length=4 format=SHSUBRE_. label="Subregions";
  attrib SHDEPTO  length=4 format=SHDEPTO_. label="Department";
  attrib SHMUNIP  length=4 label="Municipality";
  attrib SHAREA   length=4 format=SHAREA_. label="Residence area";
  attrib SHMUEST  length=4 label="Sampling area";
  attrib SHLOCAL  length=4 format=SHLOCAL_. label="Population size";
  attrib SH01     length=4 format=SH01_. label="Source of water";
  attrib SH03     length=4 format=SH03_. label="Same source of water";
  attrib SH08     length=4 label="Rooms for sleeping";
  attrib SH29     length=4 format=SH29_. label="Household interviewed for the SISBEN sur";
  attrib SH32     length=4 label="Number of members ill in the last 30 day";
  attrib SH37     length=4 label="Number of members hospitalized in the la";
  attrib SHTF     length=4 format=SHTF_. label="Family type";
  attrib SHREC    length=4 format=SHREC_. label="Re-compound family";
  attrib SHNSC    length=4 format=SHNSC_. label="Total family secondary nucleus complete";
  attrib SHPSH    length=4 format=SHPSH_. label="Total couples with no children";
  attrib SHNSI    length=4 format=SHNSI_. label="Family secondary nucleus incomplete";
  attrib SHTNS    length=4 format=SHTNS_. label="Total secondary nucleus";
  attrib IDXH4_01 length=4 label="Index to household schedule";
  attrib SH03A_01 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_01  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_01  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_01  length=4 label="Hours in preschool last 7 days";
  attrib SH14_01  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_01  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_01  length=4 label="Hours worked not for a family member";
  attrib SH25_01  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_01  length=4 label="Hours spent helping with family chores";
  attrib SH27_01  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_01  length=4 label="Hours worked for a family member";
  attrib SH30_01  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_01  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_02 length=4 label="Index to household schedule";
  attrib SH03A_02 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_02  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_02  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_02  length=4 label="Hours in preschool last 7 days";
  attrib SH14_02  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_02  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_02  length=4 label="Hours worked not for a family member";
  attrib SH25_02  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_02  length=4 label="Hours spent helping with family chores";
  attrib SH27_02  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_02  length=4 label="Hours worked for a family member";
  attrib SH30_02  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_02  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_03 length=4 label="Index to household schedule";
  attrib SH03A_03 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_03  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_03  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_03  length=4 label="Hours in preschool last 7 days";
  attrib SH14_03  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_03  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_03  length=4 label="Hours worked not for a family member";
  attrib SH25_03  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_03  length=4 label="Hours spent helping with family chores";
  attrib SH27_03  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_03  length=4 label="Hours worked for a family member";
  attrib SH30_03  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_03  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_04 length=4 label="Index to household schedule";
  attrib SH03A_04 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_04  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_04  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_04  length=4 label="Hours in preschool last 7 days";
  attrib SH14_04  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_04  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_04  length=4 label="Hours worked not for a family member";
  attrib SH25_04  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_04  length=4 label="Hours spent helping with family chores";
  attrib SH27_04  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_04  length=4 label="Hours worked for a family member";
  attrib SH30_04  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_04  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_05 length=4 label="Index to household schedule";
  attrib SH03A_05 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_05  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_05  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_05  length=4 label="Hours in preschool last 7 days";
  attrib SH14_05  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_05  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_05  length=4 label="Hours worked not for a family member";
  attrib SH25_05  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_05  length=4 label="Hours spent helping with family chores";
  attrib SH27_05  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_05  length=4 label="Hours worked for a family member";
  attrib SH30_05  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_05  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_06 length=4 label="Index to household schedule";
  attrib SH03A_06 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_06  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_06  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_06  length=4 label="Hours in preschool last 7 days";
  attrib SH14_06  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_06  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_06  length=4 label="Hours worked not for a family member";
  attrib SH25_06  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_06  length=4 label="Hours spent helping with family chores";
  attrib SH27_06  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_06  length=4 label="Hours worked for a family member";
  attrib SH30_06  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_06  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_07 length=4 label="Index to household schedule";
  attrib SH03A_07 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_07  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_07  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_07  length=4 label="Hours in preschool last 7 days";
  attrib SH14_07  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_07  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_07  length=4 label="Hours worked not for a family member";
  attrib SH25_07  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_07  length=4 label="Hours spent helping with family chores";
  attrib SH27_07  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_07  length=4 label="Hours worked for a family member";
  attrib SH30_07  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_07  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_08 length=4 label="Index to household schedule";
  attrib SH03A_08 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_08  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_08  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_08  length=4 label="Hours in preschool last 7 days";
  attrib SH14_08  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_08  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_08  length=4 label="Hours worked not for a family member";
  attrib SH25_08  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_08  length=4 label="Hours spent helping with family chores";
  attrib SH27_08  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_08  length=4 label="Hours worked for a family member";
  attrib SH30_08  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_08  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_09 length=4 label="Index to household schedule";
  attrib SH03A_09 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_09  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_09  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_09  length=4 label="Hours in preschool last 7 days";
  attrib SH14_09  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_09  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_09  length=4 label="Hours worked not for a family member";
  attrib SH25_09  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_09  length=4 label="Hours spent helping with family chores";
  attrib SH27_09  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_09  length=4 label="Hours worked for a family member";
  attrib SH30_09  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_09  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_10 length=4 label="Index to household schedule";
  attrib SH03A_10 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_10  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_10  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_10  length=4 label="Hours in preschool last 7 days";
  attrib SH14_10  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_10  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_10  length=4 label="Hours worked not for a family member";
  attrib SH25_10  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_10  length=4 label="Hours spent helping with family chores";
  attrib SH27_10  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_10  length=4 label="Hours worked for a family member";
  attrib SH30_10  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_10  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_11 length=4 label="Index to household schedule";
  attrib SH03A_11 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_11  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_11  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_11  length=4 label="Hours in preschool last 7 days";
  attrib SH14_11  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_11  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_11  length=4 label="Hours worked not for a family member";
  attrib SH25_11  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_11  length=4 label="Hours spent helping with family chores";
  attrib SH27_11  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_11  length=4 label="Hours worked for a family member";
  attrib SH30_11  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_11  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_12 length=4 label="Index to household schedule";
  attrib SH03A_12 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_12  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_12  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_12  length=4 label="Hours in preschool last 7 days";
  attrib SH14_12  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_12  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_12  length=4 label="Hours worked not for a family member";
  attrib SH25_12  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_12  length=4 label="Hours spent helping with family chores";
  attrib SH27_12  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_12  length=4 label="Hours worked for a family member";
  attrib SH30_12  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_12  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_13 length=4 label="Index to household schedule";
  attrib SH03A_13 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_13  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_13  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_13  length=4 label="Hours in preschool last 7 days";
  attrib SH14_13  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_13  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_13  length=4 label="Hours worked not for a family member";
  attrib SH25_13  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_13  length=4 label="Hours spent helping with family chores";
  attrib SH27_13  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_13  length=4 label="Hours worked for a family member";
  attrib SH30_13  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_13  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_14 length=4 label="Index to household schedule";
  attrib SH03A_14 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_14  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_14  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_14  length=4 label="Hours in preschool last 7 days";
  attrib SH14_14  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_14  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_14  length=4 label="Hours worked not for a family member";
  attrib SH25_14  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_14  length=4 label="Hours spent helping with family chores";
  attrib SH27_14  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_14  length=4 label="Hours worked for a family member";
  attrib SH30_14  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_14  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_15 length=4 label="Index to household schedule";
  attrib SH03A_15 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_15  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_15  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_15  length=4 label="Hours in preschool last 7 days";
  attrib SH14_15  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_15  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_15  length=4 label="Hours worked not for a family member";
  attrib SH25_15  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_15  length=4 label="Hours spent helping with family chores";
  attrib SH27_15  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_15  length=4 label="Hours worked for a family member";
  attrib SH30_15  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_15  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_16 length=4 label="Index to household schedule";
  attrib SH03A_16 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_16  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_16  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_16  length=4 label="Hours in preschool last 7 days";
  attrib SH14_16  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_16  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_16  length=4 label="Hours worked not for a family member";
  attrib SH25_16  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_16  length=4 label="Hours spent helping with family chores";
  attrib SH27_16  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_16  length=4 label="Hours worked for a family member";
  attrib SH30_16  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_16  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_17 length=4 label="Index to household schedule";
  attrib SH03A_17 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_17  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_17  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_17  length=4 label="Hours in preschool last 7 days";
  attrib SH14_17  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_17  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_17  length=4 label="Hours worked not for a family member";
  attrib SH25_17  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_17  length=4 label="Hours spent helping with family chores";
  attrib SH27_17  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_17  length=4 label="Hours worked for a family member";
  attrib SH30_17  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_17  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_18 length=4 label="Index to household schedule";
  attrib SH03A_18 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_18  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_18  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_18  length=4 label="Hours in preschool last 7 days";
  attrib SH14_18  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_18  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_18  length=4 label="Hours worked not for a family member";
  attrib SH25_18  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_18  length=4 label="Hours spent helping with family chores";
  attrib SH27_18  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_18  length=4 label="Hours worked for a family member";
  attrib SH30_18  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_18  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_19 length=4 label="Index to household schedule";
  attrib SH03A_19 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_19  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_19  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_19  length=4 label="Hours in preschool last 7 days";
  attrib SH14_19  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_19  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_19  length=4 label="Hours worked not for a family member";
  attrib SH25_19  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_19  length=4 label="Hours spent helping with family chores";
  attrib SH27_19  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_19  length=4 label="Hours worked for a family member";
  attrib SH30_19  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_19  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_20 length=4 label="Index to household schedule";
  attrib SH03A_20 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_20  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_20  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_20  length=4 label="Hours in preschool last 7 days";
  attrib SH14_20  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_20  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_20  length=4 label="Hours worked not for a family member";
  attrib SH25_20  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_20  length=4 label="Hours spent helping with family chores";
  attrib SH27_20  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_20  length=4 label="Hours worked for a family member";
  attrib SH30_20  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_20  length=4 format=SH31_. label="How is the member health condition";
  attrib IDXH4_21 length=4 label="Index to household schedule";
  attrib SH03A_21 length=4 format=SH03A_. label="Family type member live with";
  attrib SH04_21  length=4 format=SH04_. label="Relationship to head";
  attrib SH11_21  length=4 format=SH11_. label="Currently attending preschool";
  attrib SH12_21  length=4 label="Hours in preschool last 7 days";
  attrib SH14_21  length=4 format=SH14_. label="Occupation previous week";
  attrib SH23_21  length=4 format=SH23_. label="Did some work not for a family member";
  attrib SH24_21  length=4 label="Hours worked not for a family member";
  attrib SH25_21  length=4 format=SH25_. label="Helped with household chores";
  attrib SH26_21  length=4 label="Hours spent helping with family chores";
  attrib SH27_21  length=4 format=SH27_. label="Did some work for a family member";
  attrib SH28_21  length=4 label="Hours worked for a family member";
  attrib SH30_21  length=4 format=SH30_. label="Belong to a Medical insurance";
  attrib SH31_21  length=4 format=SH31_. label="How is the member health condition";
  attrib HA0_01   length=4 label="Index to household schedule";
  attrib HA1_01   length=4 label="Women's age in years";
  attrib HA2_01   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_01   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_01   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_01   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_01   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_01  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_01  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_01 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_01 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_01  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_01  length=4 label="Date of birth (cmc)";
  attrib HA33_01  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_01  length=4 format=HA35_. label="Smoking";
  attrib HA40_01  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_01  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_01  length=4 format=HA50_. label="Under age 18";
  attrib HA51_01  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_01  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_01  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_01  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_01  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_01  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_01  length=4 format=HA57_. label="Anemia level";
  attrib HA58_01  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_02   length=4 label="Index to household schedule";
  attrib HA1_02   length=4 label="Women's age in years";
  attrib HA2_02   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_02   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_02   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_02   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_02   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_02  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_02  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_02 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_02 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_02  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_02  length=4 label="Date of birth (cmc)";
  attrib HA33_02  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_02  length=4 format=HA35_. label="Smoking";
  attrib HA40_02  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_02  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_02  length=4 format=HA50_. label="Under age 18";
  attrib HA51_02  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_02  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_02  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_02  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_02  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_02  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_02  length=4 format=HA57_. label="Anemia level";
  attrib HA58_02  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_03   length=4 label="Index to household schedule";
  attrib HA1_03   length=4 label="Women's age in years";
  attrib HA2_03   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_03   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_03   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_03   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_03   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_03  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_03  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_03 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_03 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_03  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_03  length=4 label="Date of birth (cmc)";
  attrib HA33_03  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_03  length=4 format=HA35_. label="Smoking";
  attrib HA40_03  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_03  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_03  length=4 format=HA50_. label="Under age 18";
  attrib HA51_03  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_03  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_03  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_03  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_03  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_03  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_03  length=4 format=HA57_. label="Anemia level";
  attrib HA58_03  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_04   length=4 label="Index to household schedule";
  attrib HA1_04   length=4 label="Women's age in years";
  attrib HA2_04   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_04   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_04   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_04   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_04   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_04  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_04  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_04 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_04 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_04  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_04  length=4 label="Date of birth (cmc)";
  attrib HA33_04  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_04  length=4 format=HA35_. label="Smoking";
  attrib HA40_04  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_04  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_04  length=4 format=HA50_. label="Under age 18";
  attrib HA51_04  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_04  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_04  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_04  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_04  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_04  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_04  length=4 format=HA57_. label="Anemia level";
  attrib HA58_04  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_05   length=4 label="Index to household schedule";
  attrib HA1_05   length=4 label="Women's age in years";
  attrib HA2_05   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_05   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_05   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_05   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_05   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_05  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_05  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_05 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_05 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_05  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_05  length=4 label="Date of birth (cmc)";
  attrib HA33_05  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_05  length=4 format=HA35_. label="Smoking";
  attrib HA40_05  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_05  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_05  length=4 format=HA50_. label="Under age 18";
  attrib HA51_05  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_05  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_05  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_05  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_05  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_05  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_05  length=4 format=HA57_. label="Anemia level";
  attrib HA58_05  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_06   length=4 label="Index to household schedule";
  attrib HA1_06   length=4 label="Women's age in years";
  attrib HA2_06   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_06   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_06   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_06   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_06   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_06  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_06  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_06 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_06 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_06  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_06  length=4 label="Date of birth (cmc)";
  attrib HA33_06  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_06  length=4 format=HA35_. label="Smoking";
  attrib HA40_06  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_06  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_06  length=4 format=HA50_. label="Under age 18";
  attrib HA51_06  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_06  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_06  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_06  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_06  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_06  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_06  length=4 format=HA57_. label="Anemia level";
  attrib HA58_06  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_07   length=4 label="Index to household schedule";
  attrib HA1_07   length=4 label="Women's age in years";
  attrib HA2_07   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_07   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_07   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_07   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_07   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_07  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_07  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_07 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_07 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_07  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_07  length=4 label="Date of birth (cmc)";
  attrib HA33_07  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_07  length=4 format=HA35_. label="Smoking";
  attrib HA40_07  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_07  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_07  length=4 format=HA50_. label="Under age 18";
  attrib HA51_07  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_07  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_07  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_07  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_07  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_07  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_07  length=4 format=HA57_. label="Anemia level";
  attrib HA58_07  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_08   length=4 label="Index to household schedule";
  attrib HA1_08   length=4 label="Women's age in years";
  attrib HA2_08   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_08   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_08   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_08   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_08   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_08  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_08  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_08 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_08 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_08  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_08  length=4 label="Date of birth (cmc)";
  attrib HA33_08  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_08  length=4 format=HA35_. label="Smoking";
  attrib HA40_08  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_08  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_08  length=4 format=HA50_. label="Under age 18";
  attrib HA51_08  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_08  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_08  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_08  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_08  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_08  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_08  length=4 format=HA57_. label="Anemia level";
  attrib HA58_08  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_09   length=4 label="Index to household schedule";
  attrib HA1_09   length=4 label="Women's age in years";
  attrib HA2_09   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_09   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_09   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_09   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_09   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_09  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_09  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_09 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_09 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_09  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_09  length=4 label="Date of birth (cmc)";
  attrib HA33_09  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_09  length=4 format=HA35_. label="Smoking";
  attrib HA40_09  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_09  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_09  length=4 format=HA50_. label="Under age 18";
  attrib HA51_09  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_09  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_09  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_09  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_09  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_09  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_09  length=4 format=HA57_. label="Anemia level";
  attrib HA58_09  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_10   length=4 label="Index to household schedule";
  attrib HA1_10   length=4 label="Women's age in years";
  attrib HA2_10   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_10   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_10   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_10   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_10   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_10  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_10  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_10 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_10 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_10  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_10  length=4 label="Date of birth (cmc)";
  attrib HA33_10  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_10  length=4 format=HA35_. label="Smoking";
  attrib HA40_10  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_10  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_10  length=4 format=HA50_. label="Under age 18";
  attrib HA51_10  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_10  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_10  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_10  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_10  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_10  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_10  length=4 format=HA57_. label="Anemia level";
  attrib HA58_10  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_11   length=4 label="Index to household schedule";
  attrib HA1_11   length=4 label="Women's age in years";
  attrib HA2_11   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_11   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_11   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_11   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_11   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_11  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_11  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_11 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_11 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_11  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_11  length=4 label="Date of birth (cmc)";
  attrib HA33_11  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_11  length=4 format=HA35_. label="Smoking";
  attrib HA40_11  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_11  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_11  length=4 format=HA50_. label="Under age 18";
  attrib HA51_11  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_11  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_11  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_11  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_11  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_11  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_11  length=4 format=HA57_. label="Anemia level";
  attrib HA58_11  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_12   length=4 label="Index to household schedule";
  attrib HA1_12   length=4 label="Women's age in years";
  attrib HA2_12   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_12   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_12   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_12   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_12   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_12  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_12  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_12 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_12 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_12  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_12  length=4 label="Date of birth (cmc)";
  attrib HA33_12  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_12  length=4 format=HA35_. label="Smoking";
  attrib HA40_12  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_12  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_12  length=4 format=HA50_. label="Under age 18";
  attrib HA51_12  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_12  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_12  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_12  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_12  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_12  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_12  length=4 format=HA57_. label="Anemia level";
  attrib HA58_12  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_13   length=4 label="Index to household schedule";
  attrib HA1_13   length=4 label="Women's age in years";
  attrib HA2_13   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_13   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_13   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_13   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_13   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_13  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_13  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_13 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_13 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_13  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_13  length=4 label="Date of birth (cmc)";
  attrib HA33_13  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_13  length=4 format=HA35_. label="Smoking";
  attrib HA40_13  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_13  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_13  length=4 format=HA50_. label="Under age 18";
  attrib HA51_13  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_13  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_13  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_13  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_13  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_13  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_13  length=4 format=HA57_. label="Anemia level";
  attrib HA58_13  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_14   length=4 label="Index to household schedule";
  attrib HA1_14   length=4 label="Women's age in years";
  attrib HA2_14   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_14   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_14   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_14   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_14   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_14  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_14  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_14 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_14 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_14  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_14  length=4 label="Date of birth (cmc)";
  attrib HA33_14  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_14  length=4 format=HA35_. label="Smoking";
  attrib HA40_14  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_14  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_14  length=4 format=HA50_. label="Under age 18";
  attrib HA51_14  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_14  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_14  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_14  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_14  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_14  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_14  length=4 format=HA57_. label="Anemia level";
  attrib HA58_14  length=4 format=HA58_. label="Agrees to referral";
  attrib HA0_15   length=4 label="Index to household schedule";
  attrib HA1_15   length=4 label="Women's age in years";
  attrib HA2_15   length=4 label="Respondent's weight (kilos-1d)";
  attrib HA3_15   length=4 label="Respondent's height (cms-1d)";
  attrib HA4_15   length=4 format=HA4_. label="Ht/A Percentile (resp.)";
  attrib HA5_15   length=4 format=HA5_. label="Ht/A Standard deviations (resp";
  attrib HA6_15   length=4 format=HA6_. label="Ht/A Percent ref. median (resp";
  attrib HA11_15  length=4 format=HA11_. label="Wt/Ht Std deviations(resp) DHS";
  attrib HA12_15  length=4 format=HA12_. label="Wt/Ht Percent ref. median (DHS";
  attrib HA12A_15 length=4 format=HA12A_. label="Wt/Ht Percent ref. median (Fog";
  attrib HA12B_15 length=4 format=HA12B_. label="Wt/Ht Percent ref. median (WHO";
  attrib HA13_15  length=4 format=HA13_. label="Result of measurement of resp.";
  attrib HA32_15  length=4 label="Date of birth (cmc)";
  attrib HA33_15  length=4 format=HA33_. label="Completeness of information";
  attrib HA35_15  length=4 format=HA35_. label="Smoking";
  attrib HA40_15  length=4 format=HA40_. label="Body mass index for respondent";
  attrib HA41_15  length=4 format=HA41_. label="Rohrer's index for respondent";
  attrib HA50_15  length=4 format=HA50_. label="Under age 18";
  attrib HA51_15  length=4 format=HA51_. label="Line no. of parent/caretaker";
  attrib HA52_15  length=4 format=HA52_. label="Read consent statement";
  attrib HA53_15  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HA54_15  length=4 format=HA54_. label="Currently pregnant";
  attrib HA55_15  length=4 format=HA55_. label="Result of measuring (Hemoglobin)";
  attrib HA56_15  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HA57_15  length=4 format=HA57_. label="Anemia level";
  attrib HA58_15  length=4 format=HA58_. label="Agrees to referral";
  attrib HC0_01   length=4 label="Index to household schedule";
  attrib HC1_01   length=4 label="Age in months";
  attrib HC2_01   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_01   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_01   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_01   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_01   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_01   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_01   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_01   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_01  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_01  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_01  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_01  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_01  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_01  length=4 label="Day of birth of child";
  attrib HC17_01  length=4 label="Date measured (day)";
  attrib HC18_01  length=4 label="Date measured (month)";
  attrib HC19_01  length=4 label="Date measured (year)";
  attrib HC27_01  length=4 format=HC27_. label="Sex";
  attrib HC30_01  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_01  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_01  length=4 label="Date of birth (cmc)";
  attrib HC33_01  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_01  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_01  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_01  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_01  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_01  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_01  length=4 format=HC57_. label="Anemia level";
  attrib HC58_01  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_01  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_01  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_01  length=4 label="Mother's highest year of education";
  attrib HC63_01  length=4 label="Preceding birth interval";
  attrib HC64_01  length=4 label="Birth order number";
  attrib HC0_02   length=4 label="Index to household schedule";
  attrib HC1_02   length=4 label="Age in months";
  attrib HC2_02   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_02   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_02   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_02   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_02   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_02   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_02   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_02   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_02  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_02  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_02  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_02  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_02  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_02  length=4 label="Day of birth of child";
  attrib HC17_02  length=4 label="Date measured (day)";
  attrib HC18_02  length=4 label="Date measured (month)";
  attrib HC19_02  length=4 label="Date measured (year)";
  attrib HC27_02  length=4 format=HC27_. label="Sex";
  attrib HC30_02  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_02  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_02  length=4 label="Date of birth (cmc)";
  attrib HC33_02  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_02  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_02  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_02  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_02  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_02  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_02  length=4 format=HC57_. label="Anemia level";
  attrib HC58_02  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_02  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_02  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_02  length=4 label="Mother's highest year of education";
  attrib HC63_02  length=4 label="Preceding birth interval";
  attrib HC64_02  length=4 label="Birth order number";
  attrib HC0_03   length=4 label="Index to household schedule";
  attrib HC1_03   length=4 label="Age in months";
  attrib HC2_03   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_03   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_03   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_03   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_03   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_03   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_03   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_03   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_03  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_03  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_03  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_03  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_03  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_03  length=4 label="Day of birth of child";
  attrib HC17_03  length=4 label="Date measured (day)";
  attrib HC18_03  length=4 label="Date measured (month)";
  attrib HC19_03  length=4 label="Date measured (year)";
  attrib HC27_03  length=4 format=HC27_. label="Sex";
  attrib HC30_03  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_03  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_03  length=4 label="Date of birth (cmc)";
  attrib HC33_03  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_03  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_03  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_03  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_03  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_03  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_03  length=4 format=HC57_. label="Anemia level";
  attrib HC58_03  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_03  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_03  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_03  length=4 label="Mother's highest year of education";
  attrib HC63_03  length=4 label="Preceding birth interval";
  attrib HC64_03  length=4 label="Birth order number";
  attrib HC0_04   length=4 label="Index to household schedule";
  attrib HC1_04   length=4 label="Age in months";
  attrib HC2_04   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_04   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_04   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_04   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_04   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_04   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_04   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_04   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_04  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_04  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_04  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_04  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_04  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_04  length=4 label="Day of birth of child";
  attrib HC17_04  length=4 label="Date measured (day)";
  attrib HC18_04  length=4 label="Date measured (month)";
  attrib HC19_04  length=4 label="Date measured (year)";
  attrib HC27_04  length=4 format=HC27_. label="Sex";
  attrib HC30_04  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_04  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_04  length=4 label="Date of birth (cmc)";
  attrib HC33_04  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_04  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_04  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_04  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_04  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_04  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_04  length=4 format=HC57_. label="Anemia level";
  attrib HC58_04  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_04  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_04  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_04  length=4 label="Mother's highest year of education";
  attrib HC63_04  length=4 label="Preceding birth interval";
  attrib HC64_04  length=4 label="Birth order number";
  attrib HC0_05   length=4 label="Index to household schedule";
  attrib HC1_05   length=4 label="Age in months";
  attrib HC2_05   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_05   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_05   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_05   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_05   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_05   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_05   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_05   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_05  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_05  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_05  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_05  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_05  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_05  length=4 label="Day of birth of child";
  attrib HC17_05  length=4 label="Date measured (day)";
  attrib HC18_05  length=4 label="Date measured (month)";
  attrib HC19_05  length=4 label="Date measured (year)";
  attrib HC27_05  length=4 format=HC27_. label="Sex";
  attrib HC30_05  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_05  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_05  length=4 label="Date of birth (cmc)";
  attrib HC33_05  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_05  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_05  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_05  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_05  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_05  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_05  length=4 format=HC57_. label="Anemia level";
  attrib HC58_05  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_05  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_05  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_05  length=4 label="Mother's highest year of education";
  attrib HC63_05  length=4 label="Preceding birth interval";
  attrib HC64_05  length=4 label="Birth order number";
  attrib HC0_06   length=4 label="Index to household schedule";
  attrib HC1_06   length=4 label="Age in months";
  attrib HC2_06   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_06   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_06   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_06   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_06   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_06   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_06   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_06   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_06  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_06  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_06  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_06  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_06  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_06  length=4 label="Day of birth of child";
  attrib HC17_06  length=4 label="Date measured (day)";
  attrib HC18_06  length=4 label="Date measured (month)";
  attrib HC19_06  length=4 label="Date measured (year)";
  attrib HC27_06  length=4 format=HC27_. label="Sex";
  attrib HC30_06  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_06  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_06  length=4 label="Date of birth (cmc)";
  attrib HC33_06  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_06  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_06  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_06  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_06  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_06  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_06  length=4 format=HC57_. label="Anemia level";
  attrib HC58_06  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_06  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_06  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_06  length=4 label="Mother's highest year of education";
  attrib HC63_06  length=4 label="Preceding birth interval";
  attrib HC64_06  length=4 label="Birth order number";
  attrib HC0_07   length=4 label="Index to household schedule";
  attrib HC1_07   length=4 label="Age in months";
  attrib HC2_07   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_07   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_07   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_07   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_07   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_07   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_07   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_07   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_07  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_07  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_07  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_07  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_07  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_07  length=4 label="Day of birth of child";
  attrib HC17_07  length=4 label="Date measured (day)";
  attrib HC18_07  length=4 label="Date measured (month)";
  attrib HC19_07  length=4 label="Date measured (year)";
  attrib HC27_07  length=4 format=HC27_. label="Sex";
  attrib HC30_07  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_07  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_07  length=4 label="Date of birth (cmc)";
  attrib HC33_07  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_07  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_07  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_07  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_07  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_07  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_07  length=4 format=HC57_. label="Anemia level";
  attrib HC58_07  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_07  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_07  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_07  length=4 label="Mother's highest year of education";
  attrib HC63_07  length=4 label="Preceding birth interval";
  attrib HC64_07  length=4 label="Birth order number";
  attrib HC0_08   length=4 label="Index to household schedule";
  attrib HC1_08   length=4 label="Age in months";
  attrib HC2_08   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_08   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_08   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_08   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_08   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_08   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_08   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_08   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_08  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_08  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_08  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_08  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_08  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_08  length=4 label="Day of birth of child";
  attrib HC17_08  length=4 label="Date measured (day)";
  attrib HC18_08  length=4 label="Date measured (month)";
  attrib HC19_08  length=4 label="Date measured (year)";
  attrib HC27_08  length=4 format=HC27_. label="Sex";
  attrib HC30_08  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_08  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_08  length=4 label="Date of birth (cmc)";
  attrib HC33_08  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_08  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_08  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_08  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_08  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_08  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_08  length=4 format=HC57_. label="Anemia level";
  attrib HC58_08  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_08  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_08  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_08  length=4 label="Mother's highest year of education";
  attrib HC63_08  length=4 label="Preceding birth interval";
  attrib HC64_08  length=4 label="Birth order number";
  attrib HC0_09   length=4 label="Index to household schedule";
  attrib HC1_09   length=4 label="Age in months";
  attrib HC2_09   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_09   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_09   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_09   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_09   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_09   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_09   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_09   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_09  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_09  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_09  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_09  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_09  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_09  length=4 label="Day of birth of child";
  attrib HC17_09  length=4 label="Date measured (day)";
  attrib HC18_09  length=4 label="Date measured (month)";
  attrib HC19_09  length=4 label="Date measured (year)";
  attrib HC27_09  length=4 format=HC27_. label="Sex";
  attrib HC30_09  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_09  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_09  length=4 label="Date of birth (cmc)";
  attrib HC33_09  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_09  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_09  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_09  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_09  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_09  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_09  length=4 format=HC57_. label="Anemia level";
  attrib HC58_09  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_09  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_09  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_09  length=4 label="Mother's highest year of education";
  attrib HC63_09  length=4 label="Preceding birth interval";
  attrib HC64_09  length=4 label="Birth order number";
  attrib HC0_10   length=4 label="Index to household schedule";
  attrib HC1_10   length=4 label="Age in months";
  attrib HC2_10   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_10   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_10   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_10   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_10   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_10   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_10   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_10   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_10  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_10  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_10  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_10  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_10  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_10  length=4 label="Day of birth of child";
  attrib HC17_10  length=4 label="Date measured (day)";
  attrib HC18_10  length=4 label="Date measured (month)";
  attrib HC19_10  length=4 label="Date measured (year)";
  attrib HC27_10  length=4 format=HC27_. label="Sex";
  attrib HC30_10  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_10  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_10  length=4 label="Date of birth (cmc)";
  attrib HC33_10  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_10  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_10  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_10  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_10  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_10  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_10  length=4 format=HC57_. label="Anemia level";
  attrib HC58_10  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_10  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_10  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_10  length=4 label="Mother's highest year of education";
  attrib HC63_10  length=4 label="Preceding birth interval";
  attrib HC64_10  length=4 label="Birth order number";
  attrib HC0_11   length=4 label="Index to household schedule";
  attrib HC1_11   length=4 label="Age in months";
  attrib HC2_11   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_11   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_11   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_11   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_11   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_11   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_11   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_11   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_11  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_11  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_11  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_11  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_11  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_11  length=4 label="Day of birth of child";
  attrib HC17_11  length=4 label="Date measured (day)";
  attrib HC18_11  length=4 label="Date measured (month)";
  attrib HC19_11  length=4 label="Date measured (year)";
  attrib HC27_11  length=4 format=HC27_. label="Sex";
  attrib HC30_11  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_11  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_11  length=4 label="Date of birth (cmc)";
  attrib HC33_11  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_11  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_11  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_11  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_11  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_11  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_11  length=4 format=HC57_. label="Anemia level";
  attrib HC58_11  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_11  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_11  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_11  length=4 label="Mother's highest year of education";
  attrib HC63_11  length=4 label="Preceding birth interval";
  attrib HC64_11  length=4 label="Birth order number";
  attrib HC0_12   length=4 label="Index to household schedule";
  attrib HC1_12   length=4 label="Age in months";
  attrib HC2_12   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_12   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_12   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_12   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_12   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_12   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_12   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_12   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_12  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_12  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_12  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_12  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_12  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_12  length=4 label="Day of birth of child";
  attrib HC17_12  length=4 label="Date measured (day)";
  attrib HC18_12  length=4 label="Date measured (month)";
  attrib HC19_12  length=4 label="Date measured (year)";
  attrib HC27_12  length=4 format=HC27_. label="Sex";
  attrib HC30_12  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_12  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_12  length=4 label="Date of birth (cmc)";
  attrib HC33_12  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_12  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_12  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_12  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_12  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_12  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_12  length=4 format=HC57_. label="Anemia level";
  attrib HC58_12  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_12  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_12  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_12  length=4 label="Mother's highest year of education";
  attrib HC63_12  length=4 label="Preceding birth interval";
  attrib HC64_12  length=4 label="Birth order number";
  attrib HC0_13   length=4 label="Index to household schedule";
  attrib HC1_13   length=4 label="Age in months";
  attrib HC2_13   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_13   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_13   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_13   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_13   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_13   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_13   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_13   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_13  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_13  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_13  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_13  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_13  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_13  length=4 label="Day of birth of child";
  attrib HC17_13  length=4 label="Date measured (day)";
  attrib HC18_13  length=4 label="Date measured (month)";
  attrib HC19_13  length=4 label="Date measured (year)";
  attrib HC27_13  length=4 format=HC27_. label="Sex";
  attrib HC30_13  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_13  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_13  length=4 label="Date of birth (cmc)";
  attrib HC33_13  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_13  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_13  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_13  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_13  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_13  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_13  length=4 format=HC57_. label="Anemia level";
  attrib HC58_13  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_13  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_13  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_13  length=4 label="Mother's highest year of education";
  attrib HC63_13  length=4 label="Preceding birth interval";
  attrib HC64_13  length=4 label="Birth order number";
  attrib HC0_14   length=4 label="Index to household schedule";
  attrib HC1_14   length=4 label="Age in months";
  attrib HC2_14   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_14   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_14   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_14   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_14   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_14   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_14   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_14   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_14  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_14  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_14  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_14  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_14  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_14  length=4 label="Day of birth of child";
  attrib HC17_14  length=4 label="Date measured (day)";
  attrib HC18_14  length=4 label="Date measured (month)";
  attrib HC19_14  length=4 label="Date measured (year)";
  attrib HC27_14  length=4 format=HC27_. label="Sex";
  attrib HC30_14  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_14  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_14  length=4 label="Date of birth (cmc)";
  attrib HC33_14  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_14  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_14  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_14  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_14  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_14  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_14  length=4 format=HC57_. label="Anemia level";
  attrib HC58_14  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_14  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_14  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_14  length=4 label="Mother's highest year of education";
  attrib HC63_14  length=4 label="Preceding birth interval";
  attrib HC64_14  length=4 label="Birth order number";
  attrib HC0_15   length=4 label="Index to household schedule";
  attrib HC1_15   length=4 label="Age in months";
  attrib HC2_15   length=4 label="Weight in kilograms (1 dec.)";
  attrib HC3_15   length=4 label="Height in centimeters (1 dec.)";
  attrib HC4_15   length=4 format=HC4_. label="Ht/A Percentile";
  attrib HC5_15   length=4 format=HC5_. label="Ht/A Standard deviations";
  attrib HC6_15   length=4 format=HC6_. label="Ht/A Percent of ref. median";
  attrib HC7_15   length=4 format=HC7_. label="Wt/A Percentile";
  attrib HC8_15   length=4 format=HC8_. label="Wt/A Standard deviations";
  attrib HC9_15   length=4 format=HC9_. label="Wt/A Percent of ref. median";
  attrib HC10_15  length=4 format=HC10_. label="Wt/Ht Percentile";
  attrib HC11_15  length=4 format=HC11_. label="Wt/Ht Standard deviations";
  attrib HC12_15  length=4 format=HC12_. label="Wt/Ht Percent of ref. median";
  attrib HC13_15  length=4 format=HC13_. label="Reason not measured";
  attrib HC15_15  length=4 format=HC15_. label="Height: lying or standing";
  attrib HC16_15  length=4 label="Day of birth of child";
  attrib HC17_15  length=4 label="Date measured (day)";
  attrib HC18_15  length=4 label="Date measured (month)";
  attrib HC19_15  length=4 label="Date measured (year)";
  attrib HC27_15  length=4 format=HC27_. label="Sex";
  attrib HC30_15  length=4 format=HC30_. label="Month of birth of child";
  attrib HC31_15  length=4 format=HC31_. label="Year of birth of child";
  attrib HC32_15  length=4 label="Date of birth (cmc)";
  attrib HC33_15  length=4 format=HC33_. label="Completeness of information";
  attrib HC51_15  length=4 format=HC51_. label="Line no. of parent/caretaker";
  attrib HC52_15  length=4 format=HC52_. label="Read consent statement";
  attrib HC53_15  length=4 label="Hemoglobin level (g/dl - 1 decimal)";
  attrib HC55_15  length=4 format=HC55_. label="Result of measuring (Hemoglobin)";
  attrib HC56_15  length=4 label="Hemoglobin level adjusted by altitud (g/";
  attrib HC57_15  length=4 format=HC57_. label="Anemia level";
  attrib HC58_15  length=4 format=HC58_. label="Agrees to referral";
  attrib HC60_15  length=4 format=HC60_. label="Mother's line number from woman's questi";
  attrib HC61_15  length=4 format=HC61_. label="Mother's highest educational level";
  attrib HC62_15  length=4 label="Mother's highest year of education";
  attrib HC63_15  length=4 label="Preceding birth interval";
  attrib HC64_15  length=4 label="Birth order number";
  attrib SH32A_01 length=4 label="Household member line";
  attrib SH33A_01 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_01 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_01 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_01 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_01  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_01  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_02 length=4 label="Household member line";
  attrib SH33A_02 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_02 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_02 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_02 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_02  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_02  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_03 length=4 label="Household member line";
  attrib SH33A_03 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_03 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_03 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_03 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_03  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_03  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_04 length=4 label="Household member line";
  attrib SH33A_04 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_04 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_04 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_04 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_04  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_04  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_05 length=4 label="Household member line";
  attrib SH33A_05 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_05 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_05 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_05 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_05  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_05  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_06 length=4 label="Household member line";
  attrib SH33A_06 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_06 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_06 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_06 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_06  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_06  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_07 length=4 label="Household member line";
  attrib SH33A_07 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_07 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_07 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_07 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_07  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_07  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_08 length=4 label="Household member line";
  attrib SH33A_08 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_08 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_08 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_08 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_08  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_08  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_09 length=4 label="Household member line";
  attrib SH33A_09 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_09 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_09 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_09 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_09  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_09  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_10 length=4 label="Household member line";
  attrib SH33A_10 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_10 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_10 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_10 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_10  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_10  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_11 length=4 label="Household member line";
  attrib SH33A_11 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_11 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_11 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_11 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_11  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_11  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_12 length=4 label="Household member line";
  attrib SH33A_12 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_12 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_12 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_12 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_12  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_12  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_13 length=4 label="Household member line";
  attrib SH33A_13 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_13 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_13 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_13 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_13  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_13  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_14 length=4 label="Household member line";
  attrib SH33A_14 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_14 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_14 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_14 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_14  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_14  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_15 length=4 label="Household member line";
  attrib SH33A_15 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_15 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_15 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_15 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_15  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_15  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_16 length=4 label="Household member line";
  attrib SH33A_16 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_16 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_16 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_16 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_16  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_16  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_17 length=4 label="Household member line";
  attrib SH33A_17 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_17 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_17 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_17 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_17  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_17  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_18 length=4 label="Household member line";
  attrib SH33A_18 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_18 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_18 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_18 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_18  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_18  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH32A_19 length=4 label="Household member line";
  attrib SH33A_19 length=4 format=SH33A_. label="Health problem: illness";
  attrib SH33B_19 length=4 format=SH33B_. label="Health problem: accident";
  attrib SH33C_19 length=4 format=SH33C_. label="Health problem: dental related";
  attrib SH33X_19 length=4 format=SH33X_. label="Health problem: other";
  attrib SH34_19  length=4 format=SH34_. label="What was done to treat the health proble";
  attrib SH35_19  length=4 format=SH35_. label="Reason did not seek medical attention";
  attrib SH37A_01 length=4 label="Household member line";
  attrib SH38_01  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_01  length=4 label="Number of days in hospital";
  attrib SH40_01  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_01  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_01  length=4 format=SH42_. label="Quality of service";
  attrib SH43_01  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_02 length=4 label="Household member line";
  attrib SH38_02  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_02  length=4 label="Number of days in hospital";
  attrib SH40_02  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_02  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_02  length=4 format=SH42_. label="Quality of service";
  attrib SH43_02  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_03 length=4 label="Household member line";
  attrib SH38_03  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_03  length=4 label="Number of days in hospital";
  attrib SH40_03  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_03  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_03  length=4 format=SH42_. label="Quality of service";
  attrib SH43_03  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_04 length=4 label="Household member line";
  attrib SH38_04  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_04  length=4 label="Number of days in hospital";
  attrib SH40_04  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_04  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_04  length=4 format=SH42_. label="Quality of service";
  attrib SH43_04  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_05 length=4 label="Household member line";
  attrib SH38_05  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_05  length=4 label="Number of days in hospital";
  attrib SH40_05  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_05  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_05  length=4 format=SH42_. label="Quality of service";
  attrib SH43_05  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_06 length=4 label="Household member line";
  attrib SH38_06  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_06  length=4 label="Number of days in hospital";
  attrib SH40_06  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_06  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_06  length=4 format=SH42_. label="Quality of service";
  attrib SH43_06  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_07 length=4 label="Household member line";
  attrib SH38_07  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_07  length=4 label="Number of days in hospital";
  attrib SH40_07  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_07  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_07  length=4 format=SH42_. label="Quality of service";
  attrib SH43_07  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_08 length=4 label="Household member line";
  attrib SH38_08  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_08  length=4 label="Number of days in hospital";
  attrib SH40_08  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_08  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_08  length=4 format=SH42_. label="Quality of service";
  attrib SH43_08  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_09 length=4 label="Household member line";
  attrib SH38_09  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_09  length=4 label="Number of days in hospital";
  attrib SH40_09  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_09  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_09  length=4 format=SH42_. label="Quality of service";
  attrib SH43_09  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_10 length=4 label="Household member line";
  attrib SH38_10  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_10  length=4 label="Number of days in hospital";
  attrib SH40_10  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_10  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_10  length=4 format=SH42_. label="Quality of service";
  attrib SH43_10  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_11 length=4 label="Household member line";
  attrib SH38_11  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_11  length=4 label="Number of days in hospital";
  attrib SH40_11  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_11  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_11  length=4 format=SH42_. label="Quality of service";
  attrib SH43_11  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_12 length=4 label="Household member line";
  attrib SH38_12  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_12  length=4 label="Number of days in hospital";
  attrib SH40_12  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_12  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_12  length=4 format=SH42_. label="Quality of service";
  attrib SH43_12  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_13 length=4 label="Household member line";
  attrib SH38_13  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_13  length=4 label="Number of days in hospital";
  attrib SH40_13  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_13  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_13  length=4 format=SH42_. label="Quality of service";
  attrib SH43_13  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_14 length=4 label="Household member line";
  attrib SH38_14  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_14  length=4 label="Number of days in hospital";
  attrib SH40_14  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_14  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_14  length=4 format=SH42_. label="Quality of service";
  attrib SH43_14  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_15 length=4 label="Household member line";
  attrib SH38_15  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_15  length=4 label="Number of days in hospital";
  attrib SH40_15  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_15  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_15  length=4 format=SH42_. label="Quality of service";
  attrib SH43_15  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_16 length=4 label="Household member line";
  attrib SH38_16  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_16  length=4 label="Number of days in hospital";
  attrib SH40_16  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_16  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_16  length=4 format=SH42_. label="Quality of service";
  attrib SH43_16  length=4 format=SH43_. label="Quality in general";
  attrib SH37A_17 length=4 label="Household member line";
  attrib SH38_17  length=4 format=SH38_. label="Reason for hospitalization";
  attrib SH39_17  length=4 label="Number of days in hospital";
  attrib SH40_17  length=4 format=SH40_. label="Used any medical insurance";
  attrib SH41_17  length=4 format=SH41_. label="Attention was on time";
  attrib SH42_17  length=4 format=SH42_. label="Quality of service";
  attrib SH43_17  length=4 format=SH43_. label="Quality in general";
infile 'COHR41FL.DAT' LRECL=4450 MISSOVER ;
    input
    @1    HHID     $12.
    @13   HV000    $3.
    @16   HV001    8.0
    @24   HV002    4.0
    @28   HV003    3.0
    @31   HV004    4.0
    @35   HV005    8.0
    @43   HV006    2.0
    @45   HV007    4.0
    @49   HV008    4.0
    @53   HV009    2.0
    @55   HV010    2.0
    @57   HV011    2.0
    @59   HV012    2.0
    @61   HV013    2.0
    @63   HV014    2.0
    @65   HV015    1.0
    @66   HV016    2.0
    @68   HV017    1.0
    @69   HV018    3.0
    @72   HV019    2.0
    @74   HV020    1.0
    @75   HV021    4.0
    @79   HV022    4.0
    @83   HV023    2.0
    @85   HV024    2.0
    @87   HV025    1.0
    @88   HV026    1.0
    @89   HV027    1.0
    @90   HV028    8.0
    @98   HV030    3.0
    @101  HV031    3.0
    @104  HV032    2.0
    @106  HV033    8.0
    @114  HV035    2.0
    @116  HV040    4.0
    @120  HV041    2.0
    @122  HV042    1.0
    @123  HV043    1.0
    @124  HV044    1.0
    @125  HV201    2.0
    @127  HV204    3.0
    @130  HV205    2.0
    @132  HV206    1.0
    @133  HV207    1.0
    @134  HV208    1.0
    @135  HV209    1.0
    @136  HV210    1.0
    @137  HV211    1.0
    @138  HV212    1.0
    @139  HV213    2.0
    @141  HV214    2.0
    @143  HV215    2.0
    @145  HV217    1.0
    @146  HV218    2.0
    @148  HV219    1.0
    @149  HV220    2.0
    @151  HV221    1.0
    @152  HV225    1.0
    @153  HV226    2.0
    @155  HV227    1.0
    @156  HV228    1.0
    @157  HV230    1.0
    @158  HV231    1.0
    @159  HV232    1.0
    @160  HV233    1.0
    @161  HV234    3.0
    @164  HVIDX_01 2.0
    @166  HV101_01 2.0
    @168  HV102_01 1.0
    @169  HV103_01 1.0
    @170  HV104_01 1.0
    @171  HV105_01 2.0
    @173  HV106_01 1.0
    @174  HV107_01 2.0
    @176  HV108_01 2.0
    @178  HV109_01 1.0
    @179  HV110_01 1.0
    @180  HV111_01 1.0
    @181  HV112_01 2.0
    @183  HV113_01 1.0
    @184  HV114_01 2.0
    @186  HV115_01 1.0
    @187  HV116_01 1.0
    @188  HV117_01 1.0
    @189  HV118_01 1.0
    @190  HV120_01 1.0
    @191  HV121_01 1.0
    @192  HV122_01 1.0
    @193  HV123_01 2.0
    @195  HV124_01 2.0
    @197  HV125_01 1.0
    @198  HV126_01 1.0
    @199  HV127_01 2.0
    @201  HV128_01 2.0
    @203  HV129_01 1.0
    @204  HVIDX_02 2.0
    @206  HV101_02 2.0
    @208  HV102_02 1.0
    @209  HV103_02 1.0
    @210  HV104_02 1.0
    @211  HV105_02 2.0
    @213  HV106_02 1.0
    @214  HV107_02 2.0
    @216  HV108_02 2.0
    @218  HV109_02 1.0
    @219  HV110_02 1.0
    @220  HV111_02 1.0
    @221  HV112_02 2.0
    @223  HV113_02 1.0
    @224  HV114_02 2.0
    @226  HV115_02 1.0
    @227  HV116_02 1.0
    @228  HV117_02 1.0
    @229  HV118_02 1.0
    @230  HV120_02 1.0
    @231  HV121_02 1.0
    @232  HV122_02 1.0
    @233  HV123_02 2.0
    @235  HV124_02 2.0
    @237  HV125_02 1.0
    @238  HV126_02 1.0
    @239  HV127_02 2.0
    @241  HV128_02 2.0
    @243  HV129_02 1.0
    @244  HVIDX_03 2.0
    @246  HV101_03 2.0
    @248  HV102_03 1.0
    @249  HV103_03 1.0
    @250  HV104_03 1.0
    @251  HV105_03 2.0
    @253  HV106_03 1.0
    @254  HV107_03 2.0
    @256  HV108_03 2.0
    @258  HV109_03 1.0
    @259  HV110_03 1.0
    @260  HV111_03 1.0
    @261  HV112_03 2.0
    @263  HV113_03 1.0
    @264  HV114_03 2.0
    @266  HV115_03 1.0
    @267  HV116_03 1.0
    @268  HV117_03 1.0
    @269  HV118_03 1.0
    @270  HV120_03 1.0
    @271  HV121_03 1.0
    @272  HV122_03 1.0
    @273  HV123_03 2.0
    @275  HV124_03 2.0
    @277  HV125_03 1.0
    @278  HV126_03 1.0
    @279  HV127_03 2.0
    @281  HV128_03 2.0
    @283  HV129_03 1.0
    @284  HVIDX_04 2.0
    @286  HV101_04 2.0
    @288  HV102_04 1.0
    @289  HV103_04 1.0
    @290  HV104_04 1.0
    @291  HV105_04 2.0
    @293  HV106_04 1.0
    @294  HV107_04 2.0
    @296  HV108_04 2.0
    @298  HV109_04 1.0
    @299  HV110_04 1.0
    @300  HV111_04 1.0
    @301  HV112_04 2.0
    @303  HV113_04 1.0
    @304  HV114_04 2.0
    @306  HV115_04 1.0
    @307  HV116_04 1.0
    @308  HV117_04 1.0
    @309  HV118_04 1.0
    @310  HV120_04 1.0
    @311  HV121_04 1.0
    @312  HV122_04 1.0
    @313  HV123_04 2.0
    @315  HV124_04 2.0
    @317  HV125_04 1.0
    @318  HV126_04 1.0
    @319  HV127_04 2.0
    @321  HV128_04 2.0
    @323  HV129_04 1.0
    @324  HVIDX_05 2.0
    @326  HV101_05 2.0
    @328  HV102_05 1.0
    @329  HV103_05 1.0
    @330  HV104_05 1.0
    @331  HV105_05 2.0
    @333  HV106_05 1.0
    @334  HV107_05 2.0
    @336  HV108_05 2.0
    @338  HV109_05 1.0
    @339  HV110_05 1.0
    @340  HV111_05 1.0
    @341  HV112_05 2.0
    @343  HV113_05 1.0
    @344  HV114_05 2.0
    @346  HV115_05 1.0
    @347  HV116_05 1.0
    @348  HV117_05 1.0
    @349  HV118_05 1.0
    @350  HV120_05 1.0
    @351  HV121_05 1.0
    @352  HV122_05 1.0
    @353  HV123_05 2.0
    @355  HV124_05 2.0
    @357  HV125_05 1.0
    @358  HV126_05 1.0
    @359  HV127_05 2.0
    @361  HV128_05 2.0
    @363  HV129_05 1.0
    @364  HVIDX_06 2.0
    @366  HV101_06 2.0
    @368  HV102_06 1.0
    @369  HV103_06 1.0
    @370  HV104_06 1.0
    @371  HV105_06 2.0
    @373  HV106_06 1.0
    @374  HV107_06 2.0
    @376  HV108_06 2.0
    @378  HV109_06 1.0
    @379  HV110_06 1.0
    @380  HV111_06 1.0
    @381  HV112_06 2.0
    @383  HV113_06 1.0
    @384  HV114_06 2.0
    @386  HV115_06 1.0
    @387  HV116_06 1.0
    @388  HV117_06 1.0
    @389  HV118_06 1.0
    @390  HV120_06 1.0
    @391  HV121_06 1.0
    @392  HV122_06 1.0
    @393  HV123_06 2.0
    @395  HV124_06 2.0
    @397  HV125_06 1.0
    @398  HV126_06 1.0
    @399  HV127_06 2.0
    @401  HV128_06 2.0
    @403  HV129_06 1.0
    @404  HVIDX_07 2.0
    @406  HV101_07 2.0
    @408  HV102_07 1.0
    @409  HV103_07 1.0
    @410  HV104_07 1.0
    @411  HV105_07 2.0
    @413  HV106_07 1.0
    @414  HV107_07 2.0
    @416  HV108_07 2.0
    @418  HV109_07 1.0
    @419  HV110_07 1.0
    @420  HV111_07 1.0
    @421  HV112_07 2.0
    @423  HV113_07 1.0
    @424  HV114_07 2.0
    @426  HV115_07 1.0
    @427  HV116_07 1.0
    @428  HV117_07 1.0
    @429  HV118_07 1.0
    @430  HV120_07 1.0
    @431  HV121_07 1.0
    @432  HV122_07 1.0
    @433  HV123_07 2.0
    @435  HV124_07 2.0
    @437  HV125_07 1.0
    @438  HV126_07 1.0
    @439  HV127_07 2.0
    @441  HV128_07 2.0
    @443  HV129_07 1.0
    @444  HVIDX_08 2.0
    @446  HV101_08 2.0
    @448  HV102_08 1.0
    @449  HV103_08 1.0
    @450  HV104_08 1.0
    @451  HV105_08 2.0
    @453  HV106_08 1.0
    @454  HV107_08 2.0
    @456  HV108_08 2.0
    @458  HV109_08 1.0
    @459  HV110_08 1.0
    @460  HV111_08 1.0
    @461  HV112_08 2.0
    @463  HV113_08 1.0
    @464  HV114_08 2.0
    @466  HV115_08 1.0
    @467  HV116_08 1.0
    @468  HV117_08 1.0
    @469  HV118_08 1.0
    @470  HV120_08 1.0
    @471  HV121_08 1.0
    @472  HV122_08 1.0
    @473  HV123_08 2.0
    @475  HV124_08 2.0
    @477  HV125_08 1.0
    @478  HV126_08 1.0
    @479  HV127_08 2.0
    @481  HV128_08 2.0
    @483  HV129_08 1.0
    @484  HVIDX_09 2.0
    @486  HV101_09 2.0
    @488  HV102_09 1.0
    @489  HV103_09 1.0
    @490  HV104_09 1.0
    @491  HV105_09 2.0
    @493  HV106_09 1.0
    @494  HV107_09 2.0
    @496  HV108_09 2.0
    @498  HV109_09 1.0
    @499  HV110_09 1.0
    @500  HV111_09 1.0
    @501  HV112_09 2.0
    @503  HV113_09 1.0
    @504  HV114_09 2.0
    @506  HV115_09 1.0
    @507  HV116_09 1.0
    @508  HV117_09 1.0
    @509  HV118_09 1.0
    @510  HV120_09 1.0
    @511  HV121_09 1.0
    @512  HV122_09 1.0
    @513  HV123_09 2.0
    @515  HV124_09 2.0
    @517  HV125_09 1.0
    @518  HV126_09 1.0
    @519  HV127_09 2.0
    @521  HV128_09 2.0
    @523  HV129_09 1.0
    @524  HVIDX_10 2.0
    @526  HV101_10 2.0
    @528  HV102_10 1.0
    @529  HV103_10 1.0
    @530  HV104_10 1.0
    @531  HV105_10 2.0
    @533  HV106_10 1.0
    @534  HV107_10 2.0
    @536  HV108_10 2.0
    @538  HV109_10 1.0
    @539  HV110_10 1.0
    @540  HV111_10 1.0
    @541  HV112_10 2.0
    @543  HV113_10 1.0
    @544  HV114_10 2.0
    @546  HV115_10 1.0
    @547  HV116_10 1.0
    @548  HV117_10 1.0
    @549  HV118_10 1.0
    @550  HV120_10 1.0
    @551  HV121_10 1.0
    @552  HV122_10 1.0
    @553  HV123_10 2.0
    @555  HV124_10 2.0
    @557  HV125_10 1.0
    @558  HV126_10 1.0
    @559  HV127_10 2.0
    @561  HV128_10 2.0
    @563  HV129_10 1.0
    @564  HVIDX_11 2.0
    @566  HV101_11 2.0
    @568  HV102_11 1.0
    @569  HV103_11 1.0
    @570  HV104_11 1.0
    @571  HV105_11 2.0
    @573  HV106_11 1.0
    @574  HV107_11 2.0
    @576  HV108_11 2.0
    @578  HV109_11 1.0
    @579  HV110_11 1.0
    @580  HV111_11 1.0
    @581  HV112_11 2.0
    @583  HV113_11 1.0
    @584  HV114_11 2.0
    @586  HV115_11 1.0
    @587  HV116_11 1.0
    @588  HV117_11 1.0
    @589  HV118_11 1.0
    @590  HV120_11 1.0
    @591  HV121_11 1.0
    @592  HV122_11 1.0
    @593  HV123_11 2.0
    @595  HV124_11 2.0
    @597  HV125_11 1.0
    @598  HV126_11 1.0
    @599  HV127_11 2.0
    @601  HV128_11 2.0
    @603  HV129_11 1.0
    @604  HVIDX_12 2.0
    @606  HV101_12 2.0
    @608  HV102_12 1.0
    @609  HV103_12 1.0
    @610  HV104_12 1.0
    @611  HV105_12 2.0
    @613  HV106_12 1.0
    @614  HV107_12 2.0
    @616  HV108_12 2.0
    @618  HV109_12 1.0
    @619  HV110_12 1.0
    @620  HV111_12 1.0
    @621  HV112_12 2.0
    @623  HV113_12 1.0
    @624  HV114_12 2.0
    @626  HV115_12 1.0
    @627  HV116_12 1.0
    @628  HV117_12 1.0
    @629  HV118_12 1.0
    @630  HV120_12 1.0
    @631  HV121_12 1.0
    @632  HV122_12 1.0
    @633  HV123_12 2.0
    @635  HV124_12 2.0
    @637  HV125_12 1.0
    @638  HV126_12 1.0
    @639  HV127_12 2.0
    @641  HV128_12 2.0
    @643  HV129_12 1.0
    @644  HVIDX_13 2.0
    @646  HV101_13 2.0
    @648  HV102_13 1.0
    @649  HV103_13 1.0
    @650  HV104_13 1.0
    @651  HV105_13 2.0
    @653  HV106_13 1.0
    @654  HV107_13 2.0
    @656  HV108_13 2.0
    @658  HV109_13 1.0
    @659  HV110_13 1.0
    @660  HV111_13 1.0
    @661  HV112_13 2.0
    @663  HV113_13 1.0
    @664  HV114_13 2.0
    @666  HV115_13 1.0
    @667  HV116_13 1.0
    @668  HV117_13 1.0
    @669  HV118_13 1.0
    @670  HV120_13 1.0
    @671  HV121_13 1.0
    @672  HV122_13 1.0
    @673  HV123_13 2.0
    @675  HV124_13 2.0
    @677  HV125_13 1.0
    @678  HV126_13 1.0
    @679  HV127_13 2.0
    @681  HV128_13 2.0
    @683  HV129_13 1.0
    @684  HVIDX_14 2.0
    @686  HV101_14 2.0
    @688  HV102_14 1.0
    @689  HV103_14 1.0
    @690  HV104_14 1.0
    @691  HV105_14 2.0
    @693  HV106_14 1.0
    @694  HV107_14 2.0
    @696  HV108_14 2.0
    @698  HV109_14 1.0
    @699  HV110_14 1.0
    @700  HV111_14 1.0
    @701  HV112_14 2.0
    @703  HV113_14 1.0
    @704  HV114_14 2.0
    @706  HV115_14 1.0
    @707  HV116_14 1.0
    @708  HV117_14 1.0
    @709  HV118_14 1.0
    @710  HV120_14 1.0
    @711  HV121_14 1.0
    @712  HV122_14 1.0
    @713  HV123_14 2.0
    @715  HV124_14 2.0
    @717  HV125_14 1.0
    @718  HV126_14 1.0
    @719  HV127_14 2.0
    @721  HV128_14 2.0
    @723  HV129_14 1.0
    @724  HVIDX_15 2.0
    @726  HV101_15 2.0
    @728  HV102_15 1.0
    @729  HV103_15 1.0
    @730  HV104_15 1.0
    @731  HV105_15 2.0
    @733  HV106_15 1.0
    @734  HV107_15 2.0
    @736  HV108_15 2.0
    @738  HV109_15 1.0
    @739  HV110_15 1.0
    @740  HV111_15 1.0
    @741  HV112_15 2.0
    @743  HV113_15 1.0
    @744  HV114_15 2.0
    @746  HV115_15 1.0
    @747  HV116_15 1.0
    @748  HV117_15 1.0
    @749  HV118_15 1.0
    @750  HV120_15 1.0
    @751  HV121_15 1.0
    @752  HV122_15 1.0
    @753  HV123_15 2.0
    @755  HV124_15 2.0
    @757  HV125_15 1.0
    @758  HV126_15 1.0
    @759  HV127_15 2.0
    @761  HV128_15 2.0
    @763  HV129_15 1.0
    @764  HVIDX_16 2.0
    @766  HV101_16 2.0
    @768  HV102_16 1.0
    @769  HV103_16 1.0
    @770  HV104_16 1.0
    @771  HV105_16 2.0
    @773  HV106_16 1.0
    @774  HV107_16 2.0
    @776  HV108_16 2.0
    @778  HV109_16 1.0
    @779  HV110_16 1.0
    @780  HV111_16 1.0
    @781  HV112_16 2.0
    @783  HV113_16 1.0
    @784  HV114_16 2.0
    @786  HV115_16 1.0
    @787  HV116_16 1.0
    @788  HV117_16 1.0
    @789  HV118_16 1.0
    @790  HV120_16 1.0
    @791  HV121_16 1.0
    @792  HV122_16 1.0
    @793  HV123_16 2.0
    @795  HV124_16 2.0
    @797  HV125_16 1.0
    @798  HV126_16 1.0
    @799  HV127_16 2.0
    @801  HV128_16 2.0
    @803  HV129_16 1.0
    @804  HVIDX_17 2.0
    @806  HV101_17 2.0
    @808  HV102_17 1.0
    @809  HV103_17 1.0
    @810  HV104_17 1.0
    @811  HV105_17 2.0
    @813  HV106_17 1.0
    @814  HV107_17 2.0
    @816  HV108_17 2.0
    @818  HV109_17 1.0
    @819  HV110_17 1.0
    @820  HV111_17 1.0
    @821  HV112_17 2.0
    @823  HV113_17 1.0
    @824  HV114_17 2.0
    @826  HV115_17 1.0
    @827  HV116_17 1.0
    @828  HV117_17 1.0
    @829  HV118_17 1.0
    @830  HV120_17 1.0
    @831  HV121_17 1.0
    @832  HV122_17 1.0
    @833  HV123_17 2.0
    @835  HV124_17 2.0
    @837  HV125_17 1.0
    @838  HV126_17 1.0
    @839  HV127_17 2.0
    @841  HV128_17 2.0
    @843  HV129_17 1.0
    @844  HVIDX_18 2.0
    @846  HV101_18 2.0
    @848  HV102_18 1.0
    @849  HV103_18 1.0
    @850  HV104_18 1.0
    @851  HV105_18 2.0
    @853  HV106_18 1.0
    @854  HV107_18 2.0
    @856  HV108_18 2.0
    @858  HV109_18 1.0
    @859  HV110_18 1.0
    @860  HV111_18 1.0
    @861  HV112_18 2.0
    @863  HV113_18 1.0
    @864  HV114_18 2.0
    @866  HV115_18 1.0
    @867  HV116_18 1.0
    @868  HV117_18 1.0
    @869  HV118_18 1.0
    @870  HV120_18 1.0
    @871  HV121_18 1.0
    @872  HV122_18 1.0
    @873  HV123_18 2.0
    @875  HV124_18 2.0
    @877  HV125_18 1.0
    @878  HV126_18 1.0
    @879  HV127_18 2.0
    @881  HV128_18 2.0
    @883  HV129_18 1.0
    @884  HVIDX_19 2.0
    @886  HV101_19 2.0
    @888  HV102_19 1.0
    @889  HV103_19 1.0
    @890  HV104_19 1.0
    @891  HV105_19 2.0
    @893  HV106_19 1.0
    @894  HV107_19 2.0
    @896  HV108_19 2.0
    @898  HV109_19 1.0
    @899  HV110_19 1.0
    @900  HV111_19 1.0
    @901  HV112_19 2.0
    @903  HV113_19 1.0
    @904  HV114_19 2.0
    @906  HV115_19 1.0
    @907  HV116_19 1.0
    @908  HV117_19 1.0
    @909  HV118_19 1.0
    @910  HV120_19 1.0
    @911  HV121_19 1.0
    @912  HV122_19 1.0
    @913  HV123_19 2.0
    @915  HV124_19 2.0
    @917  HV125_19 1.0
    @918  HV126_19 1.0
    @919  HV127_19 2.0
    @921  HV128_19 2.0
    @923  HV129_19 1.0
    @924  HVIDX_20 2.0
    @926  HV101_20 2.0
    @928  HV102_20 1.0
    @929  HV103_20 1.0
    @930  HV104_20 1.0
    @931  HV105_20 2.0
    @933  HV106_20 1.0
    @934  HV107_20 2.0
    @936  HV108_20 2.0
    @938  HV109_20 1.0
    @939  HV110_20 1.0
    @940  HV111_20 1.0
    @941  HV112_20 2.0
    @943  HV113_20 1.0
    @944  HV114_20 2.0
    @946  HV115_20 1.0
    @947  HV116_20 1.0
    @948  HV117_20 1.0
    @949  HV118_20 1.0
    @950  HV120_20 1.0
    @951  HV121_20 1.0
    @952  HV122_20 1.0
    @953  HV123_20 2.0
    @955  HV124_20 2.0
    @957  HV125_20 1.0
    @958  HV126_20 1.0
    @959  HV127_20 2.0
    @961  HV128_20 2.0
    @963  HV129_20 1.0
    @964  HVIDX_21 2.0
    @966  HV101_21 2.0
    @968  HV102_21 1.0
    @969  HV103_21 1.0
    @970  HV104_21 1.0
    @971  HV105_21 2.0
    @973  HV106_21 1.0
    @974  HV107_21 2.0
    @976  HV108_21 2.0
    @978  HV109_21 1.0
    @979  HV110_21 1.0
    @980  HV111_21 1.0
    @981  HV112_21 2.0
    @983  HV113_21 1.0
    @984  HV114_21 2.0
    @986  HV115_21 1.0
    @987  HV116_21 1.0
    @988  HV117_21 1.0
    @989  HV118_21 1.0
    @990  HV120_21 1.0
    @991  HV121_21 1.0
    @992  HV122_21 1.0
    @993  HV123_21 2.0
    @995  HV124_21 2.0
    @997  HV125_21 1.0
    @998  HV126_21 1.0
    @999  HV127_21 2.0
    @1001 HV128_21 2.0
    @1003 HV129_21 1.0
    @1004 SHSUBREG 2.0
    @1006 SHDEPTO  2.0
    @1008 SHMUNIP  2.0
    @1010 SHAREA   1.0
    @1011 SHMUEST  3.0
    @1014 SHLOCAL  1.0
    @1015 SH01     2.0
    @1017 SH03     1.0
    @1018 SH08     2.0
    @1020 SH29     1.0
    @1021 SH32     2.0
    @1023 SH37     2.0
    @1025 SHTF     2.0
    @1027 SHREC    1.0
    @1028 SHNSC    1.0
    @1029 SHPSH    1.0
    @1030 SHNSI    1.0
    @1031 SHTNS    1.0
    @1032 IDXH4_01 2.0
    @1034 SH03A_01 2.0
    @1036 SH04_01  2.0
    @1038 SH11_01  1.0
    @1039 SH12_01  2.0
    @1041 SH14_01  2.0
    @1043 SH23_01  1.0
    @1044 SH24_01  2.0
    @1046 SH25_01  1.0
    @1047 SH26_01  2.0
    @1049 SH27_01  1.0
    @1050 SH28_01  2.0
    @1052 SH30_01  1.0
    @1053 SH31_01  1.0
    @1054 IDXH4_02 2.0
    @1056 SH03A_02 2.0
    @1058 SH04_02  2.0
    @1060 SH11_02  1.0
    @1061 SH12_02  2.0
    @1063 SH14_02  2.0
    @1065 SH23_02  1.0
    @1066 SH24_02  2.0
    @1068 SH25_02  1.0
    @1069 SH26_02  2.0
    @1071 SH27_02  1.0
    @1072 SH28_02  2.0
    @1074 SH30_02  1.0
    @1075 SH31_02  1.0
    @1076 IDXH4_03 2.0
    @1078 SH03A_03 2.0
    @1080 SH04_03  2.0
    @1082 SH11_03  1.0
    @1083 SH12_03  2.0
    @1085 SH14_03  2.0
    @1087 SH23_03  1.0
    @1088 SH24_03  2.0
    @1090 SH25_03  1.0
    @1091 SH26_03  2.0
    @1093 SH27_03  1.0
    @1094 SH28_03  2.0
    @1096 SH30_03  1.0
    @1097 SH31_03  1.0
    @1098 IDXH4_04 2.0
    @1100 SH03A_04 2.0
    @1102 SH04_04  2.0
    @1104 SH11_04  1.0
    @1105 SH12_04  2.0
    @1107 SH14_04  2.0
    @1109 SH23_04  1.0
    @1110 SH24_04  2.0
    @1112 SH25_04  1.0
    @1113 SH26_04  2.0
    @1115 SH27_04  1.0
    @1116 SH28_04  2.0
    @1118 SH30_04  1.0
    @1119 SH31_04  1.0
    @1120 IDXH4_05 2.0
    @1122 SH03A_05 2.0
    @1124 SH04_05  2.0
    @1126 SH11_05  1.0
    @1127 SH12_05  2.0
    @1129 SH14_05  2.0
    @1131 SH23_05  1.0
    @1132 SH24_05  2.0
    @1134 SH25_05  1.0
    @1135 SH26_05  2.0
    @1137 SH27_05  1.0
    @1138 SH28_05  2.0
    @1140 SH30_05  1.0
    @1141 SH31_05  1.0
    @1142 IDXH4_06 2.0
    @1144 SH03A_06 2.0
    @1146 SH04_06  2.0
    @1148 SH11_06  1.0
    @1149 SH12_06  2.0
    @1151 SH14_06  2.0
    @1153 SH23_06  1.0
    @1154 SH24_06  2.0
    @1156 SH25_06  1.0
    @1157 SH26_06  2.0
    @1159 SH27_06  1.0
    @1160 SH28_06  2.0
    @1162 SH30_06  1.0
    @1163 SH31_06  1.0
    @1164 IDXH4_07 2.0
    @1166 SH03A_07 2.0
    @1168 SH04_07  2.0
    @1170 SH11_07  1.0
    @1171 SH12_07  2.0
    @1173 SH14_07  2.0
    @1175 SH23_07  1.0
    @1176 SH24_07  2.0
    @1178 SH25_07  1.0
    @1179 SH26_07  2.0
    @1181 SH27_07  1.0
    @1182 SH28_07  2.0
    @1184 SH30_07  1.0
    @1185 SH31_07  1.0
    @1186 IDXH4_08 2.0
    @1188 SH03A_08 2.0
    @1190 SH04_08  2.0
    @1192 SH11_08  1.0
    @1193 SH12_08  2.0
    @1195 SH14_08  2.0
    @1197 SH23_08  1.0
    @1198 SH24_08  2.0
    @1200 SH25_08  1.0
    @1201 SH26_08  2.0
    @1203 SH27_08  1.0
    @1204 SH28_08  2.0
    @1206 SH30_08  1.0
    @1207 SH31_08  1.0
    @1208 IDXH4_09 2.0
    @1210 SH03A_09 2.0
    @1212 SH04_09  2.0
    @1214 SH11_09  1.0
    @1215 SH12_09  2.0
    @1217 SH14_09  2.0
    @1219 SH23_09  1.0
    @1220 SH24_09  2.0
    @1222 SH25_09  1.0
    @1223 SH26_09  2.0
    @1225 SH27_09  1.0
    @1226 SH28_09  2.0
    @1228 SH30_09  1.0
    @1229 SH31_09  1.0
    @1230 IDXH4_10 2.0
    @1232 SH03A_10 2.0
    @1234 SH04_10  2.0
    @1236 SH11_10  1.0
    @1237 SH12_10  2.0
    @1239 SH14_10  2.0
    @1241 SH23_10  1.0
    @1242 SH24_10  2.0
    @1244 SH25_10  1.0
    @1245 SH26_10  2.0
    @1247 SH27_10  1.0
    @1248 SH28_10  2.0
    @1250 SH30_10  1.0
    @1251 SH31_10  1.0
    @1252 IDXH4_11 2.0
    @1254 SH03A_11 2.0
    @1256 SH04_11  2.0
    @1258 SH11_11  1.0
    @1259 SH12_11  2.0
    @1261 SH14_11  2.0
    @1263 SH23_11  1.0
    @1264 SH24_11  2.0
    @1266 SH25_11  1.0
    @1267 SH26_11  2.0
    @1269 SH27_11  1.0
    @1270 SH28_11  2.0
    @1272 SH30_11  1.0
    @1273 SH31_11  1.0
    @1274 IDXH4_12 2.0
    @1276 SH03A_12 2.0
    @1278 SH04_12  2.0
    @1280 SH11_12  1.0
    @1281 SH12_12  2.0
    @1283 SH14_12  2.0
    @1285 SH23_12  1.0
    @1286 SH24_12  2.0
    @1288 SH25_12  1.0
    @1289 SH26_12  2.0
    @1291 SH27_12  1.0
    @1292 SH28_12  2.0
    @1294 SH30_12  1.0
    @1295 SH31_12  1.0
    @1296 IDXH4_13 2.0
    @1298 SH03A_13 2.0
    @1300 SH04_13  2.0
    @1302 SH11_13  1.0
    @1303 SH12_13  2.0
    @1305 SH14_13  2.0
    @1307 SH23_13  1.0
    @1308 SH24_13  2.0
    @1310 SH25_13  1.0
    @1311 SH26_13  2.0
    @1313 SH27_13  1.0
    @1314 SH28_13  2.0
    @1316 SH30_13  1.0
    @1317 SH31_13  1.0
    @1318 IDXH4_14 2.0
    @1320 SH03A_14 2.0
    @1322 SH04_14  2.0
    @1324 SH11_14  1.0
    @1325 SH12_14  2.0
    @1327 SH14_14  2.0
    @1329 SH23_14  1.0
    @1330 SH24_14  2.0
    @1332 SH25_14  1.0
    @1333 SH26_14  2.0
    @1335 SH27_14  1.0
    @1336 SH28_14  2.0
    @1338 SH30_14  1.0
    @1339 SH31_14  1.0
    @1340 IDXH4_15 2.0
    @1342 SH03A_15 2.0
    @1344 SH04_15  2.0
    @1346 SH11_15  1.0
    @1347 SH12_15  2.0
    @1349 SH14_15  2.0
    @1351 SH23_15  1.0
    @1352 SH24_15  2.0
    @1354 SH25_15  1.0
    @1355 SH26_15  2.0
    @1357 SH27_15  1.0
    @1358 SH28_15  2.0
    @1360 SH30_15  1.0
    @1361 SH31_15  1.0
    @1362 IDXH4_16 2.0
    @1364 SH03A_16 2.0
    @1366 SH04_16  2.0
    @1368 SH11_16  1.0
    @1369 SH12_16  2.0
    @1371 SH14_16  2.0
    @1373 SH23_16  1.0
    @1374 SH24_16  2.0
    @1376 SH25_16  1.0
    @1377 SH26_16  2.0
    @1379 SH27_16  1.0
    @1380 SH28_16  2.0
    @1382 SH30_16  1.0
    @1383 SH31_16  1.0
    @1384 IDXH4_17 2.0
    @1386 SH03A_17 2.0
    @1388 SH04_17  2.0
    @1390 SH11_17  1.0
    @1391 SH12_17  2.0
    @1393 SH14_17  2.0
    @1395 SH23_17  1.0
    @1396 SH24_17  2.0
    @1398 SH25_17  1.0
    @1399 SH26_17  2.0
    @1401 SH27_17  1.0
    @1402 SH28_17  2.0
    @1404 SH30_17  1.0
    @1405 SH31_17  1.0
    @1406 IDXH4_18 2.0
    @1408 SH03A_18 2.0
    @1410 SH04_18  2.0
    @1412 SH11_18  1.0
    @1413 SH12_18  2.0
    @1415 SH14_18  2.0
    @1417 SH23_18  1.0
    @1418 SH24_18  2.0
    @1420 SH25_18  1.0
    @1421 SH26_18  2.0
    @1423 SH27_18  1.0
    @1424 SH28_18  2.0
    @1426 SH30_18  1.0
    @1427 SH31_18  1.0
    @1428 IDXH4_19 2.0
    @1430 SH03A_19 2.0
    @1432 SH04_19  2.0
    @1434 SH11_19  1.0
    @1435 SH12_19  2.0
    @1437 SH14_19  2.0
    @1439 SH23_19  1.0
    @1440 SH24_19  2.0
    @1442 SH25_19  1.0
    @1443 SH26_19  2.0
    @1445 SH27_19  1.0
    @1446 SH28_19  2.0
    @1448 SH30_19  1.0
    @1449 SH31_19  1.0
    @1450 IDXH4_20 2.0
    @1452 SH03A_20 2.0
    @1454 SH04_20  2.0
    @1456 SH11_20  1.0
    @1457 SH12_20  2.0
    @1459 SH14_20  2.0
    @1461 SH23_20  1.0
    @1462 SH24_20  2.0
    @1464 SH25_20  1.0
    @1465 SH26_20  2.0
    @1467 SH27_20  1.0
    @1468 SH28_20  2.0
    @1470 SH30_20  1.0
    @1471 SH31_20  1.0
    @1472 IDXH4_21 2.0
    @1474 SH03A_21 2.0
    @1476 SH04_21  2.0
    @1478 SH11_21  1.0
    @1479 SH12_21  2.0
    @1481 SH14_21  2.0
    @1483 SH23_21  1.0
    @1484 SH24_21  2.0
    @1486 SH25_21  1.0
    @1487 SH26_21  2.0
    @1489 SH27_21  1.0
    @1490 SH28_21  2.0
    @1492 SH30_21  1.0
    @1493 SH31_21  1.0
    @1494 HA0_01   2.0
    @1496 HA1_01   2.0
    @1498 HA2_01   4.0
    @1502 HA3_01   4.0
    @1506 HA4_01   4.0
    @1510 HA5_01   4.0
    @1514 HA6_01   5.0
    @1519 HA11_01  4.0
    @1523 HA12_01  5.0
    @1528 HA12A_01 5.0
    @1533 HA12B_01 5.0
    @1538 HA13_01  1.0
    @1539 HA32_01  4.0
    @1543 HA33_01  1.0
    @1544 HA35_01  1.0
    @1545 HA40_01  4.0
    @1549 HA41_01  4.0
    @1553 HA50_01  1.0
    @1554 HA51_01  2.0
    @1556 HA52_01  1.0
    @1557 HA53_01  3.0
    @1560 HA54_01  1.0
    @1561 HA55_01  1.0
    @1562 HA56_01  3.0
    @1565 HA57_01  1.0
    @1566 HA58_01  1.0
    @1567 HA0_02   2.0
    @1569 HA1_02   2.0
    @1571 HA2_02   4.0
    @1575 HA3_02   4.0
    @1579 HA4_02   4.0
    @1583 HA5_02   4.0
    @1587 HA6_02   5.0
    @1592 HA11_02  4.0
    @1596 HA12_02  5.0
    @1601 HA12A_02 5.0
    @1606 HA12B_02 5.0
    @1611 HA13_02  1.0
    @1612 HA32_02  4.0
    @1616 HA33_02  1.0
    @1617 HA35_02  1.0
    @1618 HA40_02  4.0
    @1622 HA41_02  4.0
    @1626 HA50_02  1.0
    @1627 HA51_02  2.0
    @1629 HA52_02  1.0
    @1630 HA53_02  3.0
    @1633 HA54_02  1.0
    @1634 HA55_02  1.0
    @1635 HA56_02  3.0
    @1638 HA57_02  1.0
    @1639 HA58_02  1.0
    @1640 HA0_03   2.0
    @1642 HA1_03   2.0
    @1644 HA2_03   4.0
    @1648 HA3_03   4.0
    @1652 HA4_03   4.0
    @1656 HA5_03   4.0
    @1660 HA6_03   5.0
    @1665 HA11_03  4.0
    @1669 HA12_03  5.0
    @1674 HA12A_03 5.0
    @1679 HA12B_03 5.0
    @1684 HA13_03  1.0
    @1685 HA32_03  4.0
    @1689 HA33_03  1.0
    @1690 HA35_03  1.0
    @1691 HA40_03  4.0
    @1695 HA41_03  4.0
    @1699 HA50_03  1.0
    @1700 HA51_03  2.0
    @1702 HA52_03  1.0
    @1703 HA53_03  3.0
    @1706 HA54_03  1.0
    @1707 HA55_03  1.0
    @1708 HA56_03  3.0
    @1711 HA57_03  1.0
    @1712 HA58_03  1.0
    @1713 HA0_04   2.0
    @1715 HA1_04   2.0
    @1717 HA2_04   4.0
    @1721 HA3_04   4.0
    @1725 HA4_04   4.0
    @1729 HA5_04   4.0
    @1733 HA6_04   5.0
    @1738 HA11_04  4.0
    @1742 HA12_04  5.0
    @1747 HA12A_04 5.0
    @1752 HA12B_04 5.0
    @1757 HA13_04  1.0
    @1758 HA32_04  4.0
    @1762 HA33_04  1.0
    @1763 HA35_04  1.0
    @1764 HA40_04  4.0
    @1768 HA41_04  4.0
    @1772 HA50_04  1.0
    @1773 HA51_04  2.0
    @1775 HA52_04  1.0
    @1776 HA53_04  3.0
    @1779 HA54_04  1.0
    @1780 HA55_04  1.0
    @1781 HA56_04  3.0
    @1784 HA57_04  1.0
    @1785 HA58_04  1.0
    @1786 HA0_05   2.0
    @1788 HA1_05   2.0
    @1790 HA2_05   4.0
    @1794 HA3_05   4.0
    @1798 HA4_05   4.0
    @1802 HA5_05   4.0
    @1806 HA6_05   5.0
    @1811 HA11_05  4.0
    @1815 HA12_05  5.0
    @1820 HA12A_05 5.0
    @1825 HA12B_05 5.0
    @1830 HA13_05  1.0
    @1831 HA32_05  4.0
    @1835 HA33_05  1.0
    @1836 HA35_05  1.0
    @1837 HA40_05  4.0
    @1841 HA41_05  4.0
    @1845 HA50_05  1.0
    @1846 HA51_05  2.0
    @1848 HA52_05  1.0
    @1849 HA53_05  3.0
    @1852 HA54_05  1.0
    @1853 HA55_05  1.0
    @1854 HA56_05  3.0
    @1857 HA57_05  1.0
    @1858 HA58_05  1.0
    @1859 HA0_06   2.0
    @1861 HA1_06   2.0
    @1863 HA2_06   4.0
    @1867 HA3_06   4.0
    @1871 HA4_06   4.0
    @1875 HA5_06   4.0
    @1879 HA6_06   5.0
    @1884 HA11_06  4.0
    @1888 HA12_06  5.0
    @1893 HA12A_06 5.0
    @1898 HA12B_06 5.0
    @1903 HA13_06  1.0
    @1904 HA32_06  4.0
    @1908 HA33_06  1.0
    @1909 HA35_06  1.0
    @1910 HA40_06  4.0
    @1914 HA41_06  4.0
    @1918 HA50_06  1.0
    @1919 HA51_06  2.0
    @1921 HA52_06  1.0
    @1922 HA53_06  3.0
    @1925 HA54_06  1.0
    @1926 HA55_06  1.0
    @1927 HA56_06  3.0
    @1930 HA57_06  1.0
    @1931 HA58_06  1.0
    @1932 HA0_07   2.0
    @1934 HA1_07   2.0
    @1936 HA2_07   4.0
    @1940 HA3_07   4.0
    @1944 HA4_07   4.0
    @1948 HA5_07   4.0
    @1952 HA6_07   5.0
    @1957 HA11_07  4.0
    @1961 HA12_07  5.0
    @1966 HA12A_07 5.0
    @1971 HA12B_07 5.0
    @1976 HA13_07  1.0
    @1977 HA32_07  4.0
    @1981 HA33_07  1.0
    @1982 HA35_07  1.0
    @1983 HA40_07  4.0
    @1987 HA41_07  4.0
    @1991 HA50_07  1.0
    @1992 HA51_07  2.0
    @1994 HA52_07  1.0
    @1995 HA53_07  3.0
    @1998 HA54_07  1.0
    @1999 HA55_07  1.0
    @2000 HA56_07  3.0
    @2003 HA57_07  1.0
    @2004 HA58_07  1.0
    @2005 HA0_08   2.0
    @2007 HA1_08   2.0
    @2009 HA2_08   4.0
    @2013 HA3_08   4.0
    @2017 HA4_08   4.0
    @2021 HA5_08   4.0
    @2025 HA6_08   5.0
    @2030 HA11_08  4.0
    @2034 HA12_08  5.0
    @2039 HA12A_08 5.0
    @2044 HA12B_08 5.0
    @2049 HA13_08  1.0
    @2050 HA32_08  4.0
    @2054 HA33_08  1.0
    @2055 HA35_08  1.0
    @2056 HA40_08  4.0
    @2060 HA41_08  4.0
    @2064 HA50_08  1.0
    @2065 HA51_08  2.0
    @2067 HA52_08  1.0
    @2068 HA53_08  3.0
    @2071 HA54_08  1.0
    @2072 HA55_08  1.0
    @2073 HA56_08  3.0
    @2076 HA57_08  1.0
    @2077 HA58_08  1.0
    @2078 HA0_09   2.0
    @2080 HA1_09   2.0
    @2082 HA2_09   4.0
    @2086 HA3_09   4.0
    @2090 HA4_09   4.0
    @2094 HA5_09   4.0
    @2098 HA6_09   5.0
    @2103 HA11_09  4.0
    @2107 HA12_09  5.0
    @2112 HA12A_09 5.0
    @2117 HA12B_09 5.0
    @2122 HA13_09  1.0
    @2123 HA32_09  4.0
    @2127 HA33_09  1.0
    @2128 HA35_09  1.0
    @2129 HA40_09  4.0
    @2133 HA41_09  4.0
    @2137 HA50_09  1.0
    @2138 HA51_09  2.0
    @2140 HA52_09  1.0
    @2141 HA53_09  3.0
    @2144 HA54_09  1.0
    @2145 HA55_09  1.0
    @2146 HA56_09  3.0
    @2149 HA57_09  1.0
    @2150 HA58_09  1.0
    @2151 HA0_10   2.0
    @2153 HA1_10   2.0
    @2155 HA2_10   4.0
    @2159 HA3_10   4.0
    @2163 HA4_10   4.0
    @2167 HA5_10   4.0
    @2171 HA6_10   5.0
    @2176 HA11_10  4.0
    @2180 HA12_10  5.0
    @2185 HA12A_10 5.0
    @2190 HA12B_10 5.0
    @2195 HA13_10  1.0
    @2196 HA32_10  4.0
    @2200 HA33_10  1.0
    @2201 HA35_10  1.0
    @2202 HA40_10  4.0
    @2206 HA41_10  4.0
    @2210 HA50_10  1.0
    @2211 HA51_10  2.0
    @2213 HA52_10  1.0
    @2214 HA53_10  3.0
    @2217 HA54_10  1.0
    @2218 HA55_10  1.0
    @2219 HA56_10  3.0
    @2222 HA57_10  1.0
    @2223 HA58_10  1.0
    @2224 HA0_11   2.0
    @2226 HA1_11   2.0
    @2228 HA2_11   4.0
    @2232 HA3_11   4.0
    @2236 HA4_11   4.0
    @2240 HA5_11   4.0
    @2244 HA6_11   5.0
    @2249 HA11_11  4.0
    @2253 HA12_11  5.0
    @2258 HA12A_11 5.0
    @2263 HA12B_11 5.0
    @2268 HA13_11  1.0
    @2269 HA32_11  4.0
    @2273 HA33_11  1.0
    @2274 HA35_11  1.0
    @2275 HA40_11  4.0
    @2279 HA41_11  4.0
    @2283 HA50_11  1.0
    @2284 HA51_11  2.0
    @2286 HA52_11  1.0
    @2287 HA53_11  3.0
    @2290 HA54_11  1.0
    @2291 HA55_11  1.0
    @2292 HA56_11  3.0
    @2295 HA57_11  1.0
    @2296 HA58_11  1.0
    @2297 HA0_12   2.0
    @2299 HA1_12   2.0
    @2301 HA2_12   4.0
    @2305 HA3_12   4.0
    @2309 HA4_12   4.0
    @2313 HA5_12   4.0
    @2317 HA6_12   5.0
    @2322 HA11_12  4.0
    @2326 HA12_12  5.0
    @2331 HA12A_12 5.0
    @2336 HA12B_12 5.0
    @2341 HA13_12  1.0
    @2342 HA32_12  4.0
    @2346 HA33_12  1.0
    @2347 HA35_12  1.0
    @2348 HA40_12  4.0
    @2352 HA41_12  4.0
    @2356 HA50_12  1.0
    @2357 HA51_12  2.0
    @2359 HA52_12  1.0
    @2360 HA53_12  3.0
    @2363 HA54_12  1.0
    @2364 HA55_12  1.0
    @2365 HA56_12  3.0
    @2368 HA57_12  1.0
    @2369 HA58_12  1.0
    @2370 HA0_13   2.0
    @2372 HA1_13   2.0
    @2374 HA2_13   4.0
    @2378 HA3_13   4.0
    @2382 HA4_13   4.0
    @2386 HA5_13   4.0
    @2390 HA6_13   5.0
    @2395 HA11_13  4.0
    @2399 HA12_13  5.0
    @2404 HA12A_13 5.0
    @2409 HA12B_13 5.0
    @2414 HA13_13  1.0
    @2415 HA32_13  4.0
    @2419 HA33_13  1.0
    @2420 HA35_13  1.0
    @2421 HA40_13  4.0
    @2425 HA41_13  4.0
    @2429 HA50_13  1.0
    @2430 HA51_13  2.0
    @2432 HA52_13  1.0
    @2433 HA53_13  3.0
    @2436 HA54_13  1.0
    @2437 HA55_13  1.0
    @2438 HA56_13  3.0
    @2441 HA57_13  1.0
    @2442 HA58_13  1.0
    @2443 HA0_14   2.0
    @2445 HA1_14   2.0
    @2447 HA2_14   4.0
    @2451 HA3_14   4.0
    @2455 HA4_14   4.0
    @2459 HA5_14   4.0
    @2463 HA6_14   5.0
    @2468 HA11_14  4.0
    @2472 HA12_14  5.0
    @2477 HA12A_14 5.0
    @2482 HA12B_14 5.0
    @2487 HA13_14  1.0
    @2488 HA32_14  4.0
    @2492 HA33_14  1.0
    @2493 HA35_14  1.0
    @2494 HA40_14  4.0
    @2498 HA41_14  4.0
    @2502 HA50_14  1.0
    @2503 HA51_14  2.0
    @2505 HA52_14  1.0
    @2506 HA53_14  3.0
    @2509 HA54_14  1.0
    @2510 HA55_14  1.0
    @2511 HA56_14  3.0
    @2514 HA57_14  1.0
    @2515 HA58_14  1.0
    @2516 HA0_15   2.0
    @2518 HA1_15   2.0
    @2520 HA2_15   4.0
    @2524 HA3_15   4.0
    @2528 HA4_15   4.0
    @2532 HA5_15   4.0
    @2536 HA6_15   5.0
    @2541 HA11_15  4.0
    @2545 HA12_15  5.0
    @2550 HA12A_15 5.0
    @2555 HA12B_15 5.0
    @2560 HA13_15  1.0
    @2561 HA32_15  4.0
    @2565 HA33_15  1.0
    @2566 HA35_15  1.0
    @2567 HA40_15  4.0
    @2571 HA41_15  4.0
    @2575 HA50_15  1.0
    @2576 HA51_15  2.0
    @2578 HA52_15  1.0
    @2579 HA53_15  3.0
    @2582 HA54_15  1.0
    @2583 HA55_15  1.0
    @2584 HA56_15  3.0
    @2587 HA57_15  1.0
    @2588 HA58_15  1.0
    @2589 HC0_01   2.0
    @2591 HC1_01   2.0
    @2593 HC2_01   4.0
    @2597 HC3_01   4.0
    @2601 HC4_01   4.0
    @2605 HC5_01   4.0
    @2609 HC6_01   5.0
    @2614 HC7_01   4.0
    @2618 HC8_01   4.0
    @2622 HC9_01   5.0
    @2627 HC10_01  4.0
    @2631 HC11_01  4.0
    @2635 HC12_01  5.0
    @2640 HC13_01  1.0
    @2641 HC15_01  1.0
    @2642 HC16_01  2.0
    @2644 HC17_01  2.0
    @2646 HC18_01  2.0
    @2648 HC19_01  4.0
    @2652 HC27_01  1.0
    @2653 HC30_01  2.0
    @2655 HC31_01  4.0
    @2659 HC32_01  4.0
    @2663 HC33_01  1.0
    @2664 HC51_01  2.0
    @2666 HC52_01  1.0
    @2667 HC53_01  3.0
    @2670 HC55_01  1.0
    @2671 HC56_01  4.0
    @2675 HC57_01  1.0
    @2676 HC58_01  1.0
    @2677 HC60_01  3.0
    @2680 HC61_01  1.0
    @2681 HC62_01  2.0
    @2683 HC63_01  3.0
    @2686 HC64_01  2.0
    @2688 HC0_02   2.0
    @2690 HC1_02   2.0
    @2692 HC2_02   4.0
    @2696 HC3_02   4.0
    @2700 HC4_02   4.0
    @2704 HC5_02   4.0
    @2708 HC6_02   5.0
    @2713 HC7_02   4.0
    @2717 HC8_02   4.0
    @2721 HC9_02   5.0
    @2726 HC10_02  4.0
    @2730 HC11_02  4.0
    @2734 HC12_02  5.0
    @2739 HC13_02  1.0
    @2740 HC15_02  1.0
    @2741 HC16_02  2.0
    @2743 HC17_02  2.0
    @2745 HC18_02  2.0
    @2747 HC19_02  4.0
    @2751 HC27_02  1.0
    @2752 HC30_02  2.0
    @2754 HC31_02  4.0
    @2758 HC32_02  4.0
    @2762 HC33_02  1.0
    @2763 HC51_02  2.0
    @2765 HC52_02  1.0
    @2766 HC53_02  3.0
    @2769 HC55_02  1.0
    @2770 HC56_02  4.0
    @2774 HC57_02  1.0
    @2775 HC58_02  1.0
    @2776 HC60_02  3.0
    @2779 HC61_02  1.0
    @2780 HC62_02  2.0
    @2782 HC63_02  3.0
    @2785 HC64_02  2.0
    @2787 HC0_03   2.0
    @2789 HC1_03   2.0
    @2791 HC2_03   4.0
    @2795 HC3_03   4.0
    @2799 HC4_03   4.0
    @2803 HC5_03   4.0
    @2807 HC6_03   5.0
    @2812 HC7_03   4.0
    @2816 HC8_03   4.0
    @2820 HC9_03   5.0
    @2825 HC10_03  4.0
    @2829 HC11_03  4.0
    @2833 HC12_03  5.0
    @2838 HC13_03  1.0
    @2839 HC15_03  1.0
    @2840 HC16_03  2.0
    @2842 HC17_03  2.0
    @2844 HC18_03  2.0
    @2846 HC19_03  4.0
    @2850 HC27_03  1.0
    @2851 HC30_03  2.0
    @2853 HC31_03  4.0
    @2857 HC32_03  4.0
    @2861 HC33_03  1.0
    @2862 HC51_03  2.0
    @2864 HC52_03  1.0
    @2865 HC53_03  3.0
    @2868 HC55_03  1.0
    @2869 HC56_03  4.0
    @2873 HC57_03  1.0
    @2874 HC58_03  1.0
    @2875 HC60_03  3.0
    @2878 HC61_03  1.0
    @2879 HC62_03  2.0
    @2881 HC63_03  3.0
    @2884 HC64_03  2.0
    @2886 HC0_04   2.0
    @2888 HC1_04   2.0
    @2890 HC2_04   4.0
    @2894 HC3_04   4.0
    @2898 HC4_04   4.0
    @2902 HC5_04   4.0
    @2906 HC6_04   5.0
    @2911 HC7_04   4.0
    @2915 HC8_04   4.0
    @2919 HC9_04   5.0
    @2924 HC10_04  4.0
    @2928 HC11_04  4.0
    @2932 HC12_04  5.0
    @2937 HC13_04  1.0
    @2938 HC15_04  1.0
    @2939 HC16_04  2.0
    @2941 HC17_04  2.0
    @2943 HC18_04  2.0
    @2945 HC19_04  4.0
    @2949 HC27_04  1.0
    @2950 HC30_04  2.0
    @2952 HC31_04  4.0
    @2956 HC32_04  4.0
    @2960 HC33_04  1.0
    @2961 HC51_04  2.0
    @2963 HC52_04  1.0
    @2964 HC53_04  3.0
    @2967 HC55_04  1.0
    @2968 HC56_04  4.0
    @2972 HC57_04  1.0
    @2973 HC58_04  1.0
    @2974 HC60_04  3.0
    @2977 HC61_04  1.0
    @2978 HC62_04  2.0
    @2980 HC63_04  3.0
    @2983 HC64_04  2.0
    @2985 HC0_05   2.0
    @2987 HC1_05   2.0
    @2989 HC2_05   4.0
    @2993 HC3_05   4.0
    @2997 HC4_05   4.0
    @3001 HC5_05   4.0
    @3005 HC6_05   5.0
    @3010 HC7_05   4.0
    @3014 HC8_05   4.0
    @3018 HC9_05   5.0
    @3023 HC10_05  4.0
    @3027 HC11_05  4.0
    @3031 HC12_05  5.0
    @3036 HC13_05  1.0
    @3037 HC15_05  1.0
    @3038 HC16_05  2.0
    @3040 HC17_05  2.0
    @3042 HC18_05  2.0
    @3044 HC19_05  4.0
    @3048 HC27_05  1.0
    @3049 HC30_05  2.0
    @3051 HC31_05  4.0
    @3055 HC32_05  4.0
    @3059 HC33_05  1.0
    @3060 HC51_05  2.0
    @3062 HC52_05  1.0
    @3063 HC53_05  3.0
    @3066 HC55_05  1.0
    @3067 HC56_05  4.0
    @3071 HC57_05  1.0
    @3072 HC58_05  1.0
    @3073 HC60_05  3.0
    @3076 HC61_05  1.0
    @3077 HC62_05  2.0
    @3079 HC63_05  3.0
    @3082 HC64_05  2.0
    @3084 HC0_06   2.0
    @3086 HC1_06   2.0
    @3088 HC2_06   4.0
    @3092 HC3_06   4.0
    @3096 HC4_06   4.0
    @3100 HC5_06   4.0
    @3104 HC6_06   5.0
    @3109 HC7_06   4.0
    @3113 HC8_06   4.0
    @3117 HC9_06   5.0
    @3122 HC10_06  4.0
    @3126 HC11_06  4.0
    @3130 HC12_06  5.0
    @3135 HC13_06  1.0
    @3136 HC15_06  1.0
    @3137 HC16_06  2.0
    @3139 HC17_06  2.0
    @3141 HC18_06  2.0
    @3143 HC19_06  4.0
    @3147 HC27_06  1.0
    @3148 HC30_06  2.0
    @3150 HC31_06  4.0
    @3154 HC32_06  4.0
    @3158 HC33_06  1.0
    @3159 HC51_06  2.0
    @3161 HC52_06  1.0
    @3162 HC53_06  3.0
    @3165 HC55_06  1.0
    @3166 HC56_06  4.0
    @3170 HC57_06  1.0
    @3171 HC58_06  1.0
    @3172 HC60_06  3.0
    @3175 HC61_06  1.0
    @3176 HC62_06  2.0
    @3178 HC63_06  3.0
    @3181 HC64_06  2.0
    @3183 HC0_07   2.0
    @3185 HC1_07   2.0
    @3187 HC2_07   4.0
    @3191 HC3_07   4.0
    @3195 HC4_07   4.0
    @3199 HC5_07   4.0
    @3203 HC6_07   5.0
    @3208 HC7_07   4.0
    @3212 HC8_07   4.0
    @3216 HC9_07   5.0
    @3221 HC10_07  4.0
    @3225 HC11_07  4.0
    @3229 HC12_07  5.0
    @3234 HC13_07  1.0
    @3235 HC15_07  1.0
    @3236 HC16_07  2.0
    @3238 HC17_07  2.0
    @3240 HC18_07  2.0
    @3242 HC19_07  4.0
    @3246 HC27_07  1.0
    @3247 HC30_07  2.0
    @3249 HC31_07  4.0
    @3253 HC32_07  4.0
    @3257 HC33_07  1.0
    @3258 HC51_07  2.0
    @3260 HC52_07  1.0
    @3261 HC53_07  3.0
    @3264 HC55_07  1.0
    @3265 HC56_07  4.0
    @3269 HC57_07  1.0
    @3270 HC58_07  1.0
    @3271 HC60_07  3.0
    @3274 HC61_07  1.0
    @3275 HC62_07  2.0
    @3277 HC63_07  3.0
    @3280 HC64_07  2.0
    @3282 HC0_08   2.0
    @3284 HC1_08   2.0
    @3286 HC2_08   4.0
    @3290 HC3_08   4.0
    @3294 HC4_08   4.0
    @3298 HC5_08   4.0
    @3302 HC6_08   5.0
    @3307 HC7_08   4.0
    @3311 HC8_08   4.0
    @3315 HC9_08   5.0
    @3320 HC10_08  4.0
    @3324 HC11_08  4.0
    @3328 HC12_08  5.0
    @3333 HC13_08  1.0
    @3334 HC15_08  1.0
    @3335 HC16_08  2.0
    @3337 HC17_08  2.0
    @3339 HC18_08  2.0
    @3341 HC19_08  4.0
    @3345 HC27_08  1.0
    @3346 HC30_08  2.0
    @3348 HC31_08  4.0
    @3352 HC32_08  4.0
    @3356 HC33_08  1.0
    @3357 HC51_08  2.0
    @3359 HC52_08  1.0
    @3360 HC53_08  3.0
    @3363 HC55_08  1.0
    @3364 HC56_08  4.0
    @3368 HC57_08  1.0
    @3369 HC58_08  1.0
    @3370 HC60_08  3.0
    @3373 HC61_08  1.0
    @3374 HC62_08  2.0
    @3376 HC63_08  3.0
    @3379 HC64_08  2.0
    @3381 HC0_09   2.0
    @3383 HC1_09   2.0
    @3385 HC2_09   4.0
    @3389 HC3_09   4.0
    @3393 HC4_09   4.0
    @3397 HC5_09   4.0
    @3401 HC6_09   5.0
    @3406 HC7_09   4.0
    @3410 HC8_09   4.0
    @3414 HC9_09   5.0
    @3419 HC10_09  4.0
    @3423 HC11_09  4.0
    @3427 HC12_09  5.0
    @3432 HC13_09  1.0
    @3433 HC15_09  1.0
    @3434 HC16_09  2.0
    @3436 HC17_09  2.0
    @3438 HC18_09  2.0
    @3440 HC19_09  4.0
    @3444 HC27_09  1.0
    @3445 HC30_09  2.0
    @3447 HC31_09  4.0
    @3451 HC32_09  4.0
    @3455 HC33_09  1.0
    @3456 HC51_09  2.0
    @3458 HC52_09  1.0
    @3459 HC53_09  3.0
    @3462 HC55_09  1.0
    @3463 HC56_09  4.0
    @3467 HC57_09  1.0
    @3468 HC58_09  1.0
    @3469 HC60_09  3.0
    @3472 HC61_09  1.0
    @3473 HC62_09  2.0
    @3475 HC63_09  3.0
    @3478 HC64_09  2.0
    @3480 HC0_10   2.0
    @3482 HC1_10   2.0
    @3484 HC2_10   4.0
    @3488 HC3_10   4.0
    @3492 HC4_10   4.0
    @3496 HC5_10   4.0
    @3500 HC6_10   5.0
    @3505 HC7_10   4.0
    @3509 HC8_10   4.0
    @3513 HC9_10   5.0
    @3518 HC10_10  4.0
    @3522 HC11_10  4.0
    @3526 HC12_10  5.0
    @3531 HC13_10  1.0
    @3532 HC15_10  1.0
    @3533 HC16_10  2.0
    @3535 HC17_10  2.0
    @3537 HC18_10  2.0
    @3539 HC19_10  4.0
    @3543 HC27_10  1.0
    @3544 HC30_10  2.0
    @3546 HC31_10  4.0
    @3550 HC32_10  4.0
    @3554 HC33_10  1.0
    @3555 HC51_10  2.0
    @3557 HC52_10  1.0
    @3558 HC53_10  3.0
    @3561 HC55_10  1.0
    @3562 HC56_10  4.0
    @3566 HC57_10  1.0
    @3567 HC58_10  1.0
    @3568 HC60_10  3.0
    @3571 HC61_10  1.0
    @3572 HC62_10  2.0
    @3574 HC63_10  3.0
    @3577 HC64_10  2.0
    @3579 HC0_11   2.0
    @3581 HC1_11   2.0
    @3583 HC2_11   4.0
    @3587 HC3_11   4.0
    @3591 HC4_11   4.0
    @3595 HC5_11   4.0
    @3599 HC6_11   5.0
    @3604 HC7_11   4.0
    @3608 HC8_11   4.0
    @3612 HC9_11   5.0
    @3617 HC10_11  4.0
    @3621 HC11_11  4.0
    @3625 HC12_11  5.0
    @3630 HC13_11  1.0
    @3631 HC15_11  1.0
    @3632 HC16_11  2.0
    @3634 HC17_11  2.0
    @3636 HC18_11  2.0
    @3638 HC19_11  4.0
    @3642 HC27_11  1.0
    @3643 HC30_11  2.0
    @3645 HC31_11  4.0
    @3649 HC32_11  4.0
    @3653 HC33_11  1.0
    @3654 HC51_11  2.0
    @3656 HC52_11  1.0
    @3657 HC53_11  3.0
    @3660 HC55_11  1.0
    @3661 HC56_11  4.0
    @3665 HC57_11  1.0
    @3666 HC58_11  1.0
    @3667 HC60_11  3.0
    @3670 HC61_11  1.0
    @3671 HC62_11  2.0
    @3673 HC63_11  3.0
    @3676 HC64_11  2.0
    @3678 HC0_12   2.0
    @3680 HC1_12   2.0
    @3682 HC2_12   4.0
    @3686 HC3_12   4.0
    @3690 HC4_12   4.0
    @3694 HC5_12   4.0
    @3698 HC6_12   5.0
    @3703 HC7_12   4.0
    @3707 HC8_12   4.0
    @3711 HC9_12   5.0
    @3716 HC10_12  4.0
    @3720 HC11_12  4.0
    @3724 HC12_12  5.0
    @3729 HC13_12  1.0
    @3730 HC15_12  1.0
    @3731 HC16_12  2.0
    @3733 HC17_12  2.0
    @3735 HC18_12  2.0
    @3737 HC19_12  4.0
    @3741 HC27_12  1.0
    @3742 HC30_12  2.0
    @3744 HC31_12  4.0
    @3748 HC32_12  4.0
    @3752 HC33_12  1.0
    @3753 HC51_12  2.0
    @3755 HC52_12  1.0
    @3756 HC53_12  3.0
    @3759 HC55_12  1.0
    @3760 HC56_12  4.0
    @3764 HC57_12  1.0
    @3765 HC58_12  1.0
    @3766 HC60_12  3.0
    @3769 HC61_12  1.0
    @3770 HC62_12  2.0
    @3772 HC63_12  3.0
    @3775 HC64_12  2.0
    @3777 HC0_13   2.0
    @3779 HC1_13   2.0
    @3781 HC2_13   4.0
    @3785 HC3_13   4.0
    @3789 HC4_13   4.0
    @3793 HC5_13   4.0
    @3797 HC6_13   5.0
    @3802 HC7_13   4.0
    @3806 HC8_13   4.0
    @3810 HC9_13   5.0
    @3815 HC10_13  4.0
    @3819 HC11_13  4.0
    @3823 HC12_13  5.0
    @3828 HC13_13  1.0
    @3829 HC15_13  1.0
    @3830 HC16_13  2.0
    @3832 HC17_13  2.0
    @3834 HC18_13  2.0
    @3836 HC19_13  4.0
    @3840 HC27_13  1.0
    @3841 HC30_13  2.0
    @3843 HC31_13  4.0
    @3847 HC32_13  4.0
    @3851 HC33_13  1.0
    @3852 HC51_13  2.0
    @3854 HC52_13  1.0
    @3855 HC53_13  3.0
    @3858 HC55_13  1.0
    @3859 HC56_13  4.0
    @3863 HC57_13  1.0
    @3864 HC58_13  1.0
    @3865 HC60_13  3.0
    @3868 HC61_13  1.0
    @3869 HC62_13  2.0
    @3871 HC63_13  3.0
    @3874 HC64_13  2.0
    @3876 HC0_14   2.0
    @3878 HC1_14   2.0
    @3880 HC2_14   4.0
    @3884 HC3_14   4.0
    @3888 HC4_14   4.0
    @3892 HC5_14   4.0
    @3896 HC6_14   5.0
    @3901 HC7_14   4.0
    @3905 HC8_14   4.0
    @3909 HC9_14   5.0
    @3914 HC10_14  4.0
    @3918 HC11_14  4.0
    @3922 HC12_14  5.0
    @3927 HC13_14  1.0
    @3928 HC15_14  1.0
    @3929 HC16_14  2.0
    @3931 HC17_14  2.0
    @3933 HC18_14  2.0
    @3935 HC19_14  4.0
    @3939 HC27_14  1.0
    @3940 HC30_14  2.0
    @3942 HC31_14  4.0
    @3946 HC32_14  4.0
    @3950 HC33_14  1.0
    @3951 HC51_14  2.0
    @3953 HC52_14  1.0
    @3954 HC53_14  3.0
    @3957 HC55_14  1.0
    @3958 HC56_14  4.0
    @3962 HC57_14  1.0
    @3963 HC58_14  1.0
    @3964 HC60_14  3.0
    @3967 HC61_14  1.0
    @3968 HC62_14  2.0
    @3970 HC63_14  3.0
    @3973 HC64_14  2.0
    @3975 HC0_15   2.0
    @3977 HC1_15   2.0
    @3979 HC2_15   4.0
    @3983 HC3_15   4.0
    @3987 HC4_15   4.0
    @3991 HC5_15   4.0
    @3995 HC6_15   5.0
    @4000 HC7_15   4.0
    @4004 HC8_15   4.0
    @4008 HC9_15   5.0
    @4013 HC10_15  4.0
    @4017 HC11_15  4.0
    @4021 HC12_15  5.0
    @4026 HC13_15  1.0
    @4027 HC15_15  1.0
    @4028 HC16_15  2.0
    @4030 HC17_15  2.0
    @4032 HC18_15  2.0
    @4034 HC19_15  4.0
    @4038 HC27_15  1.0
    @4039 HC30_15  2.0
    @4041 HC31_15  4.0
    @4045 HC32_15  4.0
    @4049 HC33_15  1.0
    @4050 HC51_15  2.0
    @4052 HC52_15  1.0
    @4053 HC53_15  3.0
    @4056 HC55_15  1.0
    @4057 HC56_15  4.0
    @4061 HC57_15  1.0
    @4062 HC58_15  1.0
    @4063 HC60_15  3.0
    @4066 HC61_15  1.0
    @4067 HC62_15  2.0
    @4069 HC63_15  3.0
    @4072 HC64_15  2.0
    @4074 SH32A_01 2.0
    @4076 SH33A_01 1.0
    @4077 SH33B_01 1.0
    @4078 SH33C_01 1.0
    @4079 SH33X_01 1.0
    @4080 SH34_01  2.0
    @4082 SH35_01  2.0
    @4084 SH32A_02 2.0
    @4086 SH33A_02 1.0
    @4087 SH33B_02 1.0
    @4088 SH33C_02 1.0
    @4089 SH33X_02 1.0
    @4090 SH34_02  2.0
    @4092 SH35_02  2.0
    @4094 SH32A_03 2.0
    @4096 SH33A_03 1.0
    @4097 SH33B_03 1.0
    @4098 SH33C_03 1.0
    @4099 SH33X_03 1.0
    @4100 SH34_03  2.0
    @4102 SH35_03  2.0
    @4104 SH32A_04 2.0
    @4106 SH33A_04 1.0
    @4107 SH33B_04 1.0
    @4108 SH33C_04 1.0
    @4109 SH33X_04 1.0
    @4110 SH34_04  2.0
    @4112 SH35_04  2.0
    @4114 SH32A_05 2.0
    @4116 SH33A_05 1.0
    @4117 SH33B_05 1.0
    @4118 SH33C_05 1.0
    @4119 SH33X_05 1.0
    @4120 SH34_05  2.0
    @4122 SH35_05  2.0
    @4124 SH32A_06 2.0
    @4126 SH33A_06 1.0
    @4127 SH33B_06 1.0
    @4128 SH33C_06 1.0
    @4129 SH33X_06 1.0
    @4130 SH34_06  2.0
    @4132 SH35_06  2.0
    @4134 SH32A_07 2.0
    @4136 SH33A_07 1.0
    @4137 SH33B_07 1.0
    @4138 SH33C_07 1.0
    @4139 SH33X_07 1.0
    @4140 SH34_07  2.0
    @4142 SH35_07  2.0
    @4144 SH32A_08 2.0
    @4146 SH33A_08 1.0
    @4147 SH33B_08 1.0
    @4148 SH33C_08 1.0
    @4149 SH33X_08 1.0
    @4150 SH34_08  2.0
    @4152 SH35_08  2.0
    @4154 SH32A_09 2.0
    @4156 SH33A_09 1.0
    @4157 SH33B_09 1.0
    @4158 SH33C_09 1.0
    @4159 SH33X_09 1.0
    @4160 SH34_09  2.0
    @4162 SH35_09  2.0
    @4164 SH32A_10 2.0
    @4166 SH33A_10 1.0
    @4167 SH33B_10 1.0
    @4168 SH33C_10 1.0
    @4169 SH33X_10 1.0
    @4170 SH34_10  2.0
    @4172 SH35_10  2.0
    @4174 SH32A_11 2.0
    @4176 SH33A_11 1.0
    @4177 SH33B_11 1.0
    @4178 SH33C_11 1.0
    @4179 SH33X_11 1.0
    @4180 SH34_11  2.0
    @4182 SH35_11  2.0
    @4184 SH32A_12 2.0
    @4186 SH33A_12 1.0
    @4187 SH33B_12 1.0
    @4188 SH33C_12 1.0
    @4189 SH33X_12 1.0
    @4190 SH34_12  2.0
    @4192 SH35_12  2.0
    @4194 SH32A_13 2.0
    @4196 SH33A_13 1.0
    @4197 SH33B_13 1.0
    @4198 SH33C_13 1.0
    @4199 SH33X_13 1.0
    @4200 SH34_13  2.0
    @4202 SH35_13  2.0
    @4204 SH32A_14 2.0
    @4206 SH33A_14 1.0
    @4207 SH33B_14 1.0
    @4208 SH33C_14 1.0
    @4209 SH33X_14 1.0
    @4210 SH34_14  2.0
    @4212 SH35_14  2.0
    @4214 SH32A_15 2.0
    @4216 SH33A_15 1.0
    @4217 SH33B_15 1.0
    @4218 SH33C_15 1.0
    @4219 SH33X_15 1.0
    @4220 SH34_15  2.0
    @4222 SH35_15  2.0
    @4224 SH32A_16 2.0
    @4226 SH33A_16 1.0
    @4227 SH33B_16 1.0
    @4228 SH33C_16 1.0
    @4229 SH33X_16 1.0
    @4230 SH34_16  2.0
    @4232 SH35_16  2.0
    @4234 SH32A_17 2.0
    @4236 SH33A_17 1.0
    @4237 SH33B_17 1.0
    @4238 SH33C_17 1.0
    @4239 SH33X_17 1.0
    @4240 SH34_17  2.0
    @4242 SH35_17  2.0
    @4244 SH32A_18 2.0
    @4246 SH33A_18 1.0
    @4247 SH33B_18 1.0
    @4248 SH33C_18 1.0
    @4249 SH33X_18 1.0
    @4250 SH34_18  2.0
    @4252 SH35_18  2.0
    @4254 SH32A_19 2.0
    @4256 SH33A_19 1.0
    @4257 SH33B_19 1.0
    @4258 SH33C_19 1.0
    @4259 SH33X_19 1.0
    @4260 SH34_19  2.0
    @4262 SH35_19  2.0
    @4264 SH37A_01 2.0
    @4266 SH38_01  2.0
    @4268 SH39_01  3.0
    @4271 SH40_01  1.0
    @4272 SH41_01  1.0
    @4273 SH42_01  1.0
    @4274 SH43_01  1.0
    @4275 SH37A_02 2.0
    @4277 SH38_02  2.0
    @4279 SH39_02  3.0
    @4282 SH40_02  1.0
    @4283 SH41_02  1.0
    @4284 SH42_02  1.0
    @4285 SH43_02  1.0
    @4286 SH37A_03 2.0
    @4288 SH38_03  2.0
    @4290 SH39_03  3.0
    @4293 SH40_03  1.0
    @4294 SH41_03  1.0
    @4295 SH42_03  1.0
    @4296 SH43_03  1.0
    @4297 SH37A_04 2.0
    @4299 SH38_04  2.0
    @4301 SH39_04  3.0
    @4304 SH40_04  1.0
    @4305 SH41_04  1.0
    @4306 SH42_04  1.0
    @4307 SH43_04  1.0
    @4308 SH37A_05 2.0
    @4310 SH38_05  2.0
    @4312 SH39_05  3.0
    @4315 SH40_05  1.0
    @4316 SH41_05  1.0
    @4317 SH42_05  1.0
    @4318 SH43_05  1.0
    @4319 SH37A_06 2.0
    @4321 SH38_06  2.0
    @4323 SH39_06  3.0
    @4326 SH40_06  1.0
    @4327 SH41_06  1.0
    @4328 SH42_06  1.0
    @4329 SH43_06  1.0
    @4330 SH37A_07 2.0
    @4332 SH38_07  2.0
    @4334 SH39_07  3.0
    @4337 SH40_07  1.0
    @4338 SH41_07  1.0
    @4339 SH42_07  1.0
    @4340 SH43_07  1.0
    @4341 SH37A_08 2.0
    @4343 SH38_08  2.0
    @4345 SH39_08  3.0
    @4348 SH40_08  1.0
    @4349 SH41_08  1.0
    @4350 SH42_08  1.0
    @4351 SH43_08  1.0
    @4352 SH37A_09 2.0
    @4354 SH38_09  2.0
    @4356 SH39_09  3.0
    @4359 SH40_09  1.0
    @4360 SH41_09  1.0
    @4361 SH42_09  1.0
    @4362 SH43_09  1.0
    @4363 SH37A_10 2.0
    @4365 SH38_10  2.0
    @4367 SH39_10  3.0
    @4370 SH40_10  1.0
    @4371 SH41_10  1.0
    @4372 SH42_10  1.0
    @4373 SH43_10  1.0
    @4374 SH37A_11 2.0
    @4376 SH38_11  2.0
    @4378 SH39_11  3.0
    @4381 SH40_11  1.0
    @4382 SH41_11  1.0
    @4383 SH42_11  1.0
    @4384 SH43_11  1.0
    @4385 SH37A_12 2.0
    @4387 SH38_12  2.0
    @4389 SH39_12  3.0
    @4392 SH40_12  1.0
    @4393 SH41_12  1.0
    @4394 SH42_12  1.0
    @4395 SH43_12  1.0
    @4396 SH37A_13 2.0
    @4398 SH38_13  2.0
    @4400 SH39_13  3.0
    @4403 SH40_13  1.0
    @4404 SH41_13  1.0
    @4405 SH42_13  1.0
    @4406 SH43_13  1.0
    @4407 SH37A_14 2.0
    @4409 SH38_14  2.0
    @4411 SH39_14  3.0
    @4414 SH40_14  1.0
    @4415 SH41_14  1.0
    @4416 SH42_14  1.0
    @4417 SH43_14  1.0
    @4418 SH37A_15 2.0
    @4420 SH38_15  2.0
    @4422 SH39_15  3.0
    @4425 SH40_15  1.0
    @4426 SH41_15  1.0
    @4427 SH42_15  1.0
    @4428 SH43_15  1.0
    @4429 SH37A_16 2.0
    @4431 SH38_16  2.0
    @4433 SH39_16  3.0
    @4436 SH40_16  1.0
    @4437 SH41_16  1.0
    @4438 SH42_16  1.0
    @4439 SH43_16  1.0
    @4440 SH37A_17 2.0
    @4442 SH38_17  2.0
    @4444 SH39_17  3.0
    @4447 SH40_17  1.0
    @4448 SH41_17  1.0
    @4449 SH42_17  1.0
    @4450 SH43_17  1.0
    ;
    if HV018    =    999 then HV018 = .;
    if HV019    =     99 then HV019 = .;
    if HV026    =      9 then HV026 = .;
    if HV030    =    999 then HV030 = .;
    if HV031    =    999 then HV031 = .;
    if HV032    =     99 then HV032 = .;
    if HV201    =     99 then HV201 = .;
    if HV204    =    999 then HV204 = .;
    if HV205    =     99 then HV205 = .;
    if HV206    =      9 then HV206 = .;
    if HV207    =      9 then HV207 = .;
    if HV208    =      9 then HV208 = .;
    if HV209    =      9 then HV209 = .;
    if HV210    =      9 then HV210 = .;
    if HV211    =      9 then HV211 = .;
    if HV212    =      9 then HV212 = .;
    if HV213    =     99 then HV213 = .;
    if HV214    =     99 then HV214 = .;
    if HV215    =     99 then HV215 = .;
    if HV219    =      9 then HV219 = .;
    if HV220    =     99 then HV220 = .;
    if HV221    =      9 then HV221 = .;
    if HV225    =      9 then HV225 = .;
    if HV226    =     99 then HV226 = .;
    if HV227    =      9 then HV227 = .;
    if HV228    =      9 then HV228 = .;
    if HV230    =      9 then HV230 = .;
    if HV231    =      9 then HV231 = .;
    if HV232    =      9 then HV232 = .;
    if HV233    =      9 then HV233 = .;
    if HV234    =    999 then HV234 = .;
    if HV101_01 =     99 then HV101_01 = .;
    if HV102_01 =      9 then HV102_01 = .;
    if HV103_01 =      9 then HV103_01 = .;
    if HV104_01 =      9 then HV104_01 = .;
    if HV105_01 =     99 then HV105_01 = .;
    if HV106_01 =      9 then HV106_01 = .;
    if HV107_01 =     99 then HV107_01 = .;
    if HV108_01 =     99 then HV108_01 = .;
    if HV109_01 =      9 then HV109_01 = .;
    if HV110_01 =      9 then HV110_01 = .;
    if HV111_01 =      9 then HV111_01 = .;
    if HV112_01 =     99 then HV112_01 = .;
    if HV113_01 =      9 then HV113_01 = .;
    if HV114_01 =     99 then HV114_01 = .;
    if HV115_01 =      9 then HV115_01 = .;
    if HV116_01 =      9 then HV116_01 = .;
    if HV121_01 =      9 then HV121_01 = .;
    if HV122_01 =      9 then HV122_01 = .;
    if HV123_01 =     99 then HV123_01 = .;
    if HV124_01 =     99 then HV124_01 = .;
    if HV125_01 =      9 then HV125_01 = .;
    if HV126_01 =      9 then HV126_01 = .;
    if HV127_01 =     99 then HV127_01 = .;
    if HV128_01 =     99 then HV128_01 = .;
    if HV129_01 =      9 then HV129_01 = .;
    if HV101_02 =     99 then HV101_02 = .;
    if HV102_02 =      9 then HV102_02 = .;
    if HV103_02 =      9 then HV103_02 = .;
    if HV104_02 =      9 then HV104_02 = .;
    if HV105_02 =     99 then HV105_02 = .;
    if HV106_02 =      9 then HV106_02 = .;
    if HV107_02 =     99 then HV107_02 = .;
    if HV108_02 =     99 then HV108_02 = .;
    if HV109_02 =      9 then HV109_02 = .;
    if HV110_02 =      9 then HV110_02 = .;
    if HV111_02 =      9 then HV111_02 = .;
    if HV112_02 =     99 then HV112_02 = .;
    if HV113_02 =      9 then HV113_02 = .;
    if HV114_02 =     99 then HV114_02 = .;
    if HV115_02 =      9 then HV115_02 = .;
    if HV116_02 =      9 then HV116_02 = .;
    if HV121_02 =      9 then HV121_02 = .;
    if HV122_02 =      9 then HV122_02 = .;
    if HV123_02 =     99 then HV123_02 = .;
    if HV124_02 =     99 then HV124_02 = .;
    if HV125_02 =      9 then HV125_02 = .;
    if HV126_02 =      9 then HV126_02 = .;
    if HV127_02 =     99 then HV127_02 = .;
    if HV128_02 =     99 then HV128_02 = .;
    if HV129_02 =      9 then HV129_02 = .;
    if HV101_03 =     99 then HV101_03 = .;
    if HV102_03 =      9 then HV102_03 = .;
    if HV103_03 =      9 then HV103_03 = .;
    if HV104_03 =      9 then HV104_03 = .;
    if HV105_03 =     99 then HV105_03 = .;
    if HV106_03 =      9 then HV106_03 = .;
    if HV107_03 =     99 then HV107_03 = .;
    if HV108_03 =     99 then HV108_03 = .;
    if HV109_03 =      9 then HV109_03 = .;
    if HV110_03 =      9 then HV110_03 = .;
    if HV111_03 =      9 then HV111_03 = .;
    if HV112_03 =     99 then HV112_03 = .;
    if HV113_03 =      9 then HV113_03 = .;
    if HV114_03 =     99 then HV114_03 = .;
    if HV115_03 =      9 then HV115_03 = .;
    if HV116_03 =      9 then HV116_03 = .;
    if HV121_03 =      9 then HV121_03 = .;
    if HV122_03 =      9 then HV122_03 = .;
    if HV123_03 =     99 then HV123_03 = .;
    if HV124_03 =     99 then HV124_03 = .;
    if HV125_03 =      9 then HV125_03 = .;
    if HV126_03 =      9 then HV126_03 = .;
    if HV127_03 =     99 then HV127_03 = .;
    if HV128_03 =     99 then HV128_03 = .;
    if HV129_03 =      9 then HV129_03 = .;
    if HV101_04 =     99 then HV101_04 = .;
    if HV102_04 =      9 then HV102_04 = .;
    if HV103_04 =      9 then HV103_04 = .;
    if HV104_04 =      9 then HV104_04 = .;
    if HV105_04 =     99 then HV105_04 = .;
    if HV106_04 =      9 then HV106_04 = .;
    if HV107_04 =     99 then HV107_04 = .;
    if HV108_04 =     99 then HV108_04 = .;
    if HV109_04 =      9 then HV109_04 = .;
    if HV110_04 =      9 then HV110_04 = .;
    if HV111_04 =      9 then HV111_04 = .;
    if HV112_04 =     99 then HV112_04 = .;
    if HV113_04 =      9 then HV113_04 = .;
    if HV114_04 =     99 then HV114_04 = .;
    if HV115_04 =      9 then HV115_04 = .;
    if HV116_04 =      9 then HV116_04 = .;
    if HV121_04 =      9 then HV121_04 = .;
    if HV122_04 =      9 then HV122_04 = .;
    if HV123_04 =     99 then HV123_04 = .;
    if HV124_04 =     99 then HV124_04 = .;
    if HV125_04 =      9 then HV125_04 = .;
    if HV126_04 =      9 then HV126_04 = .;
    if HV127_04 =     99 then HV127_04 = .;
    if HV128_04 =     99 then HV128_04 = .;
    if HV129_04 =      9 then HV129_04 = .;
    if HV101_05 =     99 then HV101_05 = .;
    if HV102_05 =      9 then HV102_05 = .;
    if HV103_05 =      9 then HV103_05 = .;
    if HV104_05 =      9 then HV104_05 = .;
    if HV105_05 =     99 then HV105_05 = .;
    if HV106_05 =      9 then HV106_05 = .;
    if HV107_05 =     99 then HV107_05 = .;
    if HV108_05 =     99 then HV108_05 = .;
    if HV109_05 =      9 then HV109_05 = .;
    if HV110_05 =      9 then HV110_05 = .;
    if HV111_05 =      9 then HV111_05 = .;
    if HV112_05 =     99 then HV112_05 = .;
    if HV113_05 =      9 then HV113_05 = .;
    if HV114_05 =     99 then HV114_05 = .;
    if HV115_05 =      9 then HV115_05 = .;
    if HV116_05 =      9 then HV116_05 = .;
    if HV121_05 =      9 then HV121_05 = .;
    if HV122_05 =      9 then HV122_05 = .;
    if HV123_05 =     99 then HV123_05 = .;
    if HV124_05 =     99 then HV124_05 = .;
    if HV125_05 =      9 then HV125_05 = .;
    if HV126_05 =      9 then HV126_05 = .;
    if HV127_05 =     99 then HV127_05 = .;
    if HV128_05 =     99 then HV128_05 = .;
    if HV129_05 =      9 then HV129_05 = .;
    if HV101_06 =     99 then HV101_06 = .;
    if HV102_06 =      9 then HV102_06 = .;
    if HV103_06 =      9 then HV103_06 = .;
    if HV104_06 =      9 then HV104_06 = .;
    if HV105_06 =     99 then HV105_06 = .;
    if HV106_06 =      9 then HV106_06 = .;
    if HV107_06 =     99 then HV107_06 = .;
    if HV108_06 =     99 then HV108_06 = .;
    if HV109_06 =      9 then HV109_06 = .;
    if HV110_06 =      9 then HV110_06 = .;
    if HV111_06 =      9 then HV111_06 = .;
    if HV112_06 =     99 then HV112_06 = .;
    if HV113_06 =      9 then HV113_06 = .;
    if HV114_06 =     99 then HV114_06 = .;
    if HV115_06 =      9 then HV115_06 = .;
    if HV116_06 =      9 then HV116_06 = .;
    if HV121_06 =      9 then HV121_06 = .;
    if HV122_06 =      9 then HV122_06 = .;
    if HV123_06 =     99 then HV123_06 = .;
    if HV124_06 =     99 then HV124_06 = .;
    if HV125_06 =      9 then HV125_06 = .;
    if HV126_06 =      9 then HV126_06 = .;
    if HV127_06 =     99 then HV127_06 = .;
    if HV128_06 =     99 then HV128_06 = .;
    if HV129_06 =      9 then HV129_06 = .;
    if HV101_07 =     99 then HV101_07 = .;
    if HV102_07 =      9 then HV102_07 = .;
    if HV103_07 =      9 then HV103_07 = .;
    if HV104_07 =      9 then HV104_07 = .;
    if HV105_07 =     99 then HV105_07 = .;
    if HV106_07 =      9 then HV106_07 = .;
    if HV107_07 =     99 then HV107_07 = .;
    if HV108_07 =     99 then HV108_07 = .;
    if HV109_07 =      9 then HV109_07 = .;
    if HV110_07 =      9 then HV110_07 = .;
    if HV111_07 =      9 then HV111_07 = .;
    if HV112_07 =     99 then HV112_07 = .;
    if HV113_07 =      9 then HV113_07 = .;
    if HV114_07 =     99 then HV114_07 = .;
    if HV115_07 =      9 then HV115_07 = .;
    if HV116_07 =      9 then HV116_07 = .;
    if HV121_07 =      9 then HV121_07 = .;
    if HV122_07 =      9 then HV122_07 = .;
    if HV123_07 =     99 then HV123_07 = .;
    if HV124_07 =     99 then HV124_07 = .;
    if HV125_07 =      9 then HV125_07 = .;
    if HV126_07 =      9 then HV126_07 = .;
    if HV127_07 =     99 then HV127_07 = .;
    if HV128_07 =     99 then HV128_07 = .;
    if HV129_07 =      9 then HV129_07 = .;
    if HV101_08 =     99 then HV101_08 = .;
    if HV102_08 =      9 then HV102_08 = .;
    if HV103_08 =      9 then HV103_08 = .;
    if HV104_08 =      9 then HV104_08 = .;
    if HV105_08 =     99 then HV105_08 = .;
    if HV106_08 =      9 then HV106_08 = .;
    if HV107_08 =     99 then HV107_08 = .;
    if HV108_08 =     99 then HV108_08 = .;
    if HV109_08 =      9 then HV109_08 = .;
    if HV110_08 =      9 then HV110_08 = .;
    if HV111_08 =      9 then HV111_08 = .;
    if HV112_08 =     99 then HV112_08 = .;
    if HV113_08 =      9 then HV113_08 = .;
    if HV114_08 =     99 then HV114_08 = .;
    if HV115_08 =      9 then HV115_08 = .;
    if HV116_08 =      9 then HV116_08 = .;
    if HV121_08 =      9 then HV121_08 = .;
    if HV122_08 =      9 then HV122_08 = .;
    if HV123_08 =     99 then HV123_08 = .;
    if HV124_08 =     99 then HV124_08 = .;
    if HV125_08 =      9 then HV125_08 = .;
    if HV126_08 =      9 then HV126_08 = .;
    if HV127_08 =     99 then HV127_08 = .;
    if HV128_08 =     99 then HV128_08 = .;
    if HV129_08 =      9 then HV129_08 = .;
    if HV101_09 =     99 then HV101_09 = .;
    if HV102_09 =      9 then HV102_09 = .;
    if HV103_09 =      9 then HV103_09 = .;
    if HV104_09 =      9 then HV104_09 = .;
    if HV105_09 =     99 then HV105_09 = .;
    if HV106_09 =      9 then HV106_09 = .;
    if HV107_09 =     99 then HV107_09 = .;
    if HV108_09 =     99 then HV108_09 = .;
    if HV109_09 =      9 then HV109_09 = .;
    if HV110_09 =      9 then HV110_09 = .;
    if HV111_09 =      9 then HV111_09 = .;
    if HV112_09 =     99 then HV112_09 = .;
    if HV113_09 =      9 then HV113_09 = .;
    if HV114_09 =     99 then HV114_09 = .;
    if HV115_09 =      9 then HV115_09 = .;
    if HV116_09 =      9 then HV116_09 = .;
    if HV121_09 =      9 then HV121_09 = .;
    if HV122_09 =      9 then HV122_09 = .;
    if HV123_09 =     99 then HV123_09 = .;
    if HV124_09 =     99 then HV124_09 = .;
    if HV125_09 =      9 then HV125_09 = .;
    if HV126_09 =      9 then HV126_09 = .;
    if HV127_09 =     99 then HV127_09 = .;
    if HV128_09 =     99 then HV128_09 = .;
    if HV129_09 =      9 then HV129_09 = .;
    if HV101_10 =     99 then HV101_10 = .;
    if HV102_10 =      9 then HV102_10 = .;
    if HV103_10 =      9 then HV103_10 = .;
    if HV104_10 =      9 then HV104_10 = .;
    if HV105_10 =     99 then HV105_10 = .;
    if HV106_10 =      9 then HV106_10 = .;
    if HV107_10 =     99 then HV107_10 = .;
    if HV108_10 =     99 then HV108_10 = .;
    if HV109_10 =      9 then HV109_10 = .;
    if HV110_10 =      9 then HV110_10 = .;
    if HV111_10 =      9 then HV111_10 = .;
    if HV112_10 =     99 then HV112_10 = .;
    if HV113_10 =      9 then HV113_10 = .;
    if HV114_10 =     99 then HV114_10 = .;
    if HV115_10 =      9 then HV115_10 = .;
    if HV116_10 =      9 then HV116_10 = .;
    if HV121_10 =      9 then HV121_10 = .;
    if HV122_10 =      9 then HV122_10 = .;
    if HV123_10 =     99 then HV123_10 = .;
    if HV124_10 =     99 then HV124_10 = .;
    if HV125_10 =      9 then HV125_10 = .;
    if HV126_10 =      9 then HV126_10 = .;
    if HV127_10 =     99 then HV127_10 = .;
    if HV128_10 =     99 then HV128_10 = .;
    if HV129_10 =      9 then HV129_10 = .;
    if HV101_11 =     99 then HV101_11 = .;
    if HV102_11 =      9 then HV102_11 = .;
    if HV103_11 =      9 then HV103_11 = .;
    if HV104_11 =      9 then HV104_11 = .;
    if HV105_11 =     99 then HV105_11 = .;
    if HV106_11 =      9 then HV106_11 = .;
    if HV107_11 =     99 then HV107_11 = .;
    if HV108_11 =     99 then HV108_11 = .;
    if HV109_11 =      9 then HV109_11 = .;
    if HV110_11 =      9 then HV110_11 = .;
    if HV111_11 =      9 then HV111_11 = .;
    if HV112_11 =     99 then HV112_11 = .;
    if HV113_11 =      9 then HV113_11 = .;
    if HV114_11 =     99 then HV114_11 = .;
    if HV115_11 =      9 then HV115_11 = .;
    if HV116_11 =      9 then HV116_11 = .;
    if HV121_11 =      9 then HV121_11 = .;
    if HV122_11 =      9 then HV122_11 = .;
    if HV123_11 =     99 then HV123_11 = .;
    if HV124_11 =     99 then HV124_11 = .;
    if HV125_11 =      9 then HV125_11 = .;
    if HV126_11 =      9 then HV126_11 = .;
    if HV127_11 =     99 then HV127_11 = .;
    if HV128_11 =     99 then HV128_11 = .;
    if HV129_11 =      9 then HV129_11 = .;
    if HV101_12 =     99 then HV101_12 = .;
    if HV102_12 =      9 then HV102_12 = .;
    if HV103_12 =      9 then HV103_12 = .;
    if HV104_12 =      9 then HV104_12 = .;
    if HV105_12 =     99 then HV105_12 = .;
    if HV106_12 =      9 then HV106_12 = .;
    if HV107_12 =     99 then HV107_12 = .;
    if HV108_12 =     99 then HV108_12 = .;
    if HV109_12 =      9 then HV109_12 = .;
    if HV110_12 =      9 then HV110_12 = .;
    if HV111_12 =      9 then HV111_12 = .;
    if HV112_12 =     99 then HV112_12 = .;
    if HV113_12 =      9 then HV113_12 = .;
    if HV114_12 =     99 then HV114_12 = .;
    if HV115_12 =      9 then HV115_12 = .;
    if HV116_12 =      9 then HV116_12 = .;
    if HV121_12 =      9 then HV121_12 = .;
    if HV122_12 =      9 then HV122_12 = .;
    if HV123_12 =     99 then HV123_12 = .;
    if HV124_12 =     99 then HV124_12 = .;
    if HV125_12 =      9 then HV125_12 = .;
    if HV126_12 =      9 then HV126_12 = .;
    if HV127_12 =     99 then HV127_12 = .;
    if HV128_12 =     99 then HV128_12 = .;
    if HV129_12 =      9 then HV129_12 = .;
    if HV101_13 =     99 then HV101_13 = .;
    if HV102_13 =      9 then HV102_13 = .;
    if HV103_13 =      9 then HV103_13 = .;
    if HV104_13 =      9 then HV104_13 = .;
    if HV105_13 =     99 then HV105_13 = .;
    if HV106_13 =      9 then HV106_13 = .;
    if HV107_13 =     99 then HV107_13 = .;
    if HV108_13 =     99 then HV108_13 = .;
    if HV109_13 =      9 then HV109_13 = .;
    if HV110_13 =      9 then HV110_13 = .;
    if HV111_13 =      9 then HV111_13 = .;
    if HV112_13 =     99 then HV112_13 = .;
    if HV113_13 =      9 then HV113_13 = .;
    if HV114_13 =     99 then HV114_13 = .;
    if HV115_13 =      9 then HV115_13 = .;
    if HV116_13 =      9 then HV116_13 = .;
    if HV121_13 =      9 then HV121_13 = .;
    if HV122_13 =      9 then HV122_13 = .;
    if HV123_13 =     99 then HV123_13 = .;
    if HV124_13 =     99 then HV124_13 = .;
    if HV125_13 =      9 then HV125_13 = .;
    if HV126_13 =      9 then HV126_13 = .;
    if HV127_13 =     99 then HV127_13 = .;
    if HV128_13 =     99 then HV128_13 = .;
    if HV129_13 =      9 then HV129_13 = .;
    if HV101_14 =     99 then HV101_14 = .;
    if HV102_14 =      9 then HV102_14 = .;
    if HV103_14 =      9 then HV103_14 = .;
    if HV104_14 =      9 then HV104_14 = .;
    if HV105_14 =     99 then HV105_14 = .;
    if HV106_14 =      9 then HV106_14 = .;
    if HV107_14 =     99 then HV107_14 = .;
    if HV108_14 =     99 then HV108_14 = .;
    if HV109_14 =      9 then HV109_14 = .;
    if HV110_14 =      9 then HV110_14 = .;
    if HV111_14 =      9 then HV111_14 = .;
    if HV112_14 =     99 then HV112_14 = .;
    if HV113_14 =      9 then HV113_14 = .;
    if HV114_14 =     99 then HV114_14 = .;
    if HV115_14 =      9 then HV115_14 = .;
    if HV116_14 =      9 then HV116_14 = .;
    if HV121_14 =      9 then HV121_14 = .;
    if HV122_14 =      9 then HV122_14 = .;
    if HV123_14 =     99 then HV123_14 = .;
    if HV124_14 =     99 then HV124_14 = .;
    if HV125_14 =      9 then HV125_14 = .;
    if HV126_14 =      9 then HV126_14 = .;
    if HV127_14 =     99 then HV127_14 = .;
    if HV128_14 =     99 then HV128_14 = .;
    if HV129_14 =      9 then HV129_14 = .;
    if HV101_15 =     99 then HV101_15 = .;
    if HV102_15 =      9 then HV102_15 = .;
    if HV103_15 =      9 then HV103_15 = .;
    if HV104_15 =      9 then HV104_15 = .;
    if HV105_15 =     99 then HV105_15 = .;
    if HV106_15 =      9 then HV106_15 = .;
    if HV107_15 =     99 then HV107_15 = .;
    if HV108_15 =     99 then HV108_15 = .;
    if HV109_15 =      9 then HV109_15 = .;
    if HV110_15 =      9 then HV110_15 = .;
    if HV111_15 =      9 then HV111_15 = .;
    if HV112_15 =     99 then HV112_15 = .;
    if HV113_15 =      9 then HV113_15 = .;
    if HV114_15 =     99 then HV114_15 = .;
    if HV115_15 =      9 then HV115_15 = .;
    if HV116_15 =      9 then HV116_15 = .;
    if HV121_15 =      9 then HV121_15 = .;
    if HV122_15 =      9 then HV122_15 = .;
    if HV123_15 =     99 then HV123_15 = .;
    if HV124_15 =     99 then HV124_15 = .;
    if HV125_15 =      9 then HV125_15 = .;
    if HV126_15 =      9 then HV126_15 = .;
    if HV127_15 =     99 then HV127_15 = .;
    if HV128_15 =     99 then HV128_15 = .;
    if HV129_15 =      9 then HV129_15 = .;
    if HV101_16 =     99 then HV101_16 = .;
    if HV102_16 =      9 then HV102_16 = .;
    if HV103_16 =      9 then HV103_16 = .;
    if HV104_16 =      9 then HV104_16 = .;
    if HV105_16 =     99 then HV105_16 = .;
    if HV106_16 =      9 then HV106_16 = .;
    if HV107_16 =     99 then HV107_16 = .;
    if HV108_16 =     99 then HV108_16 = .;
    if HV109_16 =      9 then HV109_16 = .;
    if HV110_16 =      9 then HV110_16 = .;
    if HV111_16 =      9 then HV111_16 = .;
    if HV112_16 =     99 then HV112_16 = .;
    if HV113_16 =      9 then HV113_16 = .;
    if HV114_16 =     99 then HV114_16 = .;
    if HV115_16 =      9 then HV115_16 = .;
    if HV116_16 =      9 then HV116_16 = .;
    if HV121_16 =      9 then HV121_16 = .;
    if HV122_16 =      9 then HV122_16 = .;
    if HV123_16 =     99 then HV123_16 = .;
    if HV124_16 =     99 then HV124_16 = .;
    if HV125_16 =      9 then HV125_16 = .;
    if HV126_16 =      9 then HV126_16 = .;
    if HV127_16 =     99 then HV127_16 = .;
    if HV128_16 =     99 then HV128_16 = .;
    if HV129_16 =      9 then HV129_16 = .;
    if HV101_17 =     99 then HV101_17 = .;
    if HV102_17 =      9 then HV102_17 = .;
    if HV103_17 =      9 then HV103_17 = .;
    if HV104_17 =      9 then HV104_17 = .;
    if HV105_17 =     99 then HV105_17 = .;
    if HV106_17 =      9 then HV106_17 = .;
    if HV107_17 =     99 then HV107_17 = .;
    if HV108_17 =     99 then HV108_17 = .;
    if HV109_17 =      9 then HV109_17 = .;
    if HV110_17 =      9 then HV110_17 = .;
    if HV111_17 =      9 then HV111_17 = .;
    if HV112_17 =     99 then HV112_17 = .;
    if HV113_17 =      9 then HV113_17 = .;
    if HV114_17 =     99 then HV114_17 = .;
    if HV115_17 =      9 then HV115_17 = .;
    if HV116_17 =      9 then HV116_17 = .;
    if HV121_17 =      9 then HV121_17 = .;
    if HV122_17 =      9 then HV122_17 = .;
    if HV123_17 =     99 then HV123_17 = .;
    if HV124_17 =     99 then HV124_17 = .;
    if HV125_17 =      9 then HV125_17 = .;
    if HV126_17 =      9 then HV126_17 = .;
    if HV127_17 =     99 then HV127_17 = .;
    if HV128_17 =     99 then HV128_17 = .;
    if HV129_17 =      9 then HV129_17 = .;
    if HV101_18 =     99 then HV101_18 = .;
    if HV102_18 =      9 then HV102_18 = .;
    if HV103_18 =      9 then HV103_18 = .;
    if HV104_18 =      9 then HV104_18 = .;
    if HV105_18 =     99 then HV105_18 = .;
    if HV106_18 =      9 then HV106_18 = .;
    if HV107_18 =     99 then HV107_18 = .;
    if HV108_18 =     99 then HV108_18 = .;
    if HV109_18 =      9 then HV109_18 = .;
    if HV110_18 =      9 then HV110_18 = .;
    if HV111_18 =      9 then HV111_18 = .;
    if HV112_18 =     99 then HV112_18 = .;
    if HV113_18 =      9 then HV113_18 = .;
    if HV114_18 =     99 then HV114_18 = .;
    if HV115_18 =      9 then HV115_18 = .;
    if HV116_18 =      9 then HV116_18 = .;
    if HV121_18 =      9 then HV121_18 = .;
    if HV122_18 =      9 then HV122_18 = .;
    if HV123_18 =     99 then HV123_18 = .;
    if HV124_18 =     99 then HV124_18 = .;
    if HV125_18 =      9 then HV125_18 = .;
    if HV126_18 =      9 then HV126_18 = .;
    if HV127_18 =     99 then HV127_18 = .;
    if HV128_18 =     99 then HV128_18 = .;
    if HV129_18 =      9 then HV129_18 = .;
    if HV101_19 =     99 then HV101_19 = .;
    if HV102_19 =      9 then HV102_19 = .;
    if HV103_19 =      9 then HV103_19 = .;
    if HV104_19 =      9 then HV104_19 = .;
    if HV105_19 =     99 then HV105_19 = .;
    if HV106_19 =      9 then HV106_19 = .;
    if HV107_19 =     99 then HV107_19 = .;
    if HV108_19 =     99 then HV108_19 = .;
    if HV109_19 =      9 then HV109_19 = .;
    if HV110_19 =      9 then HV110_19 = .;
    if HV111_19 =      9 then HV111_19 = .;
    if HV112_19 =     99 then HV112_19 = .;
    if HV113_19 =      9 then HV113_19 = .;
    if HV114_19 =     99 then HV114_19 = .;
    if HV115_19 =      9 then HV115_19 = .;
    if HV116_19 =      9 then HV116_19 = .;
    if HV121_19 =      9 then HV121_19 = .;
    if HV122_19 =      9 then HV122_19 = .;
    if HV123_19 =     99 then HV123_19 = .;
    if HV124_19 =     99 then HV124_19 = .;
    if HV125_19 =      9 then HV125_19 = .;
    if HV126_19 =      9 then HV126_19 = .;
    if HV127_19 =     99 then HV127_19 = .;
    if HV128_19 =     99 then HV128_19 = .;
    if HV129_19 =      9 then HV129_19 = .;
    if HV101_20 =     99 then HV101_20 = .;
    if HV102_20 =      9 then HV102_20 = .;
    if HV103_20 =      9 then HV103_20 = .;
    if HV104_20 =      9 then HV104_20 = .;
    if HV105_20 =     99 then HV105_20 = .;
    if HV106_20 =      9 then HV106_20 = .;
    if HV107_20 =     99 then HV107_20 = .;
    if HV108_20 =     99 then HV108_20 = .;
    if HV109_20 =      9 then HV109_20 = .;
    if HV110_20 =      9 then HV110_20 = .;
    if HV111_20 =      9 then HV111_20 = .;
    if HV112_20 =     99 then HV112_20 = .;
    if HV113_20 =      9 then HV113_20 = .;
    if HV114_20 =     99 then HV114_20 = .;
    if HV115_20 =      9 then HV115_20 = .;
    if HV116_20 =      9 then HV116_20 = .;
    if HV121_20 =      9 then HV121_20 = .;
    if HV122_20 =      9 then HV122_20 = .;
    if HV123_20 =     99 then HV123_20 = .;
    if HV124_20 =     99 then HV124_20 = .;
    if HV125_20 =      9 then HV125_20 = .;
    if HV126_20 =      9 then HV126_20 = .;
    if HV127_20 =     99 then HV127_20 = .;
    if HV128_20 =     99 then HV128_20 = .;
    if HV129_20 =      9 then HV129_20 = .;
    if HV101_21 =     99 then HV101_21 = .;
    if HV102_21 =      9 then HV102_21 = .;
    if HV103_21 =      9 then HV103_21 = .;
    if HV104_21 =      9 then HV104_21 = .;
    if HV105_21 =     99 then HV105_21 = .;
    if HV106_21 =      9 then HV106_21 = .;
    if HV107_21 =     99 then HV107_21 = .;
    if HV108_21 =     99 then HV108_21 = .;
    if HV109_21 =      9 then HV109_21 = .;
    if HV110_21 =      9 then HV110_21 = .;
    if HV111_21 =      9 then HV111_21 = .;
    if HV112_21 =     99 then HV112_21 = .;
    if HV113_21 =      9 then HV113_21 = .;
    if HV114_21 =     99 then HV114_21 = .;
    if HV115_21 =      9 then HV115_21 = .;
    if HV116_21 =      9 then HV116_21 = .;
    if HV121_21 =      9 then HV121_21 = .;
    if HV122_21 =      9 then HV122_21 = .;
    if HV123_21 =     99 then HV123_21 = .;
    if HV124_21 =     99 then HV124_21 = .;
    if HV125_21 =      9 then HV125_21 = .;
    if HV126_21 =      9 then HV126_21 = .;
    if HV127_21 =     99 then HV127_21 = .;
    if HV128_21 =     99 then HV128_21 = .;
    if HV129_21 =      9 then HV129_21 = .;
    if SH01     =     99 then SH01 = .;
    if SH03     =      9 then SH03 = .;
    if SH08     =     99 then SH08 = .;
    if SH29     =      9 then SH29 = .;
    if SH32     =     99 then SH32 = .;
    if SH37     =     99 then SH37 = .;
    if SHTF     =     99 then SHTF = .;
    if SHREC    =      9 then SHREC = .;
    if SH03A_01 =     99 then SH03A_01 = .;
    if SH04_01  =     99 then SH04_01 = .;
    if SH11_01  =      9 then SH11_01 = .;
    if SH12_01  =     99 then SH12_01 = .;
    if SH14_01  =     99 then SH14_01 = .;
    if SH23_01  =      9 then SH23_01 = .;
    if SH24_01  =     99 then SH24_01 = .;
    if SH25_01  =      9 then SH25_01 = .;
    if SH26_01  =     99 then SH26_01 = .;
    if SH27_01  =      9 then SH27_01 = .;
    if SH28_01  =     99 then SH28_01 = .;
    if SH30_01  =      9 then SH30_01 = .;
    if SH31_01  =      9 then SH31_01 = .;
    if SH03A_02 =     99 then SH03A_02 = .;
    if SH04_02  =     99 then SH04_02 = .;
    if SH11_02  =      9 then SH11_02 = .;
    if SH12_02  =     99 then SH12_02 = .;
    if SH14_02  =     99 then SH14_02 = .;
    if SH23_02  =      9 then SH23_02 = .;
    if SH24_02  =     99 then SH24_02 = .;
    if SH25_02  =      9 then SH25_02 = .;
    if SH26_02  =     99 then SH26_02 = .;
    if SH27_02  =      9 then SH27_02 = .;
    if SH28_02  =     99 then SH28_02 = .;
    if SH30_02  =      9 then SH30_02 = .;
    if SH31_02  =      9 then SH31_02 = .;
    if SH03A_03 =     99 then SH03A_03 = .;
    if SH04_03  =     99 then SH04_03 = .;
    if SH11_03  =      9 then SH11_03 = .;
    if SH12_03  =     99 then SH12_03 = .;
    if SH14_03  =     99 then SH14_03 = .;
    if SH23_03  =      9 then SH23_03 = .;
    if SH24_03  =     99 then SH24_03 = .;
    if SH25_03  =      9 then SH25_03 = .;
    if SH26_03  =     99 then SH26_03 = .;
    if SH27_03  =      9 then SH27_03 = .;
    if SH28_03  =     99 then SH28_03 = .;
    if SH30_03  =      9 then SH30_03 = .;
    if SH31_03  =      9 then SH31_03 = .;
    if SH03A_04 =     99 then SH03A_04 = .;
    if SH04_04  =     99 then SH04_04 = .;
    if SH11_04  =      9 then SH11_04 = .;
    if SH12_04  =     99 then SH12_04 = .;
    if SH14_04  =     99 then SH14_04 = .;
    if SH23_04  =      9 then SH23_04 = .;
    if SH24_04  =     99 then SH24_04 = .;
    if SH25_04  =      9 then SH25_04 = .;
    if SH26_04  =     99 then SH26_04 = .;
    if SH27_04  =      9 then SH27_04 = .;
    if SH28_04  =     99 then SH28_04 = .;
    if SH30_04  =      9 then SH30_04 = .;
    if SH31_04  =      9 then SH31_04 = .;
    if SH03A_05 =     99 then SH03A_05 = .;
    if SH04_05  =     99 then SH04_05 = .;
    if SH11_05  =      9 then SH11_05 = .;
    if SH12_05  =     99 then SH12_05 = .;
    if SH14_05  =     99 then SH14_05 = .;
    if SH23_05  =      9 then SH23_05 = .;
    if SH24_05  =     99 then SH24_05 = .;
    if SH25_05  =      9 then SH25_05 = .;
    if SH26_05  =     99 then SH26_05 = .;
    if SH27_05  =      9 then SH27_05 = .;
    if SH28_05  =     99 then SH28_05 = .;
    if SH30_05  =      9 then SH30_05 = .;
    if SH31_05  =      9 then SH31_05 = .;
    if SH03A_06 =     99 then SH03A_06 = .;
    if SH04_06  =     99 then SH04_06 = .;
    if SH11_06  =      9 then SH11_06 = .;
    if SH12_06  =     99 then SH12_06 = .;
    if SH14_06  =     99 then SH14_06 = .;
    if SH23_06  =      9 then SH23_06 = .;
    if SH24_06  =     99 then SH24_06 = .;
    if SH25_06  =      9 then SH25_06 = .;
    if SH26_06  =     99 then SH26_06 = .;
    if SH27_06  =      9 then SH27_06 = .;
    if SH28_06  =     99 then SH28_06 = .;
    if SH30_06  =      9 then SH30_06 = .;
    if SH31_06  =      9 then SH31_06 = .;
    if SH03A_07 =     99 then SH03A_07 = .;
    if SH04_07  =     99 then SH04_07 = .;
    if SH11_07  =      9 then SH11_07 = .;
    if SH12_07  =     99 then SH12_07 = .;
    if SH14_07  =     99 then SH14_07 = .;
    if SH23_07  =      9 then SH23_07 = .;
    if SH24_07  =     99 then SH24_07 = .;
    if SH25_07  =      9 then SH25_07 = .;
    if SH26_07  =     99 then SH26_07 = .;
    if SH27_07  =      9 then SH27_07 = .;
    if SH28_07  =     99 then SH28_07 = .;
    if SH30_07  =      9 then SH30_07 = .;
    if SH31_07  =      9 then SH31_07 = .;
    if SH03A_08 =     99 then SH03A_08 = .;
    if SH04_08  =     99 then SH04_08 = .;
    if SH11_08  =      9 then SH11_08 = .;
    if SH12_08  =     99 then SH12_08 = .;
    if SH14_08  =     99 then SH14_08 = .;
    if SH23_08  =      9 then SH23_08 = .;
    if SH24_08  =     99 then SH24_08 = .;
    if SH25_08  =      9 then SH25_08 = .;
    if SH26_08  =     99 then SH26_08 = .;
    if SH27_08  =      9 then SH27_08 = .;
    if SH28_08  =     99 then SH28_08 = .;
    if SH30_08  =      9 then SH30_08 = .;
    if SH31_08  =      9 then SH31_08 = .;
    if SH03A_09 =     99 then SH03A_09 = .;
    if SH04_09  =     99 then SH04_09 = .;
    if SH11_09  =      9 then SH11_09 = .;
    if SH12_09  =     99 then SH12_09 = .;
    if SH14_09  =     99 then SH14_09 = .;
    if SH23_09  =      9 then SH23_09 = .;
    if SH24_09  =     99 then SH24_09 = .;
    if SH25_09  =      9 then SH25_09 = .;
    if SH26_09  =     99 then SH26_09 = .;
    if SH27_09  =      9 then SH27_09 = .;
    if SH28_09  =     99 then SH28_09 = .;
    if SH30_09  =      9 then SH30_09 = .;
    if SH31_09  =      9 then SH31_09 = .;
    if SH03A_10 =     99 then SH03A_10 = .;
    if SH04_10  =     99 then SH04_10 = .;
    if SH11_10  =      9 then SH11_10 = .;
    if SH12_10  =     99 then SH12_10 = .;
    if SH14_10  =     99 then SH14_10 = .;
    if SH23_10  =      9 then SH23_10 = .;
    if SH24_10  =     99 then SH24_10 = .;
    if SH25_10  =      9 then SH25_10 = .;
    if SH26_10  =     99 then SH26_10 = .;
    if SH27_10  =      9 then SH27_10 = .;
    if SH28_10  =     99 then SH28_10 = .;
    if SH30_10  =      9 then SH30_10 = .;
    if SH31_10  =      9 then SH31_10 = .;
    if SH03A_11 =     99 then SH03A_11 = .;
    if SH04_11  =     99 then SH04_11 = .;
    if SH11_11  =      9 then SH11_11 = .;
    if SH12_11  =     99 then SH12_11 = .;
    if SH14_11  =     99 then SH14_11 = .;
    if SH23_11  =      9 then SH23_11 = .;
    if SH24_11  =     99 then SH24_11 = .;
    if SH25_11  =      9 then SH25_11 = .;
    if SH26_11  =     99 then SH26_11 = .;
    if SH27_11  =      9 then SH27_11 = .;
    if SH28_11  =     99 then SH28_11 = .;
    if SH30_11  =      9 then SH30_11 = .;
    if SH31_11  =      9 then SH31_11 = .;
    if SH03A_12 =     99 then SH03A_12 = .;
    if SH04_12  =     99 then SH04_12 = .;
    if SH11_12  =      9 then SH11_12 = .;
    if SH12_12  =     99 then SH12_12 = .;
    if SH14_12  =     99 then SH14_12 = .;
    if SH23_12  =      9 then SH23_12 = .;
    if SH24_12  =     99 then SH24_12 = .;
    if SH25_12  =      9 then SH25_12 = .;
    if SH26_12  =     99 then SH26_12 = .;
    if SH27_12  =      9 then SH27_12 = .;
    if SH28_12  =     99 then SH28_12 = .;
    if SH30_12  =      9 then SH30_12 = .;
    if SH31_12  =      9 then SH31_12 = .;
    if SH03A_13 =     99 then SH03A_13 = .;
    if SH04_13  =     99 then SH04_13 = .;
    if SH11_13  =      9 then SH11_13 = .;
    if SH12_13  =     99 then SH12_13 = .;
    if SH14_13  =     99 then SH14_13 = .;
    if SH23_13  =      9 then SH23_13 = .;
    if SH24_13  =     99 then SH24_13 = .;
    if SH25_13  =      9 then SH25_13 = .;
    if SH26_13  =     99 then SH26_13 = .;
    if SH27_13  =      9 then SH27_13 = .;
    if SH28_13  =     99 then SH28_13 = .;
    if SH30_13  =      9 then SH30_13 = .;
    if SH31_13  =      9 then SH31_13 = .;
    if SH03A_14 =     99 then SH03A_14 = .;
    if SH04_14  =     99 then SH04_14 = .;
    if SH11_14  =      9 then SH11_14 = .;
    if SH12_14  =     99 then SH12_14 = .;
    if SH14_14  =     99 then SH14_14 = .;
    if SH23_14  =      9 then SH23_14 = .;
    if SH24_14  =     99 then SH24_14 = .;
    if SH25_14  =      9 then SH25_14 = .;
    if SH26_14  =     99 then SH26_14 = .;
    if SH27_14  =      9 then SH27_14 = .;
    if SH28_14  =     99 then SH28_14 = .;
    if SH30_14  =      9 then SH30_14 = .;
    if SH31_14  =      9 then SH31_14 = .;
    if SH03A_15 =     99 then SH03A_15 = .;
    if SH04_15  =     99 then SH04_15 = .;
    if SH11_15  =      9 then SH11_15 = .;
    if SH12_15  =     99 then SH12_15 = .;
    if SH14_15  =     99 then SH14_15 = .;
    if SH23_15  =      9 then SH23_15 = .;
    if SH24_15  =     99 then SH24_15 = .;
    if SH25_15  =      9 then SH25_15 = .;
    if SH26_15  =     99 then SH26_15 = .;
    if SH27_15  =      9 then SH27_15 = .;
    if SH28_15  =     99 then SH28_15 = .;
    if SH30_15  =      9 then SH30_15 = .;
    if SH31_15  =      9 then SH31_15 = .;
    if SH03A_16 =     99 then SH03A_16 = .;
    if SH04_16  =     99 then SH04_16 = .;
    if SH11_16  =      9 then SH11_16 = .;
    if SH12_16  =     99 then SH12_16 = .;
    if SH14_16  =     99 then SH14_16 = .;
    if SH23_16  =      9 then SH23_16 = .;
    if SH24_16  =     99 then SH24_16 = .;
    if SH25_16  =      9 then SH25_16 = .;
    if SH26_16  =     99 then SH26_16 = .;
    if SH27_16  =      9 then SH27_16 = .;
    if SH28_16  =     99 then SH28_16 = .;
    if SH30_16  =      9 then SH30_16 = .;
    if SH31_16  =      9 then SH31_16 = .;
    if SH03A_17 =     99 then SH03A_17 = .;
    if SH04_17  =     99 then SH04_17 = .;
    if SH11_17  =      9 then SH11_17 = .;
    if SH12_17  =     99 then SH12_17 = .;
    if SH14_17  =     99 then SH14_17 = .;
    if SH23_17  =      9 then SH23_17 = .;
    if SH24_17  =     99 then SH24_17 = .;
    if SH25_17  =      9 then SH25_17 = .;
    if SH26_17  =     99 then SH26_17 = .;
    if SH27_17  =      9 then SH27_17 = .;
    if SH28_17  =     99 then SH28_17 = .;
    if SH30_17  =      9 then SH30_17 = .;
    if SH31_17  =      9 then SH31_17 = .;
    if SH03A_18 =     99 then SH03A_18 = .;
    if SH04_18  =     99 then SH04_18 = .;
    if SH11_18  =      9 then SH11_18 = .;
    if SH12_18  =     99 then SH12_18 = .;
    if SH14_18  =     99 then SH14_18 = .;
    if SH23_18  =      9 then SH23_18 = .;
    if SH24_18  =     99 then SH24_18 = .;
    if SH25_18  =      9 then SH25_18 = .;
    if SH26_18  =     99 then SH26_18 = .;
    if SH27_18  =      9 then SH27_18 = .;
    if SH28_18  =     99 then SH28_18 = .;
    if SH30_18  =      9 then SH30_18 = .;
    if SH31_18  =      9 then SH31_18 = .;
    if SH03A_19 =     99 then SH03A_19 = .;
    if SH04_19  =     99 then SH04_19 = .;
    if SH11_19  =      9 then SH11_19 = .;
    if SH12_19  =     99 then SH12_19 = .;
    if SH14_19  =     99 then SH14_19 = .;
    if SH23_19  =      9 then SH23_19 = .;
    if SH24_19  =     99 then SH24_19 = .;
    if SH25_19  =      9 then SH25_19 = .;
    if SH26_19  =     99 then SH26_19 = .;
    if SH27_19  =      9 then SH27_19 = .;
    if SH28_19  =     99 then SH28_19 = .;
    if SH30_19  =      9 then SH30_19 = .;
    if SH31_19  =      9 then SH31_19 = .;
    if SH03A_20 =     99 then SH03A_20 = .;
    if SH04_20  =     99 then SH04_20 = .;
    if SH11_20  =      9 then SH11_20 = .;
    if SH12_20  =     99 then SH12_20 = .;
    if SH14_20  =     99 then SH14_20 = .;
    if SH23_20  =      9 then SH23_20 = .;
    if SH24_20  =     99 then SH24_20 = .;
    if SH25_20  =      9 then SH25_20 = .;
    if SH26_20  =     99 then SH26_20 = .;
    if SH27_20  =      9 then SH27_20 = .;
    if SH28_20  =     99 then SH28_20 = .;
    if SH30_20  =      9 then SH30_20 = .;
    if SH31_20  =      9 then SH31_20 = .;
    if SH03A_21 =     99 then SH03A_21 = .;
    if SH04_21  =     99 then SH04_21 = .;
    if SH11_21  =      9 then SH11_21 = .;
    if SH12_21  =     99 then SH12_21 = .;
    if SH14_21  =     99 then SH14_21 = .;
    if SH23_21  =      9 then SH23_21 = .;
    if SH24_21  =     99 then SH24_21 = .;
    if SH25_21  =      9 then SH25_21 = .;
    if SH26_21  =     99 then SH26_21 = .;
    if SH27_21  =      9 then SH27_21 = .;
    if SH28_21  =     99 then SH28_21 = .;
    if SH30_21  =      9 then SH30_21 = .;
    if SH31_21  =      9 then SH31_21 = .;
    if HA2_01   =   9999 then HA2_01 = .;
    if HA3_01   =   9999 then HA3_01 = .;
    if HA4_01   =   9999 then HA4_01 = .;
    if HA5_01   =   9999 then HA5_01 = .;
    if HA6_01   =  99999 then HA6_01 = .;
    if HA11_01  =   9999 then HA11_01 = .;
    if HA12_01  =  99999 then HA12_01 = .;
    if HA12A_01 =  99999 then HA12A_01 = .;
    if HA12B_01 =  99999 then HA12B_01 = .;
    if HA13_01  =      9 then HA13_01 = .;
    if HA35_01  =      9 then HA35_01 = .;
    if HA40_01  =   9999 then HA40_01 = .;
    if HA41_01  =   9999 then HA41_01 = .;
    if HA50_01  =      9 then HA50_01 = .;
    if HA52_01  =      9 then HA52_01 = .;
    if HA53_01  =    999 then HA53_01 = .;
    if HA54_01  =      9 then HA54_01 = .;
    if HA55_01  =      9 then HA55_01 = .;
    if HA56_01  =    999 then HA56_01 = .;
    if HA57_01  =      9 then HA57_01 = .;
    if HA58_01  =      9 then HA58_01 = .;
    if HA2_02   =   9999 then HA2_02 = .;
    if HA3_02   =   9999 then HA3_02 = .;
    if HA4_02   =   9999 then HA4_02 = .;
    if HA5_02   =   9999 then HA5_02 = .;
    if HA6_02   =  99999 then HA6_02 = .;
    if HA11_02  =   9999 then HA11_02 = .;
    if HA12_02  =  99999 then HA12_02 = .;
    if HA12A_02 =  99999 then HA12A_02 = .;
    if HA12B_02 =  99999 then HA12B_02 = .;
    if HA13_02  =      9 then HA13_02 = .;
    if HA35_02  =      9 then HA35_02 = .;
    if HA40_02  =   9999 then HA40_02 = .;
    if HA41_02  =   9999 then HA41_02 = .;
    if HA50_02  =      9 then HA50_02 = .;
    if HA52_02  =      9 then HA52_02 = .;
    if HA53_02  =    999 then HA53_02 = .;
    if HA54_02  =      9 then HA54_02 = .;
    if HA55_02  =      9 then HA55_02 = .;
    if HA56_02  =    999 then HA56_02 = .;
    if HA57_02  =      9 then HA57_02 = .;
    if HA58_02  =      9 then HA58_02 = .;
    if HA2_03   =   9999 then HA2_03 = .;
    if HA3_03   =   9999 then HA3_03 = .;
    if HA4_03   =   9999 then HA4_03 = .;
    if HA5_03   =   9999 then HA5_03 = .;
    if HA6_03   =  99999 then HA6_03 = .;
    if HA11_03  =   9999 then HA11_03 = .;
    if HA12_03  =  99999 then HA12_03 = .;
    if HA12A_03 =  99999 then HA12A_03 = .;
    if HA12B_03 =  99999 then HA12B_03 = .;
    if HA13_03  =      9 then HA13_03 = .;
    if HA35_03  =      9 then HA35_03 = .;
    if HA40_03  =   9999 then HA40_03 = .;
    if HA41_03  =   9999 then HA41_03 = .;
    if HA50_03  =      9 then HA50_03 = .;
    if HA52_03  =      9 then HA52_03 = .;
    if HA53_03  =    999 then HA53_03 = .;
    if HA54_03  =      9 then HA54_03 = .;
    if HA55_03  =      9 then HA55_03 = .;
    if HA56_03  =    999 then HA56_03 = .;
    if HA57_03  =      9 then HA57_03 = .;
    if HA58_03  =      9 then HA58_03 = .;
    if HA2_04   =   9999 then HA2_04 = .;
    if HA3_04   =   9999 then HA3_04 = .;
    if HA4_04   =   9999 then HA4_04 = .;
    if HA5_04   =   9999 then HA5_04 = .;
    if HA6_04   =  99999 then HA6_04 = .;
    if HA11_04  =   9999 then HA11_04 = .;
    if HA12_04  =  99999 then HA12_04 = .;
    if HA12A_04 =  99999 then HA12A_04 = .;
    if HA12B_04 =  99999 then HA12B_04 = .;
    if HA13_04  =      9 then HA13_04 = .;
    if HA35_04  =      9 then HA35_04 = .;
    if HA40_04  =   9999 then HA40_04 = .;
    if HA41_04  =   9999 then HA41_04 = .;
    if HA50_04  =      9 then HA50_04 = .;
    if HA52_04  =      9 then HA52_04 = .;
    if HA53_04  =    999 then HA53_04 = .;
    if HA54_04  =      9 then HA54_04 = .;
    if HA55_04  =      9 then HA55_04 = .;
    if HA56_04  =    999 then HA56_04 = .;
    if HA57_04  =      9 then HA57_04 = .;
    if HA58_04  =      9 then HA58_04 = .;
    if HA2_05   =   9999 then HA2_05 = .;
    if HA3_05   =   9999 then HA3_05 = .;
    if HA4_05   =   9999 then HA4_05 = .;
    if HA5_05   =   9999 then HA5_05 = .;
    if HA6_05   =  99999 then HA6_05 = .;
    if HA11_05  =   9999 then HA11_05 = .;
    if HA12_05  =  99999 then HA12_05 = .;
    if HA12A_05 =  99999 then HA12A_05 = .;
    if HA12B_05 =  99999 then HA12B_05 = .;
    if HA13_05  =      9 then HA13_05 = .;
    if HA35_05  =      9 then HA35_05 = .;
    if HA40_05  =   9999 then HA40_05 = .;
    if HA41_05  =   9999 then HA41_05 = .;
    if HA50_05  =      9 then HA50_05 = .;
    if HA52_05  =      9 then HA52_05 = .;
    if HA53_05  =    999 then HA53_05 = .;
    if HA54_05  =      9 then HA54_05 = .;
    if HA55_05  =      9 then HA55_05 = .;
    if HA56_05  =    999 then HA56_05 = .;
    if HA57_05  =      9 then HA57_05 = .;
    if HA58_05  =      9 then HA58_05 = .;
    if HA2_06   =   9999 then HA2_06 = .;
    if HA3_06   =   9999 then HA3_06 = .;
    if HA4_06   =   9999 then HA4_06 = .;
    if HA5_06   =   9999 then HA5_06 = .;
    if HA6_06   =  99999 then HA6_06 = .;
    if HA11_06  =   9999 then HA11_06 = .;
    if HA12_06  =  99999 then HA12_06 = .;
    if HA12A_06 =  99999 then HA12A_06 = .;
    if HA12B_06 =  99999 then HA12B_06 = .;
    if HA13_06  =      9 then HA13_06 = .;
    if HA35_06  =      9 then HA35_06 = .;
    if HA40_06  =   9999 then HA40_06 = .;
    if HA41_06  =   9999 then HA41_06 = .;
    if HA50_06  =      9 then HA50_06 = .;
    if HA52_06  =      9 then HA52_06 = .;
    if HA53_06  =    999 then HA53_06 = .;
    if HA54_06  =      9 then HA54_06 = .;
    if HA55_06  =      9 then HA55_06 = .;
    if HA56_06  =    999 then HA56_06 = .;
    if HA57_06  =      9 then HA57_06 = .;
    if HA58_06  =      9 then HA58_06 = .;
    if HA2_07   =   9999 then HA2_07 = .;
    if HA3_07   =   9999 then HA3_07 = .;
    if HA4_07   =   9999 then HA4_07 = .;
    if HA5_07   =   9999 then HA5_07 = .;
    if HA6_07   =  99999 then HA6_07 = .;
    if HA11_07  =   9999 then HA11_07 = .;
    if HA12_07  =  99999 then HA12_07 = .;
    if HA12A_07 =  99999 then HA12A_07 = .;
    if HA12B_07 =  99999 then HA12B_07 = .;
    if HA13_07  =      9 then HA13_07 = .;
    if HA35_07  =      9 then HA35_07 = .;
    if HA40_07  =   9999 then HA40_07 = .;
    if HA41_07  =   9999 then HA41_07 = .;
    if HA50_07  =      9 then HA50_07 = .;
    if HA52_07  =      9 then HA52_07 = .;
    if HA53_07  =    999 then HA53_07 = .;
    if HA54_07  =      9 then HA54_07 = .;
    if HA55_07  =      9 then HA55_07 = .;
    if HA56_07  =    999 then HA56_07 = .;
    if HA57_07  =      9 then HA57_07 = .;
    if HA58_07  =      9 then HA58_07 = .;
    if HA2_08   =   9999 then HA2_08 = .;
    if HA3_08   =   9999 then HA3_08 = .;
    if HA4_08   =   9999 then HA4_08 = .;
    if HA5_08   =   9999 then HA5_08 = .;
    if HA6_08   =  99999 then HA6_08 = .;
    if HA11_08  =   9999 then HA11_08 = .;
    if HA12_08  =  99999 then HA12_08 = .;
    if HA12A_08 =  99999 then HA12A_08 = .;
    if HA12B_08 =  99999 then HA12B_08 = .;
    if HA13_08  =      9 then HA13_08 = .;
    if HA35_08  =      9 then HA35_08 = .;
    if HA40_08  =   9999 then HA40_08 = .;
    if HA41_08  =   9999 then HA41_08 = .;
    if HA50_08  =      9 then HA50_08 = .;
    if HA52_08  =      9 then HA52_08 = .;
    if HA53_08  =    999 then HA53_08 = .;
    if HA54_08  =      9 then HA54_08 = .;
    if HA55_08  =      9 then HA55_08 = .;
    if HA56_08  =    999 then HA56_08 = .;
    if HA57_08  =      9 then HA57_08 = .;
    if HA58_08  =      9 then HA58_08 = .;
    if HA2_09   =   9999 then HA2_09 = .;
    if HA3_09   =   9999 then HA3_09 = .;
    if HA4_09   =   9999 then HA4_09 = .;
    if HA5_09   =   9999 then HA5_09 = .;
    if HA6_09   =  99999 then HA6_09 = .;
    if HA11_09  =   9999 then HA11_09 = .;
    if HA12_09  =  99999 then HA12_09 = .;
    if HA12A_09 =  99999 then HA12A_09 = .;
    if HA12B_09 =  99999 then HA12B_09 = .;
    if HA13_09  =      9 then HA13_09 = .;
    if HA35_09  =      9 then HA35_09 = .;
    if HA40_09  =   9999 then HA40_09 = .;
    if HA41_09  =   9999 then HA41_09 = .;
    if HA50_09  =      9 then HA50_09 = .;
    if HA52_09  =      9 then HA52_09 = .;
    if HA53_09  =    999 then HA53_09 = .;
    if HA54_09  =      9 then HA54_09 = .;
    if HA55_09  =      9 then HA55_09 = .;
    if HA56_09  =    999 then HA56_09 = .;
    if HA57_09  =      9 then HA57_09 = .;
    if HA58_09  =      9 then HA58_09 = .;
    if HA2_10   =   9999 then HA2_10 = .;
    if HA3_10   =   9999 then HA3_10 = .;
    if HA4_10   =   9999 then HA4_10 = .;
    if HA5_10   =   9999 then HA5_10 = .;
    if HA6_10   =  99999 then HA6_10 = .;
    if HA11_10  =   9999 then HA11_10 = .;
    if HA12_10  =  99999 then HA12_10 = .;
    if HA12A_10 =  99999 then HA12A_10 = .;
    if HA12B_10 =  99999 then HA12B_10 = .;
    if HA13_10  =      9 then HA13_10 = .;
    if HA35_10  =      9 then HA35_10 = .;
    if HA40_10  =   9999 then HA40_10 = .;
    if HA41_10  =   9999 then HA41_10 = .;
    if HA50_10  =      9 then HA50_10 = .;
    if HA52_10  =      9 then HA52_10 = .;
    if HA53_10  =    999 then HA53_10 = .;
    if HA54_10  =      9 then HA54_10 = .;
    if HA55_10  =      9 then HA55_10 = .;
    if HA56_10  =    999 then HA56_10 = .;
    if HA57_10  =      9 then HA57_10 = .;
    if HA58_10  =      9 then HA58_10 = .;
    if HA2_11   =   9999 then HA2_11 = .;
    if HA3_11   =   9999 then HA3_11 = .;
    if HA4_11   =   9999 then HA4_11 = .;
    if HA5_11   =   9999 then HA5_11 = .;
    if HA6_11   =  99999 then HA6_11 = .;
    if HA11_11  =   9999 then HA11_11 = .;
    if HA12_11  =  99999 then HA12_11 = .;
    if HA12A_11 =  99999 then HA12A_11 = .;
    if HA12B_11 =  99999 then HA12B_11 = .;
    if HA13_11  =      9 then HA13_11 = .;
    if HA35_11  =      9 then HA35_11 = .;
    if HA40_11  =   9999 then HA40_11 = .;
    if HA41_11  =   9999 then HA41_11 = .;
    if HA50_11  =      9 then HA50_11 = .;
    if HA52_11  =      9 then HA52_11 = .;
    if HA53_11  =    999 then HA53_11 = .;
    if HA54_11  =      9 then HA54_11 = .;
    if HA55_11  =      9 then HA55_11 = .;
    if HA56_11  =    999 then HA56_11 = .;
    if HA57_11  =      9 then HA57_11 = .;
    if HA58_11  =      9 then HA58_11 = .;
    if HA2_12   =   9999 then HA2_12 = .;
    if HA3_12   =   9999 then HA3_12 = .;
    if HA4_12   =   9999 then HA4_12 = .;
    if HA5_12   =   9999 then HA5_12 = .;
    if HA6_12   =  99999 then HA6_12 = .;
    if HA11_12  =   9999 then HA11_12 = .;
    if HA12_12  =  99999 then HA12_12 = .;
    if HA12A_12 =  99999 then HA12A_12 = .;
    if HA12B_12 =  99999 then HA12B_12 = .;
    if HA13_12  =      9 then HA13_12 = .;
    if HA35_12  =      9 then HA35_12 = .;
    if HA40_12  =   9999 then HA40_12 = .;
    if HA41_12  =   9999 then HA41_12 = .;
    if HA50_12  =      9 then HA50_12 = .;
    if HA52_12  =      9 then HA52_12 = .;
    if HA53_12  =    999 then HA53_12 = .;
    if HA54_12  =      9 then HA54_12 = .;
    if HA55_12  =      9 then HA55_12 = .;
    if HA56_12  =    999 then HA56_12 = .;
    if HA57_12  =      9 then HA57_12 = .;
    if HA58_12  =      9 then HA58_12 = .;
    if HA2_13   =   9999 then HA2_13 = .;
    if HA3_13   =   9999 then HA3_13 = .;
    if HA4_13   =   9999 then HA4_13 = .;
    if HA5_13   =   9999 then HA5_13 = .;
    if HA6_13   =  99999 then HA6_13 = .;
    if HA11_13  =   9999 then HA11_13 = .;
    if HA12_13  =  99999 then HA12_13 = .;
    if HA12A_13 =  99999 then HA12A_13 = .;
    if HA12B_13 =  99999 then HA12B_13 = .;
    if HA13_13  =      9 then HA13_13 = .;
    if HA35_13  =      9 then HA35_13 = .;
    if HA40_13  =   9999 then HA40_13 = .;
    if HA41_13  =   9999 then HA41_13 = .;
    if HA50_13  =      9 then HA50_13 = .;
    if HA52_13  =      9 then HA52_13 = .;
    if HA53_13  =    999 then HA53_13 = .;
    if HA54_13  =      9 then HA54_13 = .;
    if HA55_13  =      9 then HA55_13 = .;
    if HA56_13  =    999 then HA56_13 = .;
    if HA57_13  =      9 then HA57_13 = .;
    if HA58_13  =      9 then HA58_13 = .;
    if HA2_14   =   9999 then HA2_14 = .;
    if HA3_14   =   9999 then HA3_14 = .;
    if HA4_14   =   9999 then HA4_14 = .;
    if HA5_14   =   9999 then HA5_14 = .;
    if HA6_14   =  99999 then HA6_14 = .;
    if HA11_14  =   9999 then HA11_14 = .;
    if HA12_14  =  99999 then HA12_14 = .;
    if HA12A_14 =  99999 then HA12A_14 = .;
    if HA12B_14 =  99999 then HA12B_14 = .;
    if HA13_14  =      9 then HA13_14 = .;
    if HA35_14  =      9 then HA35_14 = .;
    if HA40_14  =   9999 then HA40_14 = .;
    if HA41_14  =   9999 then HA41_14 = .;
    if HA50_14  =      9 then HA50_14 = .;
    if HA52_14  =      9 then HA52_14 = .;
    if HA53_14  =    999 then HA53_14 = .;
    if HA54_14  =      9 then HA54_14 = .;
    if HA55_14  =      9 then HA55_14 = .;
    if HA56_14  =    999 then HA56_14 = .;
    if HA57_14  =      9 then HA57_14 = .;
    if HA58_14  =      9 then HA58_14 = .;
    if HA2_15   =   9999 then HA2_15 = .;
    if HA3_15   =   9999 then HA3_15 = .;
    if HA4_15   =   9999 then HA4_15 = .;
    if HA5_15   =   9999 then HA5_15 = .;
    if HA6_15   =  99999 then HA6_15 = .;
    if HA11_15  =   9999 then HA11_15 = .;
    if HA12_15  =  99999 then HA12_15 = .;
    if HA12A_15 =  99999 then HA12A_15 = .;
    if HA12B_15 =  99999 then HA12B_15 = .;
    if HA13_15  =      9 then HA13_15 = .;
    if HA35_15  =      9 then HA35_15 = .;
    if HA40_15  =   9999 then HA40_15 = .;
    if HA41_15  =   9999 then HA41_15 = .;
    if HA50_15  =      9 then HA50_15 = .;
    if HA52_15  =      9 then HA52_15 = .;
    if HA53_15  =    999 then HA53_15 = .;
    if HA54_15  =      9 then HA54_15 = .;
    if HA55_15  =      9 then HA55_15 = .;
    if HA56_15  =    999 then HA56_15 = .;
    if HA57_15  =      9 then HA57_15 = .;
    if HA58_15  =      9 then HA58_15 = .;
    if HC2_01   =   9999 then HC2_01 = .;
    if HC3_01   =   9999 then HC3_01 = .;
    if HC4_01   =   9999 then HC4_01 = .;
    if HC5_01   =   9999 then HC5_01 = .;
    if HC6_01   =  99999 then HC6_01 = .;
    if HC7_01   =   9999 then HC7_01 = .;
    if HC8_01   =   9999 then HC8_01 = .;
    if HC9_01   =  99999 then HC9_01 = .;
    if HC10_01  =   9999 then HC10_01 = .;
    if HC11_01  =   9999 then HC11_01 = .;
    if HC12_01  =  99999 then HC12_01 = .;
    if HC13_01  =      9 then HC13_01 = .;
    if HC15_01  =      9 then HC15_01 = .;
    if HC16_01  =     99 then HC16_01 = .;
    if HC27_01  =      9 then HC27_01 = .;
    if HC30_01  =     99 then HC30_01 = .;
    if HC31_01  =   9999 then HC31_01 = .;
    if HC52_01  =      9 then HC52_01 = .;
    if HC53_01  =    999 then HC53_01 = .;
    if HC55_01  =      9 then HC55_01 = .;
    if HC56_01  =   9999 then HC56_01 = .;
    if HC57_01  =      9 then HC57_01 = .;
    if HC58_01  =      9 then HC58_01 = .;
    if HC61_01  =      9 then HC61_01 = .;
    if HC62_01  =     99 then HC62_01 = .;
    if HC63_01  =    999 then HC63_01 = .;
    if HC64_01  =     99 then HC64_01 = .;
    if HC2_02   =   9999 then HC2_02 = .;
    if HC3_02   =   9999 then HC3_02 = .;
    if HC4_02   =   9999 then HC4_02 = .;
    if HC5_02   =   9999 then HC5_02 = .;
    if HC6_02   =  99999 then HC6_02 = .;
    if HC7_02   =   9999 then HC7_02 = .;
    if HC8_02   =   9999 then HC8_02 = .;
    if HC9_02   =  99999 then HC9_02 = .;
    if HC10_02  =   9999 then HC10_02 = .;
    if HC11_02  =   9999 then HC11_02 = .;
    if HC12_02  =  99999 then HC12_02 = .;
    if HC13_02  =      9 then HC13_02 = .;
    if HC15_02  =      9 then HC15_02 = .;
    if HC16_02  =     99 then HC16_02 = .;
    if HC27_02  =      9 then HC27_02 = .;
    if HC30_02  =     99 then HC30_02 = .;
    if HC31_02  =   9999 then HC31_02 = .;
    if HC52_02  =      9 then HC52_02 = .;
    if HC53_02  =    999 then HC53_02 = .;
    if HC55_02  =      9 then HC55_02 = .;
    if HC56_02  =   9999 then HC56_02 = .;
    if HC57_02  =      9 then HC57_02 = .;
    if HC58_02  =      9 then HC58_02 = .;
    if HC61_02  =      9 then HC61_02 = .;
    if HC62_02  =     99 then HC62_02 = .;
    if HC63_02  =    999 then HC63_02 = .;
    if HC64_02  =     99 then HC64_02 = .;
    if HC2_03   =   9999 then HC2_03 = .;
    if HC3_03   =   9999 then HC3_03 = .;
    if HC4_03   =   9999 then HC4_03 = .;
    if HC5_03   =   9999 then HC5_03 = .;
    if HC6_03   =  99999 then HC6_03 = .;
    if HC7_03   =   9999 then HC7_03 = .;
    if HC8_03   =   9999 then HC8_03 = .;
    if HC9_03   =  99999 then HC9_03 = .;
    if HC10_03  =   9999 then HC10_03 = .;
    if HC11_03  =   9999 then HC11_03 = .;
    if HC12_03  =  99999 then HC12_03 = .;
    if HC13_03  =      9 then HC13_03 = .;
    if HC15_03  =      9 then HC15_03 = .;
    if HC16_03  =     99 then HC16_03 = .;
    if HC27_03  =      9 then HC27_03 = .;
    if HC30_03  =     99 then HC30_03 = .;
    if HC31_03  =   9999 then HC31_03 = .;
    if HC52_03  =      9 then HC52_03 = .;
    if HC53_03  =    999 then HC53_03 = .;
    if HC55_03  =      9 then HC55_03 = .;
    if HC56_03  =   9999 then HC56_03 = .;
    if HC57_03  =      9 then HC57_03 = .;
    if HC58_03  =      9 then HC58_03 = .;
    if HC61_03  =      9 then HC61_03 = .;
    if HC62_03  =     99 then HC62_03 = .;
    if HC63_03  =    999 then HC63_03 = .;
    if HC64_03  =     99 then HC64_03 = .;
    if HC2_04   =   9999 then HC2_04 = .;
    if HC3_04   =   9999 then HC3_04 = .;
    if HC4_04   =   9999 then HC4_04 = .;
    if HC5_04   =   9999 then HC5_04 = .;
    if HC6_04   =  99999 then HC6_04 = .;
    if HC7_04   =   9999 then HC7_04 = .;
    if HC8_04   =   9999 then HC8_04 = .;
    if HC9_04   =  99999 then HC9_04 = .;
    if HC10_04  =   9999 then HC10_04 = .;
    if HC11_04  =   9999 then HC11_04 = .;
    if HC12_04  =  99999 then HC12_04 = .;
    if HC13_04  =      9 then HC13_04 = .;
    if HC15_04  =      9 then HC15_04 = .;
    if HC16_04  =     99 then HC16_04 = .;
    if HC27_04  =      9 then HC27_04 = .;
    if HC30_04  =     99 then HC30_04 = .;
    if HC31_04  =   9999 then HC31_04 = .;
    if HC52_04  =      9 then HC52_04 = .;
    if HC53_04  =    999 then HC53_04 = .;
    if HC55_04  =      9 then HC55_04 = .;
    if HC56_04  =   9999 then HC56_04 = .;
    if HC57_04  =      9 then HC57_04 = .;
    if HC58_04  =      9 then HC58_04 = .;
    if HC61_04  =      9 then HC61_04 = .;
    if HC62_04  =     99 then HC62_04 = .;
    if HC63_04  =    999 then HC63_04 = .;
    if HC64_04  =     99 then HC64_04 = .;
    if HC2_05   =   9999 then HC2_05 = .;
    if HC3_05   =   9999 then HC3_05 = .;
    if HC4_05   =   9999 then HC4_05 = .;
    if HC5_05   =   9999 then HC5_05 = .;
    if HC6_05   =  99999 then HC6_05 = .;
    if HC7_05   =   9999 then HC7_05 = .;
    if HC8_05   =   9999 then HC8_05 = .;
    if HC9_05   =  99999 then HC9_05 = .;
    if HC10_05  =   9999 then HC10_05 = .;
    if HC11_05  =   9999 then HC11_05 = .;
    if HC12_05  =  99999 then HC12_05 = .;
    if HC13_05  =      9 then HC13_05 = .;
    if HC15_05  =      9 then HC15_05 = .;
    if HC16_05  =     99 then HC16_05 = .;
    if HC27_05  =      9 then HC27_05 = .;
    if HC30_05  =     99 then HC30_05 = .;
    if HC31_05  =   9999 then HC31_05 = .;
    if HC52_05  =      9 then HC52_05 = .;
    if HC53_05  =    999 then HC53_05 = .;
    if HC55_05  =      9 then HC55_05 = .;
    if HC56_05  =   9999 then HC56_05 = .;
    if HC57_05  =      9 then HC57_05 = .;
    if HC58_05  =      9 then HC58_05 = .;
    if HC61_05  =      9 then HC61_05 = .;
    if HC62_05  =     99 then HC62_05 = .;
    if HC63_05  =    999 then HC63_05 = .;
    if HC64_05  =     99 then HC64_05 = .;
    if HC2_06   =   9999 then HC2_06 = .;
    if HC3_06   =   9999 then HC3_06 = .;
    if HC4_06   =   9999 then HC4_06 = .;
    if HC5_06   =   9999 then HC5_06 = .;
    if HC6_06   =  99999 then HC6_06 = .;
    if HC7_06   =   9999 then HC7_06 = .;
    if HC8_06   =   9999 then HC8_06 = .;
    if HC9_06   =  99999 then HC9_06 = .;
    if HC10_06  =   9999 then HC10_06 = .;
    if HC11_06  =   9999 then HC11_06 = .;
    if HC12_06  =  99999 then HC12_06 = .;
    if HC13_06  =      9 then HC13_06 = .;
    if HC15_06  =      9 then HC15_06 = .;
    if HC16_06  =     99 then HC16_06 = .;
    if HC27_06  =      9 then HC27_06 = .;
    if HC30_06  =     99 then HC30_06 = .;
    if HC31_06  =   9999 then HC31_06 = .;
    if HC52_06  =      9 then HC52_06 = .;
    if HC53_06  =    999 then HC53_06 = .;
    if HC55_06  =      9 then HC55_06 = .;
    if HC56_06  =   9999 then HC56_06 = .;
    if HC57_06  =      9 then HC57_06 = .;
    if HC58_06  =      9 then HC58_06 = .;
    if HC61_06  =      9 then HC61_06 = .;
    if HC62_06  =     99 then HC62_06 = .;
    if HC63_06  =    999 then HC63_06 = .;
    if HC64_06  =     99 then HC64_06 = .;
    if HC2_07   =   9999 then HC2_07 = .;
    if HC3_07   =   9999 then HC3_07 = .;
    if HC4_07   =   9999 then HC4_07 = .;
    if HC5_07   =   9999 then HC5_07 = .;
    if HC6_07   =  99999 then HC6_07 = .;
    if HC7_07   =   9999 then HC7_07 = .;
    if HC8_07   =   9999 then HC8_07 = .;
    if HC9_07   =  99999 then HC9_07 = .;
    if HC10_07  =   9999 then HC10_07 = .;
    if HC11_07  =   9999 then HC11_07 = .;
    if HC12_07  =  99999 then HC12_07 = .;
    if HC13_07  =      9 then HC13_07 = .;
    if HC15_07  =      9 then HC15_07 = .;
    if HC16_07  =     99 then HC16_07 = .;
    if HC27_07  =      9 then HC27_07 = .;
    if HC30_07  =     99 then HC30_07 = .;
    if HC31_07  =   9999 then HC31_07 = .;
    if HC52_07  =      9 then HC52_07 = .;
    if HC53_07  =    999 then HC53_07 = .;
    if HC55_07  =      9 then HC55_07 = .;
    if HC56_07  =   9999 then HC56_07 = .;
    if HC57_07  =      9 then HC57_07 = .;
    if HC58_07  =      9 then HC58_07 = .;
    if HC61_07  =      9 then HC61_07 = .;
    if HC62_07  =     99 then HC62_07 = .;
    if HC63_07  =    999 then HC63_07 = .;
    if HC64_07  =     99 then HC64_07 = .;
    if HC2_08   =   9999 then HC2_08 = .;
    if HC3_08   =   9999 then HC3_08 = .;
    if HC4_08   =   9999 then HC4_08 = .;
    if HC5_08   =   9999 then HC5_08 = .;
    if HC6_08   =  99999 then HC6_08 = .;
    if HC7_08   =   9999 then HC7_08 = .;
    if HC8_08   =   9999 then HC8_08 = .;
    if HC9_08   =  99999 then HC9_08 = .;
    if HC10_08  =   9999 then HC10_08 = .;
    if HC11_08  =   9999 then HC11_08 = .;
    if HC12_08  =  99999 then HC12_08 = .;
    if HC13_08  =      9 then HC13_08 = .;
    if HC15_08  =      9 then HC15_08 = .;
    if HC16_08  =     99 then HC16_08 = .;
    if HC27_08  =      9 then HC27_08 = .;
    if HC30_08  =     99 then HC30_08 = .;
    if HC31_08  =   9999 then HC31_08 = .;
    if HC52_08  =      9 then HC52_08 = .;
    if HC53_08  =    999 then HC53_08 = .;
    if HC55_08  =      9 then HC55_08 = .;
    if HC56_08  =   9999 then HC56_08 = .;
    if HC57_08  =      9 then HC57_08 = .;
    if HC58_08  =      9 then HC58_08 = .;
    if HC61_08  =      9 then HC61_08 = .;
    if HC62_08  =     99 then HC62_08 = .;
    if HC63_08  =    999 then HC63_08 = .;
    if HC64_08  =     99 then HC64_08 = .;
    if HC2_09   =   9999 then HC2_09 = .;
    if HC3_09   =   9999 then HC3_09 = .;
    if HC4_09   =   9999 then HC4_09 = .;
    if HC5_09   =   9999 then HC5_09 = .;
    if HC6_09   =  99999 then HC6_09 = .;
    if HC7_09   =   9999 then HC7_09 = .;
    if HC8_09   =   9999 then HC8_09 = .;
    if HC9_09   =  99999 then HC9_09 = .;
    if HC10_09  =   9999 then HC10_09 = .;
    if HC11_09  =   9999 then HC11_09 = .;
    if HC12_09  =  99999 then HC12_09 = .;
    if HC13_09  =      9 then HC13_09 = .;
    if HC15_09  =      9 then HC15_09 = .;
    if HC16_09  =     99 then HC16_09 = .;
    if HC27_09  =      9 then HC27_09 = .;
    if HC30_09  =     99 then HC30_09 = .;
    if HC31_09  =   9999 then HC31_09 = .;
    if HC52_09  =      9 then HC52_09 = .;
    if HC53_09  =    999 then HC53_09 = .;
    if HC55_09  =      9 then HC55_09 = .;
    if HC56_09  =   9999 then HC56_09 = .;
    if HC57_09  =      9 then HC57_09 = .;
    if HC58_09  =      9 then HC58_09 = .;
    if HC61_09  =      9 then HC61_09 = .;
    if HC62_09  =     99 then HC62_09 = .;
    if HC63_09  =    999 then HC63_09 = .;
    if HC64_09  =     99 then HC64_09 = .;
    if HC2_10   =   9999 then HC2_10 = .;
    if HC3_10   =   9999 then HC3_10 = .;
    if HC4_10   =   9999 then HC4_10 = .;
    if HC5_10   =   9999 then HC5_10 = .;
    if HC6_10   =  99999 then HC6_10 = .;
    if HC7_10   =   9999 then HC7_10 = .;
    if HC8_10   =   9999 then HC8_10 = .;
    if HC9_10   =  99999 then HC9_10 = .;
    if HC10_10  =   9999 then HC10_10 = .;
    if HC11_10  =   9999 then HC11_10 = .;
    if HC12_10  =  99999 then HC12_10 = .;
    if HC13_10  =      9 then HC13_10 = .;
    if HC15_10  =      9 then HC15_10 = .;
    if HC16_10  =     99 then HC16_10 = .;
    if HC27_10  =      9 then HC27_10 = .;
    if HC30_10  =     99 then HC30_10 = .;
    if HC31_10  =   9999 then HC31_10 = .;
    if HC52_10  =      9 then HC52_10 = .;
    if HC53_10  =    999 then HC53_10 = .;
    if HC55_10  =      9 then HC55_10 = .;
    if HC56_10  =   9999 then HC56_10 = .;
    if HC57_10  =      9 then HC57_10 = .;
    if HC58_10  =      9 then HC58_10 = .;
    if HC61_10  =      9 then HC61_10 = .;
    if HC62_10  =     99 then HC62_10 = .;
    if HC63_10  =    999 then HC63_10 = .;
    if HC64_10  =     99 then HC64_10 = .;
    if HC2_11   =   9999 then HC2_11 = .;
    if HC3_11   =   9999 then HC3_11 = .;
    if HC4_11   =   9999 then HC4_11 = .;
    if HC5_11   =   9999 then HC5_11 = .;
    if HC6_11   =  99999 then HC6_11 = .;
    if HC7_11   =   9999 then HC7_11 = .;
    if HC8_11   =   9999 then HC8_11 = .;
    if HC9_11   =  99999 then HC9_11 = .;
    if HC10_11  =   9999 then HC10_11 = .;
    if HC11_11  =   9999 then HC11_11 = .;
    if HC12_11  =  99999 then HC12_11 = .;
    if HC13_11  =      9 then HC13_11 = .;
    if HC15_11  =      9 then HC15_11 = .;
    if HC16_11  =     99 then HC16_11 = .;
    if HC27_11  =      9 then HC27_11 = .;
    if HC30_11  =     99 then HC30_11 = .;
    if HC31_11  =   9999 then HC31_11 = .;
    if HC52_11  =      9 then HC52_11 = .;
    if HC53_11  =    999 then HC53_11 = .;
    if HC55_11  =      9 then HC55_11 = .;
    if HC56_11  =   9999 then HC56_11 = .;
    if HC57_11  =      9 then HC57_11 = .;
    if HC58_11  =      9 then HC58_11 = .;
    if HC61_11  =      9 then HC61_11 = .;
    if HC62_11  =     99 then HC62_11 = .;
    if HC63_11  =    999 then HC63_11 = .;
    if HC64_11  =     99 then HC64_11 = .;
    if HC2_12   =   9999 then HC2_12 = .;
    if HC3_12   =   9999 then HC3_12 = .;
    if HC4_12   =   9999 then HC4_12 = .;
    if HC5_12   =   9999 then HC5_12 = .;
    if HC6_12   =  99999 then HC6_12 = .;
    if HC7_12   =   9999 then HC7_12 = .;
    if HC8_12   =   9999 then HC8_12 = .;
    if HC9_12   =  99999 then HC9_12 = .;
    if HC10_12  =   9999 then HC10_12 = .;
    if HC11_12  =   9999 then HC11_12 = .;
    if HC12_12  =  99999 then HC12_12 = .;
    if HC13_12  =      9 then HC13_12 = .;
    if HC15_12  =      9 then HC15_12 = .;
    if HC16_12  =     99 then HC16_12 = .;
    if HC27_12  =      9 then HC27_12 = .;
    if HC30_12  =     99 then HC30_12 = .;
    if HC31_12  =   9999 then HC31_12 = .;
    if HC52_12  =      9 then HC52_12 = .;
    if HC53_12  =    999 then HC53_12 = .;
    if HC55_12  =      9 then HC55_12 = .;
    if HC56_12  =   9999 then HC56_12 = .;
    if HC57_12  =      9 then HC57_12 = .;
    if HC58_12  =      9 then HC58_12 = .;
    if HC61_12  =      9 then HC61_12 = .;
    if HC62_12  =     99 then HC62_12 = .;
    if HC63_12  =    999 then HC63_12 = .;
    if HC64_12  =     99 then HC64_12 = .;
    if HC2_13   =   9999 then HC2_13 = .;
    if HC3_13   =   9999 then HC3_13 = .;
    if HC4_13   =   9999 then HC4_13 = .;
    if HC5_13   =   9999 then HC5_13 = .;
    if HC6_13   =  99999 then HC6_13 = .;
    if HC7_13   =   9999 then HC7_13 = .;
    if HC8_13   =   9999 then HC8_13 = .;
    if HC9_13   =  99999 then HC9_13 = .;
    if HC10_13  =   9999 then HC10_13 = .;
    if HC11_13  =   9999 then HC11_13 = .;
    if HC12_13  =  99999 then HC12_13 = .;
    if HC13_13  =      9 then HC13_13 = .;
    if HC15_13  =      9 then HC15_13 = .;
    if HC16_13  =     99 then HC16_13 = .;
    if HC27_13  =      9 then HC27_13 = .;
    if HC30_13  =     99 then HC30_13 = .;
    if HC31_13  =   9999 then HC31_13 = .;
    if HC52_13  =      9 then HC52_13 = .;
    if HC53_13  =    999 then HC53_13 = .;
    if HC55_13  =      9 then HC55_13 = .;
    if HC56_13  =   9999 then HC56_13 = .;
    if HC57_13  =      9 then HC57_13 = .;
    if HC58_13  =      9 then HC58_13 = .;
    if HC61_13  =      9 then HC61_13 = .;
    if HC62_13  =     99 then HC62_13 = .;
    if HC63_13  =    999 then HC63_13 = .;
    if HC64_13  =     99 then HC64_13 = .;
    if HC2_14   =   9999 then HC2_14 = .;
    if HC3_14   =   9999 then HC3_14 = .;
    if HC4_14   =   9999 then HC4_14 = .;
    if HC5_14   =   9999 then HC5_14 = .;
    if HC6_14   =  99999 then HC6_14 = .;
    if HC7_14   =   9999 then HC7_14 = .;
    if HC8_14   =   9999 then HC8_14 = .;
    if HC9_14   =  99999 then HC9_14 = .;
    if HC10_14  =   9999 then HC10_14 = .;
    if HC11_14  =   9999 then HC11_14 = .;
    if HC12_14  =  99999 then HC12_14 = .;
    if HC13_14  =      9 then HC13_14 = .;
    if HC15_14  =      9 then HC15_14 = .;
    if HC16_14  =     99 then HC16_14 = .;
    if HC27_14  =      9 then HC27_14 = .;
    if HC30_14  =     99 then HC30_14 = .;
    if HC31_14  =   9999 then HC31_14 = .;
    if HC52_14  =      9 then HC52_14 = .;
    if HC53_14  =    999 then HC53_14 = .;
    if HC55_14  =      9 then HC55_14 = .;
    if HC56_14  =   9999 then HC56_14 = .;
    if HC57_14  =      9 then HC57_14 = .;
    if HC58_14  =      9 then HC58_14 = .;
    if HC61_14  =      9 then HC61_14 = .;
    if HC62_14  =     99 then HC62_14 = .;
    if HC63_14  =    999 then HC63_14 = .;
    if HC64_14  =     99 then HC64_14 = .;
    if HC2_15   =   9999 then HC2_15 = .;
    if HC3_15   =   9999 then HC3_15 = .;
    if HC4_15   =   9999 then HC4_15 = .;
    if HC5_15   =   9999 then HC5_15 = .;
    if HC6_15   =  99999 then HC6_15 = .;
    if HC7_15   =   9999 then HC7_15 = .;
    if HC8_15   =   9999 then HC8_15 = .;
    if HC9_15   =  99999 then HC9_15 = .;
    if HC10_15  =   9999 then HC10_15 = .;
    if HC11_15  =   9999 then HC11_15 = .;
    if HC12_15  =  99999 then HC12_15 = .;
    if HC13_15  =      9 then HC13_15 = .;
    if HC15_15  =      9 then HC15_15 = .;
    if HC16_15  =     99 then HC16_15 = .;
    if HC27_15  =      9 then HC27_15 = .;
    if HC30_15  =     99 then HC30_15 = .;
    if HC31_15  =   9999 then HC31_15 = .;
    if HC52_15  =      9 then HC52_15 = .;
    if HC53_15  =    999 then HC53_15 = .;
    if HC55_15  =      9 then HC55_15 = .;
    if HC56_15  =   9999 then HC56_15 = .;
    if HC57_15  =      9 then HC57_15 = .;
    if HC58_15  =      9 then HC58_15 = .;
    if HC61_15  =      9 then HC61_15 = .;
    if HC62_15  =     99 then HC62_15 = .;
    if HC63_15  =    999 then HC63_15 = .;
    if HC64_15  =     99 then HC64_15 = .;
    if SH33A_01 =      9 then SH33A_01 = .;
    if SH33B_01 =      9 then SH33B_01 = .;
    if SH33C_01 =      9 then SH33C_01 = .;
    if SH33X_01 =      9 then SH33X_01 = .;
    if SH34_01  =     99 then SH34_01 = .;
    if SH35_01  =     99 then SH35_01 = .;
    if SH33A_02 =      9 then SH33A_02 = .;
    if SH33B_02 =      9 then SH33B_02 = .;
    if SH33C_02 =      9 then SH33C_02 = .;
    if SH33X_02 =      9 then SH33X_02 = .;
    if SH34_02  =     99 then SH34_02 = .;
    if SH35_02  =     99 then SH35_02 = .;
    if SH33A_03 =      9 then SH33A_03 = .;
    if SH33B_03 =      9 then SH33B_03 = .;
    if SH33C_03 =      9 then SH33C_03 = .;
    if SH33X_03 =      9 then SH33X_03 = .;
    if SH34_03  =     99 then SH34_03 = .;
    if SH35_03  =     99 then SH35_03 = .;
    if SH33A_04 =      9 then SH33A_04 = .;
    if SH33B_04 =      9 then SH33B_04 = .;
    if SH33C_04 =      9 then SH33C_04 = .;
    if SH33X_04 =      9 then SH33X_04 = .;
    if SH34_04  =     99 then SH34_04 = .;
    if SH35_04  =     99 then SH35_04 = .;
    if SH33A_05 =      9 then SH33A_05 = .;
    if SH33B_05 =      9 then SH33B_05 = .;
    if SH33C_05 =      9 then SH33C_05 = .;
    if SH33X_05 =      9 then SH33X_05 = .;
    if SH34_05  =     99 then SH34_05 = .;
    if SH35_05  =     99 then SH35_05 = .;
    if SH33A_06 =      9 then SH33A_06 = .;
    if SH33B_06 =      9 then SH33B_06 = .;
    if SH33C_06 =      9 then SH33C_06 = .;
    if SH33X_06 =      9 then SH33X_06 = .;
    if SH34_06  =     99 then SH34_06 = .;
    if SH35_06  =     99 then SH35_06 = .;
    if SH33A_07 =      9 then SH33A_07 = .;
    if SH33B_07 =      9 then SH33B_07 = .;
    if SH33C_07 =      9 then SH33C_07 = .;
    if SH33X_07 =      9 then SH33X_07 = .;
    if SH34_07  =     99 then SH34_07 = .;
    if SH35_07  =     99 then SH35_07 = .;
    if SH33A_08 =      9 then SH33A_08 = .;
    if SH33B_08 =      9 then SH33B_08 = .;
    if SH33C_08 =      9 then SH33C_08 = .;
    if SH33X_08 =      9 then SH33X_08 = .;
    if SH34_08  =     99 then SH34_08 = .;
    if SH35_08  =     99 then SH35_08 = .;
    if SH33A_09 =      9 then SH33A_09 = .;
    if SH33B_09 =      9 then SH33B_09 = .;
    if SH33C_09 =      9 then SH33C_09 = .;
    if SH33X_09 =      9 then SH33X_09 = .;
    if SH34_09  =     99 then SH34_09 = .;
    if SH35_09  =     99 then SH35_09 = .;
    if SH33A_10 =      9 then SH33A_10 = .;
    if SH33B_10 =      9 then SH33B_10 = .;
    if SH33C_10 =      9 then SH33C_10 = .;
    if SH33X_10 =      9 then SH33X_10 = .;
    if SH34_10  =     99 then SH34_10 = .;
    if SH35_10  =     99 then SH35_10 = .;
    if SH33A_11 =      9 then SH33A_11 = .;
    if SH33B_11 =      9 then SH33B_11 = .;
    if SH33C_11 =      9 then SH33C_11 = .;
    if SH33X_11 =      9 then SH33X_11 = .;
    if SH34_11  =     99 then SH34_11 = .;
    if SH35_11  =     99 then SH35_11 = .;
    if SH33A_12 =      9 then SH33A_12 = .;
    if SH33B_12 =      9 then SH33B_12 = .;
    if SH33C_12 =      9 then SH33C_12 = .;
    if SH33X_12 =      9 then SH33X_12 = .;
    if SH34_12  =     99 then SH34_12 = .;
    if SH35_12  =     99 then SH35_12 = .;
    if SH33A_13 =      9 then SH33A_13 = .;
    if SH33B_13 =      9 then SH33B_13 = .;
    if SH33C_13 =      9 then SH33C_13 = .;
    if SH33X_13 =      9 then SH33X_13 = .;
    if SH34_13  =     99 then SH34_13 = .;
    if SH35_13  =     99 then SH35_13 = .;
    if SH33A_14 =      9 then SH33A_14 = .;
    if SH33B_14 =      9 then SH33B_14 = .;
    if SH33C_14 =      9 then SH33C_14 = .;
    if SH33X_14 =      9 then SH33X_14 = .;
    if SH34_14  =     99 then SH34_14 = .;
    if SH35_14  =     99 then SH35_14 = .;
    if SH33A_15 =      9 then SH33A_15 = .;
    if SH33B_15 =      9 then SH33B_15 = .;
    if SH33C_15 =      9 then SH33C_15 = .;
    if SH33X_15 =      9 then SH33X_15 = .;
    if SH34_15  =     99 then SH34_15 = .;
    if SH35_15  =     99 then SH35_15 = .;
    if SH33A_16 =      9 then SH33A_16 = .;
    if SH33B_16 =      9 then SH33B_16 = .;
    if SH33C_16 =      9 then SH33C_16 = .;
    if SH33X_16 =      9 then SH33X_16 = .;
    if SH34_16  =     99 then SH34_16 = .;
    if SH35_16  =     99 then SH35_16 = .;
    if SH33A_17 =      9 then SH33A_17 = .;
    if SH33B_17 =      9 then SH33B_17 = .;
    if SH33C_17 =      9 then SH33C_17 = .;
    if SH33X_17 =      9 then SH33X_17 = .;
    if SH34_17  =     99 then SH34_17 = .;
    if SH35_17  =     99 then SH35_17 = .;
    if SH33A_18 =      9 then SH33A_18 = .;
    if SH33B_18 =      9 then SH33B_18 = .;
    if SH33C_18 =      9 then SH33C_18 = .;
    if SH33X_18 =      9 then SH33X_18 = .;
    if SH34_18  =     99 then SH34_18 = .;
    if SH35_18  =     99 then SH35_18 = .;
    if SH33A_19 =      9 then SH33A_19 = .;
    if SH33B_19 =      9 then SH33B_19 = .;
    if SH33C_19 =      9 then SH33C_19 = .;
    if SH33X_19 =      9 then SH33X_19 = .;
    if SH34_19  =     99 then SH34_19 = .;
    if SH35_19  =     99 then SH35_19 = .;
    if SH38_01  =     99 then SH38_01 = .;
    if SH39_01  =    999 then SH39_01 = .;
    if SH40_01  =      9 then SH40_01 = .;
    if SH41_01  =      9 then SH41_01 = .;
    if SH42_01  =      9 then SH42_01 = .;
    if SH43_01  =      9 then SH43_01 = .;
    if SH38_02  =     99 then SH38_02 = .;
    if SH39_02  =    999 then SH39_02 = .;
    if SH40_02  =      9 then SH40_02 = .;
    if SH41_02  =      9 then SH41_02 = .;
    if SH42_02  =      9 then SH42_02 = .;
    if SH43_02  =      9 then SH43_02 = .;
    if SH38_03  =     99 then SH38_03 = .;
    if SH39_03  =    999 then SH39_03 = .;
    if SH40_03  =      9 then SH40_03 = .;
    if SH41_03  =      9 then SH41_03 = .;
    if SH42_03  =      9 then SH42_03 = .;
    if SH43_03  =      9 then SH43_03 = .;
    if SH38_04  =     99 then SH38_04 = .;
    if SH39_04  =    999 then SH39_04 = .;
    if SH40_04  =      9 then SH40_04 = .;
    if SH41_04  =      9 then SH41_04 = .;
    if SH42_04  =      9 then SH42_04 = .;
    if SH43_04  =      9 then SH43_04 = .;
    if SH38_05  =     99 then SH38_05 = .;
    if SH39_05  =    999 then SH39_05 = .;
    if SH40_05  =      9 then SH40_05 = .;
    if SH41_05  =      9 then SH41_05 = .;
    if SH42_05  =      9 then SH42_05 = .;
    if SH43_05  =      9 then SH43_05 = .;
    if SH38_06  =     99 then SH38_06 = .;
    if SH39_06  =    999 then SH39_06 = .;
    if SH40_06  =      9 then SH40_06 = .;
    if SH41_06  =      9 then SH41_06 = .;
    if SH42_06  =      9 then SH42_06 = .;
    if SH43_06  =      9 then SH43_06 = .;
    if SH38_07  =     99 then SH38_07 = .;
    if SH39_07  =    999 then SH39_07 = .;
    if SH40_07  =      9 then SH40_07 = .;
    if SH41_07  =      9 then SH41_07 = .;
    if SH42_07  =      9 then SH42_07 = .;
    if SH43_07  =      9 then SH43_07 = .;
    if SH38_08  =     99 then SH38_08 = .;
    if SH39_08  =    999 then SH39_08 = .;
    if SH40_08  =      9 then SH40_08 = .;
    if SH41_08  =      9 then SH41_08 = .;
    if SH42_08  =      9 then SH42_08 = .;
    if SH43_08  =      9 then SH43_08 = .;
    if SH38_09  =     99 then SH38_09 = .;
    if SH39_09  =    999 then SH39_09 = .;
    if SH40_09  =      9 then SH40_09 = .;
    if SH41_09  =      9 then SH41_09 = .;
    if SH42_09  =      9 then SH42_09 = .;
    if SH43_09  =      9 then SH43_09 = .;
    if SH38_10  =     99 then SH38_10 = .;
    if SH39_10  =    999 then SH39_10 = .;
    if SH40_10  =      9 then SH40_10 = .;
    if SH41_10  =      9 then SH41_10 = .;
    if SH42_10  =      9 then SH42_10 = .;
    if SH43_10  =      9 then SH43_10 = .;
    if SH38_11  =     99 then SH38_11 = .;
    if SH39_11  =    999 then SH39_11 = .;
    if SH40_11  =      9 then SH40_11 = .;
    if SH41_11  =      9 then SH41_11 = .;
    if SH42_11  =      9 then SH42_11 = .;
    if SH43_11  =      9 then SH43_11 = .;
    if SH38_12  =     99 then SH38_12 = .;
    if SH39_12  =    999 then SH39_12 = .;
    if SH40_12  =      9 then SH40_12 = .;
    if SH41_12  =      9 then SH41_12 = .;
    if SH42_12  =      9 then SH42_12 = .;
    if SH43_12  =      9 then SH43_12 = .;
    if SH38_13  =     99 then SH38_13 = .;
    if SH39_13  =    999 then SH39_13 = .;
    if SH40_13  =      9 then SH40_13 = .;
    if SH41_13  =      9 then SH41_13 = .;
    if SH42_13  =      9 then SH42_13 = .;
    if SH43_13  =      9 then SH43_13 = .;
    if SH38_14  =     99 then SH38_14 = .;
    if SH39_14  =    999 then SH39_14 = .;
    if SH40_14  =      9 then SH40_14 = .;
    if SH41_14  =      9 then SH41_14 = .;
    if SH42_14  =      9 then SH42_14 = .;
    if SH43_14  =      9 then SH43_14 = .;
    if SH38_15  =     99 then SH38_15 = .;
    if SH39_15  =    999 then SH39_15 = .;
    if SH40_15  =      9 then SH40_15 = .;
    if SH41_15  =      9 then SH41_15 = .;
    if SH42_15  =      9 then SH42_15 = .;
    if SH43_15  =      9 then SH43_15 = .;
    if SH38_16  =     99 then SH38_16 = .;
    if SH39_16  =    999 then SH39_16 = .;
    if SH40_16  =      9 then SH40_16 = .;
    if SH41_16  =      9 then SH41_16 = .;
    if SH42_16  =      9 then SH42_16 = .;
    if SH43_16  =      9 then SH43_16 = .;
    if SH38_17  =     99 then SH38_17 = .;
    if SH39_17  =    999 then SH39_17 = .;
    if SH40_17  =      9 then SH40_17 = .;
    if SH41_17  =      9 then SH41_17 = .;
    if SH42_17  =      9 then SH42_17 = .;
    if SH43_17  =      9 then SH43_17 = .;
