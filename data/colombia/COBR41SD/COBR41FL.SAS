libname user 'C:\COUNTRIES\CO41';
Proc format;
  value F00001_
     1 = "15-19"
     2 = "20-24"
     3 = "25-29"
     4 = "30-34"
     5 = "35-39"
     6 = "40-44"
     7 = "45-49"
     ;
  value F00002_
     1 = "Month and year"
     2 = "Month and age -y imp"
     3 = "Year and age - m imp"
     4 = "Y & age - y ignored"
     5 = "Year - a, m imp"
     6 = "Age - y, m imp"
     7 = "Month - a, y imp"
     8 = "None - all imp"
     ;
  value F00003_
     1 = "Completed"
     2 = "Refused"
     3 = "Absent momentaneously"
     4 = "Absent temporarily"
     5 = "Absent impossible to locate"
     6 = "Incomplete"
     7 = "Other"
     ;
  value F00004_
     0 = "No calendar"
     ;
  value F00005_
     0 = "No calendar"
     ;
  value F00006_
     0 = "All woman sample"
     1 = "Ever married sample"
     ;
  value F00007_
     1 = "Guajira, Cesar, Magdalena"
     2 = "Atlantico, Bolivar Norte"
     3 = "Bolivar, Sucre, Cordoba"
     4 = "Santanderes"
     5 = "Boyaca, C/marca, Meta"
     6 = "Antioquia"
     7 = "Medellin"
     8 = "Caldas, Risaralda, Quindio"
     9 = "Tolima, Huila, Caqueta"
    10 = "Cauca, Nariño"
    11 = "Valle del cauca"
    12 = "Litoral pacifico"
    13 = "Cali"
    14 = "Bogota D.C."
     ;
  value F00008_
     1 = "Atlantica"
     2 = "Oriental"
     3 = "Central"
     4 = "Pacifica"
     5 = "Bogota"
     ;
  value F00009_
     1 = "Urban"
     2 = "Rural"
     ;
  value F00010_
     0 = "Capital, large city"
     1 = "Small city"
     2 = "Town"
     3 = "Countryside"
     ;
  value F00011_
     0 = "Husband not in HH"
     ;
  value F00012_
     0 = "Not selected"
     1 = "Selected"
     ;
  value F00013_
     0 = "Woman not selected"
     1 = "Woman selected"
     ;
  value F00014_
     0 = "Women no selected"
     1 = "Women selected and interviewed"
     2 = "Women selected, but privacy not possible"
     3 = "Women selected, but not interviewed"
     ;
  value F00015_
     1 = "Atlantica"
     2 = "Oriental"
     3 = "Central"
     4 = "Pacifica"
     5 = "Bogota"
     ;
  value F00016_
     1 = "Urban"
     2 = "Rural"
     ;
  value F00017_
     0 = "Capital, large city"
     1 = "City"
     2 = "Town"
     3 = "Countryside"
     4 = "Abroad"
     ;
  value F00018_
    95 = "Always"
    96 = "Visitor"
    97 = "Inconsistent"
    98 = "Don't know"
     ;
  value F00019_
     0 = "Capital, large city"
     1 = "City"
     2 = "Town"
     3 = "Countryside"
     4 = "Abroad"
     ;
  value F00020_
     0 = "No education"
     1 = "Primary"
     2 = "Secondary"
     3 = "Higher"
     ;
  value F00021_
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
  value F00022_
   996 = "On premises"
   997 = "Not dejure resident"
     ;
  value F00023_
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
  value F00024_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00025_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00026_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00027_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00028_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00029_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00030_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00031_
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
    36 = "Marble, ceramic tile"
    37 = "Rubber, vinyl"
    96 = "OTHER"
     ;
  value F00032_
    10 = "NATURAL"
    20 = "RUDIMENTARY"
    30 = "FINISHED"
    96 = "OTHER"
    97 = "Not dejure resident"
     ;
  value F00033_
    10 = "NATURAL"
    20 = "RUDIMENTARY"
    30 = "FINISHED"
    96 = "OTHER"
    97 = "Not dejure resident"
     ;
  value F00034_
    97 = "Inconsistent"
     ;
  value F00035_
     0 = "Capital, large city"
     1 = "Small city"
     2 = "Town"
     3 = "Countryside"
     ;
  value F00036_
     1 = "Usual resident"
     2 = "Visitor"
     ;
  value F00037_
     0 = "Abroad"
     1 = "Atlantica"
     2 = "Oriental"
     3 = "Central"
     4 = "Pacifica"
     5 = "Bogota"
    97 = "Not dejure resident"
     ;
  value F00038_
     0 = "Abroad"
     1 = "Urban"
     2 = "Rural"
     7 = "Not dejure resident"
     ;
  value F00039_
     0 = "Capital, large city"
     1 = "City"
     2 = "Town"
     3 = "Countryside"
     4 = "Abroad"
     7 = "Not dejure resident"
     ;
  value F00040_
     0 = "No education"
     1 = "Incomplete primary"
     2 = "Complete primary"
     3 = "Incomplete secondary"
     4 = "Complete secondary"
     5 = "Higher"
     ;
  value F00041_
     1 = "Head"
     2 = "Wife"
     3 = "Daughter"
     4 = "Daughter-in-law"
     5 = "Grand-daughter"
     6 = "Mother"
     7 = "Mother-in-law"
     8 = "Sister"
     9 = "Co-spouse"
    10 = "Other relative"
    11 = "Adopted/foster child"
    12 = "Not related"
    98 = "DK"
     ;
  value F00042_
     1 = "Male"
     2 = "Female"
     ;
  value F00043_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00044_
     0 = "Cannot read at all"
     1 = "Able to read only parts of sentence"
     2 = "Able to read whole sentence"
     3 = "No card with required language"
     ;
  value F00045_
     0 = "No"
     1 = "Yes"
     ;
  value F00046_
     0 = "Not at all"
     1 = "Less than once a week"
     2 = "At least once a week"
     3 = "Almost every day"
     ;
  value F00047_
     0 = "Not at all"
     1 = "Less than once a week"
     2 = "At least once a week"
     3 = "Almost every day"
     ;
  value F00048_
     0 = "Not at all"
     1 = "Less than once a week"
     2 = "At least once a week"
     3 = "Almost every day"
     ;
  value F00049_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00050_
     1 = "Electricity"
     2 = "LPG, natural gas"
     3 = "Biogas"
     4 = "Kerosene"
     5 = "Coal, lignite"
     6 = "Charcoal"
     7 = "Firewood, straw"
     8 = "Dung"
     9 = "Gasoline"
    10 = "Cocinol (gasoline for cooking)"
    95 = "Do not cook"
    96 = "Other"
     ;
  value F00051_
     0 = "Nowhere"
     1 = "In dwelling/yard/plot"
     2 = "Somewhere else"
     7 = "Not dejure resident"
     ;
  value F00052_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00053_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00054_
     0 = "No"
     1 = "Yes"
     7 = "Not dejure resident"
     ;
  value F00055_
     0 = "0 ppm (no iodine)"
     7 = "7 ppm"
    15 = "15 ppm"
    30 = "30 ppm"
   997 = "Not dejure resident"
     ;
  value F00056_
     0 = "No or unsure"
     1 = "Yes"
     ;
  value F00057_
   994 = "In menopause"
   995 = "Before last birth"
   996 = "Never menstruated"
   997 = "Inconsistent"
   998 = "Don't know"
     ;
  value F00058_
     0 = "No"
     1 = "Yes"
     ;
  value F00059_
     1 = "During her period"
     2 = "After period ended"
     3 = "Middle of the cycle"
     4 = "Before period begins"
     5 = "At any time"
     6 = "Other"
     8 = "Don't know"
     ;
  value F00060_
     6 = "6+"
     ;
  value F00061_
   996 = "Negative interval"
     ;
  value F00062_
     7 = "Month - exact date"
     8 = "None - date placed"
     ;
  value F00063_
     1 = "Then"
     2 = "Later"
     3 = "Not at all"
     ;
  value F00064_
   994 = "In menopause"
   995 = "Before last birth"
   996 = "Never menstruated"
   997 = "Inconsistent"
   998 = "Don't know"
     ;
  value F00065_
     0 = "No flag"
     1 = "N > int. since birth"
     2 = "N + amen. > interval"
     3 = "N, but per. not ret."
     4 = "95, but no birth"
     5 = "95, but per.returned"
     6 = "96, but per.returned"
     7 = "N, last per. in preg"
     8 = "96, had children"
     9 = "N, per.bef.last birt"
     ;
  value F00066_
     0 = "No"
     1 = "Yes"
     ;
  value F00067_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00068_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00069_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00070_
     1 = "Month and year"
     2 = "From calendar"
     5 = "Year"
     7 = "Month"
     8 = "None"
     ;
  value F00071_
    97 = "Inconsistent"
    98 = "Don't know"
     ;
  value F00072_
     0 = "No"
     1 = "Yes"
     ;
  value F00073_
     0 = "No prior child"
     ;
  value F00074_
     0 = "No"
     1 = "Yes"
     ;
  value F00075_
     0 = "No"
     1 = "Yes"
     ;
  value F00076_
    97 = "Inconsistent"
    98 = "Don't know"
     ;
  value F00077_
  9997 = "Inconsistent"
  9998 = "Don't know"
     ;
  value F00078_
  9997 = "Inconsistent"
  9998 = "Don't know"
     ;
  value F00079_
     1 = "Month and year"
     2 = "From calendar"
     5 = "Year"
     7 = "Month"
     8 = "None"
     ;
  value F00080_
     4 = "4+"
     5 = "Never used"
     ;
  value F00081_
     0 = "Not using"
     1 = "Pill"
     2 = "IUD"
     3 = "Injections"
     4 = "Diaphragm"
     5 = "Condom"
     6 = "Female Sterilization"
     7 = "Male Sterilization"
     8 = "Periodic Abstinence"
     9 = "Withdrawal"
    10 = "Other"
    11 = "Norplant"
    12 = "Abstinence"
    13 = "Lactational amenorrhea"
    14 = "Female condom"
    15 = "Foam or jelly"
    17 = "Specific method 1"
    18 = "Specific method 2"
    19 = "Specific method 3"
    20 = "Specific method 4"
     ;
  value F00082_
     0 = "No method"
     1 = "Folkloric method"
     2 = "Traditional method"
     3 = "Modern method"
     ;
  value F00083_
     1 = "Month and year"
     5 = "Year - m imp, a calc"
     7 = "Month - date placed"
     8 = "None - date placed"
     9 = "From calendar"
     ;
  value F00084_
     1 = "<2"
     2 = "2-3"
     3 = "4-5"
     4 = "6-7"
     5 = "8-9"
     6 = "10+"
     ;
  value F00085_
     1 = "<25"
     2 = "25-29"
     3 = "30-34"
     4 = "35-39"
     5 = "40-44"
     6 = "45-49"
     ;
  value F00086_
     0 = "Single, before marriage"
     1 = "0-4"
     2 = "5-9"
     3 = "10-14"
     4 = "15-19"
     5 = "20-24"
     6 = "25+"
     ;
  value F00087_
     5 = "5+"
     ;
  value F00088_
    10 = "PUBLIC"
    11 = "Govt Hospital"
    12 = "Govt healt/post center"
    13 = "Mobil clinic"
    14 = "Fieldworker"
    20 = "PRIVATE MEDICAL"
    21 = "Private hospital/clinic"
    22 = "EPS/ARS/Cajas compensacion"
    23 = "Private doctor"
    24 = "Profamilia"
    25 = "Pharmacy"
    30 = "OTHER PRIVATE"
    96 = "OTHER"
    98 = "DK"
     ;
  value F00089_
     1 = "Govt Clinical/Pharm"
     2 = "Govt Home/Comm deliv"
     3 = "NGO"
     4 = "Private Clin/Deliv"
     5 = "Private Pharmacy"
     6 = "Shop, church, friend"
     7 = "Other"
     8 = "Don't know"
     ;
  value F00090_
    95 = "All cal. {A core}"
    96 = "96+ {B core}"
   997 = "Inconsistent"
   998 = "Don't know"
     ;
  value F00091_
     1 = "Pill"
     2 = "IUD"
     3 = "Injections"
     4 = "Diaphragm/Foam/Jelly"
     5 = "Condom"
     6 = "Female Sterilization"
     7 = "Male Sterilization"
     8 = "Periodic Abstinence"
     9 = "Withdrawal"
    10 = "Other"
    11 = "Norplant"
    12 = "Abstinence"
    13 = "Lactational Amenorrhea"
    14 = "Female condom"
    15 = "Foam, jelly"
     ;
  value F00092_
     1 = "Became pregnant while using"
     2 = "Wanted to become pregnant"
     3 = "Husband disapproved"
     4 = "Side effects"
     5 = "Health concerns"
     6 = "Access, availability"
     7 = "Wanted more effective method"
     8 = "Inconvenient to use"
     9 = "Infrequent sex, husband away"
    10 = "Cost"
    11 = "Fatalistic"
    12 = "Difficult to get pregnat, menopausal"
    13 = "Marital dissolution/ separation"
    14 = "Other"
    98 = "Don't know"
     ;
  value F00093_
     1 = "Currently using"
     2 = "Used since last birth"
     3 = "Used before last birth"
     4 = "Never used"
     ;
  value F00094_
     1 = "In next 12 months"
     2 = "Use later"
     3 = "Unsure about timing"
     4 = "Unsure about use"
     5 = "Does not intend"
     6 = "Never had sex"
     ;
  value F00095_
     1 = "Pill"
     2 = "IUD"
     3 = "Injections"
     4 = "Diaphragm"
     5 = "Condom"
     6 = "Female Sterilization"
     7 = "Male Sterilization"
     8 = "Periodic Abstinence"
     9 = "Withdrawal"
    10 = "Other"
    11 = "Norplant"
    12 = "Abstinence"
    13 = "Lactational amenorrhea"
    14 = "Female condom"
    15 = "Foam or jelly"
    17 = "Specific method 1"
    18 = "Specific method 2"
    19 = "Specific method 3"
    20 = "Specific method 4"
    98 = "Don't know"
     ;
  value F00096_
     1 = "Using modern method"
     2 = "Using traditional method"
     3 = "Non-user intend to"
     4 = "Does not intend to"
     5 = "Never had sex"
     ;
  value F00097_
     1 = "Wanted then"
     2 = "Wanted later"
     3 = "Wanted no more"
     ;
  value F00098_
    11 = "Not married"
    20 = "FERTILITY-RELATED"
    21 = "Not having sex"
    22 = "Infrequent sex"
    23 = "Menopausal"
    24 = "Subfecund, infecund"
    25 = "Postpartum, breastfeeding"
    26 = "Wants more children"
    27 = "Pregnant"
    28 = "Hysterectomy"
    30 = "OPPOSITION TO USE"
    31 = "Respondent opposed"
    32 = "Husband opposed"
    33 = "Others opposed"
    34 = "Religious prohibition"
    40 = "LACK OF KNOWLEDGE"
    41 = "Knows no method"
    42 = "Knows no source"
    50 = "METHOD-RELATED"
    51 = "Health concerns"
    52 = "Fear of side effects"
    53 = "Lack of access/ too far"
    54 = "Costs too much"
    55 = "Inconvenient to use"
    56 = "Interferes with body's normal processes"
    96 = "Other"
    98 = "DK"
     ;
  value F00099_
    11 = "Not married"
    20 = "FERTILITY-RELATED"
    22 = "Infrequent sex/ no sex"
    23 = "Menopausal, hysterectomy"
    24 = "Subfecund, infecund"
    26 = "Wants more children"
    28 = "Partner infecund"
    30 = "OPPOSITION TO USE"
    31 = "Respondent opposed"
    32 = "Husband opposed"
    33 = "Others opposed"
    34 = "Religious prohibition"
    40 = "LACK OF KNOWLEDGE"
    41 = "Knows no method"
    42 = "Knows no source"
    50 = "METHOD-RELATED"
    51 = "Health concerns"
    52 = "Fear of side effects"
    53 = "Lack of access/too far"
    54 = "Costs too much"
    55 = "Inconvenient to use"
    56 = "Interferes with body's normal processes"
    96 = "Other"
    98 = "DK"
     ;
  value F00100_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00101_
    10 = "PUBLIC"
    20 = "PRIVATE MEDICAL"
    30 = "PRIVATE OTHER"
    96 = "OTHER"
    98 = "DK"
     ;
  value F00102_
     1 = "Govt Clinical/Pharm"
     2 = "Govt Home/Comm deliv"
     3 = "NGO"
     4 = "Private Clin/Deliv"
     5 = "Private Pharmacy"
     6 = "Shop, church, friend"
     7 = "Other"
     8 = "Don't know"
     ;
  value F00103_
     0 = "No"
     1 = "Yes"
     ;
  value F00104_
     0 = "No"
     1 = "Yes"
     ;
  value F00105_
     0 = "No"
     1 = "Yes"
     ;
  value F00106_
     0 = "No"
     1 = "Yes"
     ;
  value F00107_
     0 = "No"
     1 = "Yes"
     ;
  value F00108_
     0 = "No"
     1 = "Yes"
     ;
  value F00109_
     0 = "No"
     1 = "Government hospital"
     ;
  value F00110_
     0 = "No"
     1 = "Government health center"
     ;
  value F00111_
     0 = "No"
     1 = "Govt. health post"
     ;
  value F00112_
     0 = "No"
     1 = "Public mobile clinic"
     ;
  value F00113_
     0 = "No"
     1 = "Community health wrk"
     ;
  value F00114_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00115_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00116_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00117_
     0 = "No"
     1 = "Other public sector"
     ;
  value F00118_
     0 = "No"
     1 = "Private hospital/clinic"
     ;
  value F00119_
     0 = "No"
     1 = "Private pharmacy"
     ;
  value F00120_
     0 = "No"
     1 = "Private doctor"
     ;
  value F00121_
     0 = "No"
     1 = "Private mobile clin."
     ;
  value F00122_
     0 = "No"
     1 = "Community health wrk"
     ;
  value F00123_
     0 = "No"
     1 = "EPS/ARS/Caja compensacion"
     ;
  value F00124_
     0 = "No"
     1 = "Profamilia"
     ;
  value F00125_
     0 = "No"
     1 = "CS med. priv. sector"
     ;
  value F00126_
     0 = "No"
     1 = "Oth med. priv. sect."
     ;
  value F00127_
     0 = "No"
     1 = "Shop"
     ;
  value F00128_
     0 = "No"
     1 = "Traditional pract."
     ;
  value F00129_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00130_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00131_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00132_
     0 = "No"
     1 = "Other"
     ;
  value F00133_
     0 = "No: knows a source"
     1 = "Yes: knows no source"
     ;
  value F00134_
     0 = "No"
     1 = "Yes: knows some source"
     ;
  value F00135_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00136_
     0 = "No"
     1 = "Yes"
     ;
  value F00137_
     0 = "No"
     1 = "Yes"
     ;
  value F00138_
     0 = "No"
     1 = "Yes"
     ;
  value F00139_
     0 = "No"
     1 = "Yes"
     ;
  value F00140_
     0 = "No"
     1 = "Yes"
     ;
  value F00141_
    10 = "PUBLIC"
    20 = "PRIVATE MEDICAL"
    30 = "OTHER PRIVATE"
    96 = "OTHER"
    98 = "DK"
     ;
  value F00142_
     0 = "No"
     1 = "Not married"
     ;
  value F00143_
     0 = "No"
     1 = "Not having sex"
     ;
  value F00144_
     0 = "No"
     1 = "Infrequent sex"
     ;
  value F00145_
     0 = "No"
     1 = "Menopausal/hysterectomy"
     ;
  value F00146_
     0 = "No"
     1 = "Subfecund/infecund"
     ;
  value F00147_
     0 = "No"
     1 = "Postpartum amenorrheic"
     ;
  value F00148_
     0 = "No"
     1 = "Breastfeeding"
     ;
  value F00149_
     0 = "No"
     1 = "Fatalistic"
     ;
  value F00150_
     0 = "No"
     1 = "Respondent opposed"
     ;
  value F00151_
     0 = "No"
     1 = "Husband/partner opposed"
     ;
  value F00152_
     0 = "No"
     1 = "Others opposed"
     ;
  value F00153_
     0 = "No"
     1 = "Religious prohibition"
     ;
  value F00154_
     0 = "No"
     1 = "Knows no method"
     ;
  value F00155_
     0 = "No"
     1 = "Knows no source"
     ;
  value F00156_
     0 = "No"
     1 = "Health concerns"
     ;
  value F00157_
     0 = "No"
     1 = "Fear of side effects"
     ;
  value F00158_
     0 = "No"
     1 = "Lack of access/too far"
     ;
  value F00159_
     0 = "No"
     1 = "Costs too much"
     ;
  value F00160_
     0 = "No"
     1 = "Inconvenient to use"
     ;
  value F00161_
     0 = "No"
     1 = "Interferes with body process"
     ;
  value F00162_
     0 = "No"
     1 = "Partner infecund"
     ;
  value F00163_
     0 = "No"
     1 = "CS"
     ;
  value F00164_
     0 = "No"
     1 = "CS"
     ;
  value F00165_
     0 = "No"
     1 = "Other"
     ;
  value F00166_
     0 = "No"
     1 = "Dont know"
     ;
  value F00167_
     0 = "No"
     1 = "Yes"
     ;
  value F00168_
     0 = "No"
     1 = "Yes"
     ;
  value F00169_
     0 = "No"
     1 = "Yes"
     ;
  value F00170_
     0 = "No"
     1 = "Yes"
     ;
  value F00171_
    96 = "On demand"
     ;
  value F00172_
    96 = "On demand"
     ;
  value F00173_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00174_
     0 = "Never heard of"
     1 = "Used ORS"
     2 = "Heard of ORS"
     ;
  value F00175_
     0 = "Immediately"
     ;
  value F00176_
  9998 = "Flagged cases"
     ;
  value F00177_
  9998 = "Flagged cases"
     ;
  value F00178_
 99998 = "Flagged cases"
     ;
  value F00179_
 99998 = "Flagged cases"
     ;
  value F00180_
 99998 = "Flagged cases"
     ;
  value F00181_
 99998 = "Flagged cases"
     ;
  value F00182_
  9998 = "Flagged cases"
     ;
  value F00183_
  9998 = "Flagged cases"
     ;
  value F00184_
  9998 = "Flagged cases"
     ;
  value F00185_
     0 = "Measured"
     3 = "Not present"
     4 = "Refused"
     6 = "Other"
     ;
  value F00186_
     1 = "Under age 18"
     2 = "Age 18 or older"
     ;
  value F00187_
     0 = "Not in household"
     ;
  value F00188_
     1 = "Granted"
     2 = "Refused"
     ;
  value F00189_
     0 = "No/don't know"
     1 = "Yes"
     ;
  value F00190_
     0 = "Measured"
     3 = "Not present"
     4 = "Refused"
     6 = "Other"
     ;
  value F00191_
     1 = "Severe"
     2 = "Moderate"
     3 = "Mild"
     4 = "Not anemic"
     ;
  value F00192_
     0 = "No"
     1 = "Yes"
     ;
  value F00193_
     0 = "No"
     1 = "Yes"
     ;
  value F00194_
     0 = "No"
     1 = "All children"
     2 = "Some children"
     3 = "No bednet in HH"
     ;
  value F00195_
     0 = "No"
     1 = "Yes"
     ;
  value F00196_
     0 = "No"
     1 = "Yes"
     2 = "Never prepared meal"
     ;
  value F00197_
     0 = "No"
     1 = "Yes"
     ;
  value F00198_
     0 = "No"
     1 = "Yes"
     ;
  value F00199_
     0 = "No"
     1 = "Yes"
     ;
  value F00200_
     0 = "No"
     1 = "Yes"
     ;
  value F00201_
     0 = "No"
     1 = "Yes"
     ;
  value F00202_
     0 = "No"
     1 = "Yes"
     ;
  value F00203_
     0 = "No"
     1 = "Yes"
     ;
  value F00204_
     0 = "No"
     1 = "Yes, smokes nothing"
     ;
  value F00205_
     1 = "Always use toilet/latrine"
     2 = "Throw in toilet/latrine"
     3 = "Throw outside the dwelling"
     4 = "Throw outside the yard"
     5 = "Bury in the yard"
     6 = "Rinse away"
     7 = "Use disposable diapers"
     8 = "Use washable diapers"
     9 = "Not disposed of"
    10 = "Burn in yard"
    11 = "Do nothing, leave on the floor"
    12 = "Throw in trash"
    13 = "Throw in the sink"
    14 = "Throw river, creek"
    96 = "Other"
     ;
  value F00206_
     0 = "No"
     1 = "Yes"
     2 = "Depends"
     8 = "DK"
     ;
  value F00207_
     0 = "Not a big problem"
     1 = "A big problem"
     2 = "Small problem"
     ;
  value F00208_
     0 = "Not a big problem"
     1 = "A big problem"
     2 = "Small problem"
     ;
  value F00209_
     0 = "Not a big problem"
     1 = "A big problem"
     2 = "Small problem"
     ;
  value F00210_
     0 = "Not a big problem"
     1 = "A big problem"
     2 = "Small problem"
     ;
  value F00211_
     0 = "Not a big problem"
     1 = "A big problem"
     2 = "Small problem"
     ;
  value F00212_
     0 = "Not a big problem"
     1 = "A big problem"
     2 = "Small problem"
     ;
  value F00213_
     0 = "Not a big problem"
     1 = "A big problem"
     2 = "Small problem"
     ;
  value F00214_
     0 = "See specific questions"
     1 = "Only last birth"
     2 = "All columns"
     ;
  value F00215_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00216_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00217_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00218_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00219_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00220_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00221_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00222_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00223_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00224_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00225_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00226_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00227_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00228_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00229_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00230_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00231_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00232_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00233_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00234_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00235_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00236_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00237_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00238_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00239_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00240_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00241_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00242_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00243_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00244_
     7 = "7+"
     8 = "DK"
     ;
  value F00245_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00246_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00247_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00248_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00249_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00250_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00251_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00252_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00253_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00254_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00255_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00256_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00257_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00258_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00259_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00260_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00261_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00262_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00263_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00264_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00265_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00266_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00267_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00268_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00269_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00270_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00271_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00272_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00273_
     0 = "Never married"
     1 = "Married"
     2 = "Living together"
     3 = "Widowed"
     4 = "Divorced"
     5 = "Not living together"
     ;
  value F00274_
     0 = "Never married"
     1 = "Currently married"
     2 = "Formerly married"
     ;
  value F00275_
     1 = "Once"
     2 = "More than once"
     ;
  value F00276_
     1 = "Living with her"
     2 = "Staying elsewhere"
     ;
  value F00277_
     0 = "No other wives"
    98 = "Don't know"
     ;
  value F00278_
    98 = "Don't know"
     ;
  value F00279_
     1 = "Month and year"
     2 = "Month and age -y imp"
     3 = "Year and age - m imp"
     5 = "Year - a, m imp"
     6 = "Age - y, m imp"
     7 = "Month - a, y imp"
     8 = "None - all imp"
     ;
  value F00280_
     0 = "Never married"
     1 = "0-4"
     2 = "5-9"
     3 = "10-14"
     4 = "15-19"
     5 = "20-24"
     6 = "25-29"
     7 = "30+"
     ;
  value F00281_
     0 = "Not had intercourse"
    96 = "At first union"
    97 = "Inconsistent"
     ;
  value F00282_
   100 = "<1 day ago"
   101 = "Days: 1"
   201 = "Weeks: 1"
   301 = "Months: 1"
   401 = "Years: 1"
   995 = "Within last 4 weeks"
   996 = "Before last birth"
   997 = "Inconsistent"
   998 = "Don't know"
     ;
  value F00283_
    31 = "31+ days"
    95 = "Within last 4 weeks"
    96 = "Before last birth"
    97 = "Inconsistent"
    98 = "Don't know"
     ;
  value F00284_
   100 = "<1 day ago"
   101 = "Days: 1"
   201 = "Weeks: 1"
   301 = "Months: 1"
   401 = "Years: 1"
   995 = "Within last 4 weeks"
   996 = "Before last birth"
   997 = "Inconsistent"
   998 = "Don't know"
     ;
  value F00285_
     0 = "No flag"
     1 = "N > int. since birth"
     2 = "N + abst. > interval"
     3 = "N, but sex not res."
     4 = "96, but no birth"
     5 = "96, but curr.preg."
     6 = "96, but resumed sex"
     7 = "N, last sex bef preg"
     8 = "N, inconsis 4 weeks"
     9 = "N, sex bef last birt"
     ;
  value F00286_
     0 = "Not had intercourse"
    97 = "Inconsistent"
    98 = "Don't know"
     ;
  value F00287_
     0 = "No flag"
     1 = "After interview"
     2 = "After concep >= 1 yr"
     3 = "After concep < 1 yr"
     4 = "At marr, never marr"
     5 = "At marr,after concep"
     6 = "After marriage"
     ;
  value F00288_
     0 = "No"
     1 = "Formerly married"
     2 = "Lived with a man"
     ;
  value F00289_
     0 = "Never had intercourse"
     1 = "Active in last 4 weeks"
     2 = "Not active in last 4 weeks - postpartum abst."
     3 = "Not active in last 4 weeks - not postpartum abst."
     ;
  value F00290_
    60 = "60+"
    96 = "Before last birth"
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00291_
     1 = "Have another"
     2 = "Undecided"
     3 = "No more"
     4 = "Sterilized"
     5 = "Declared infecund"
     6 = "Never had sex"
     ;
  value F00292_
   993 = "After marriage"
   994 = "Soon, now"
   996 = "Other, Non-numeric"
   997 = "Inconsistent"
   998 = "Don't know"
     ;
  value F00293_
     0 = "<12 months"
     1 = "1 year"
     2 = "2 years"
     3 = "3 years"
     4 = "4 years"
     5 = "5 years"
     6 = "6+ years"
     7 = "Non-numeric"
     8 = "Don't know"
     ;
  value F00294_
     1 = "Wants within 2 years"
     2 = "Wants after 2+ years"
     3 = "Wants, unsure timing"
     4 = "Undecided"
     5 = "Wants no more"
     6 = "Sterilized"
     7 = "Declared infecund"
     8 = "Never had sex"
     ;
  value F00295_
     0 = "Disapproves"
     1 = "Approves"
     8 = "Don't know"
     ;
  value F00296_
     0 = "Never"
     1 = "Once or twice"
     2 = "More often"
     ;
  value F00297_
     0 = "Disapproves"
     1 = "Approves"
     8 = "Don't know"
     ;
  value F00298_
    96 = "Non-numeric response"
    98 = "DK"
     ;
  value F00299_
     6 = "6+"
     7 = "Non-numeric response"
     ;
  value F00300_
   993 = "After marriage"
   994 = "Soon/now"
   995 = "Can't get pregnant"
   996 = "Other"
   998 = "DK "
     ;
  value F00301_
     1 = "Both want same"
     2 = "Husband wants more"
     3 = "Husband wants fewer"
     8 = "DK"
     ;
  value F00302_
     0 = "Fecund"
     1 = "Pregnant"
     2 = "Amenorrheic"
     3 = "Infecund, menopausal"
     ;
  value F00303_
     0 = "Never had sex"
     1 = "Unmet need to space"
     2 = "Unmet need to limit"
     3 = "Using to space"
     4 = "Using to limit"
     5 = "Spacing failure"
     6 = "Limiting failure"
     7 = "Desire birth < 2 yrs"
     8 = "No sex, want to wait"
     9 = "Infecund, menopausal"
     ;
  value F00304_
     0 = "Fecund"
     1 = "Pregnant"
     2 = "Amenorrheic"
     3 = "Infecund, menopausal"
     ;
  value F00305_
     0 = "Never had sex"
     1 = "Unmet need to space"
     2 = "Unmet need to limit"
     3 = "Using to space"
     4 = "Using to limit"
     5 = "Spacing failure"
     6 = "Limiting failure"
     7 = "Desire birth < 2 yrs"
     8 = "No sex, want to wait"
     9 = "Infecund, menopausal"
     ;
  value F00306_
    96 = "Other"
    98 = "DK"
     ;
  value F00307_
    96 = "Other"
    98 = "DK"
     ;
  value F00308_
    96 = "Other"
    98 = "DK"
     ;
  value F00309_
     0 = "No"
     1 = "Yes"
     ;
  value F00310_
     0 = "No"
     1 = "Yes"
     ;
  value F00311_
     0 = "No"
     1 = "Yes"
     ;
  value F00312_
     0 = "No"
     1 = "Yes"
     ;
  value F00313_
     0 = "No"
     1 = "Yes"
     ;
  value F00314_
     0 = "No"
     1 = "Yes"
     ;
  value F00315_
     0 = "No"
     1 = "Yes"
     ;
  value F00316_
     0 = "No"
     1 = "Yes"
     ;
  value F00317_
     0 = "No"
     1 = "Yes"
     ;
  value F00318_
     0 = "No"
     1 = "Yes"
     ;
  value F00319_
     0 = "No"
     1 = "Yes"
     ;
  value F00320_
     0 = "No"
     1 = "Yes"
     ;
  value F00321_
     0 = "No"
     1 = "Yes"
     ;
  value F00322_
     0 = "No"
     1 = "Yes"
     ;
  value F00323_
     0 = "No"
     1 = "Yes"
     ;
  value F00324_
     0 = "No"
     1 = "Yes"
     ;
  value F00325_
     1 = "Big problem"
     2 = "Small problem"
     3 = "No problem"
     4 = "Says she can't get pregnant /not having sex"
     ;
  value F00326_
     1 = "Mainly respondent"
     2 = "Mainly husband, partner"
     3 = "Joint decision"
     6 = "Other"
     ;
  value F00327_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00328_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00329_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00330_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00331_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00332_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00333_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00334_
     0 = "No education"
     1 = "Primary"
     2 = "Secondary"
     3 = "Higher"
     8 = "Don't know"
     ;
  value F00335_
    98 = "Don't know"
     ;
  value F00336_
     0 = "Did not work"
     1 = "Prof., Tech., Manag."
     2 = "Clerical"
     3 = "Sales"
     4 = "Agric-self employed"
     5 = "Agric-employee"
     6 = "Household & domestic"
     7 = "Services"
     8 = "Skilled manual"
     9 = "Unskilled manual"
    98 = "Don't know"
     ;
  value F00337_
     0 = "No"
     1 = "Yes"
     ;
  value F00338_
    97 = "Inconsistent"
    98 = "Don't know"
     ;
  value F00339_
     0 = "Not working"
     ;
  value F00340_
     0 = "Not working"
     1 = "Prof., Tech., Manag."
     2 = "Clerical"
     3 = "Sales"
     4 = "Agric-self employed"
     5 = "Agric-employee"
     6 = "Household & domestic"
     7 = "Services"
     8 = "Skilled manual"
     9 = "Unskilled manual"
    98 = "Don't know"
     ;
  value F00341_
     1 = "For family member"
     2 = "For someone else"
     3 = "Self-employed"
     ;
  value F00342_
     1 = "At home"
     2 = "Away"
     ;
  value F00343_
     0 = "No education"
     1 = "Incomplete primary"
     2 = "Complete primary"
     3 = "Incomplete secondary"
     4 = "Complete secondary"
     5 = "Higher"
     8 = "Don't know"
     ;
  value F00344_
    96 = "96+"
    98 = "DK"
     ;
  value F00345_
     0 = "No"
     1 = "In the past year"
     2 = "Currently working"
     ;
  value F00346_
     1 = "All year"
     2 = "Seasonal"
     3 = "Occasional"
     ;
  value F00347_
     1 = "Respondent alone"
     2 = "Respondent and husband/partner"
     3 = "Respondent and other person"
     4 = "Husband/partner alone"
     5 = "Someone else"
     ;
  value F00348_
     0 = "Own land"
     1 = "Family land"
     2 = "Someone else's land"
     3 = "Rented land"
     8 = "Don't know"
     ;
  value F00349_
     0 = "Not paid"
     1 = "Cash only"
     2 = "Cash and kind"
     3 = "In kind only"
     ;
  value F00350_
     0 = "None, income is saved"
     1 = "Almost none"
     2 = "Less than half"
     3 = "About half"
     4 = "More than half"
     5 = "All"
     ;
  value F00351_
     1 = "Respondent alone"
     2 = "Respondent and husband/partner"
     3 = "Respondent and other person"
     4 = "Husband/partner alone"
     5 = "Someone else"
     6 = "Decision not made"
     ;
  value F00352_
     1 = "Respondent alone"
     2 = "Respondent and husband/partner"
     3 = "Respondent and other person"
     4 = "Husband/partner alone"
     5 = "Someone else"
     6 = "Decision not made"
     ;
  value F00353_
     1 = "Respondent alone"
     2 = "Respondent and husband/partner"
     3 = "Respondent and other person"
     4 = "Husband/partner alone"
     5 = "Someone else"
     6 = "Decision not made"
     ;
  value F00354_
     1 = "Respondent alone"
     2 = "Respondent and husband/partner"
     3 = "Respondent and other person"
     4 = "Husband/partner alone"
     5 = "Someone else"
     6 = "Decision not made"
     ;
  value F00355_
     1 = "Respondent alone"
     2 = "Respondent and husband/partner"
     3 = "Respondent and other person"
     4 = "Husband/partner alone"
     5 = "Someone else"
     6 = "Decision not made"
     ;
  value F00356_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00357_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00358_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00359_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00360_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00361_
     0 = "Single birth"
     1 = "1st of multiple"
     2 = "2nd of multiple"
     3 = "3rd of multiple"
     4 = "4th of multiple"
     5 = "5th of multiple"
     ;
  value F00362_
     1 = "Male"
     2 = "Female"
     ;
  value F00363_
     0 = "No"
     1 = "Yes"
     ;
  value F00364_
   997 = "Inconsistent"
   998 = "Don't know"
     ;
  value F00365_
     0 = "Respondent"
     1 = "Father"
     2 = "Other relative"
     3 = "Someone else"
     4 = "Lives elsewhere"
     ;
  value F00366_
     1 = "Month and year"
     2 = "Month and age -y imp"
     3 = "Year and age - m imp"
     4 = "Y & age - y ignored"
     5 = "Year - a, m imp"
     6 = "Age - y, m imp"
     7 = "Month - a, y imp"
     8 = "None - all imp"
     ;
  value F00367_
     0 = "No flag"
     1 = "> interview"
     2 = "< breastfeeding"
     3 = "< age supplemented"
     4 = "< first breastfed"
     5 = "< last vaccination"
     6 = "Outside range"
     7 = "Imputed, units given"
     8 = "Imputed, no units"
     ;
  value F00368_
     0 = "No"
     1 = "Yes"
     ;
  value F00369_
     0 = "Not listed in household"
     ;
  value F00370_
     0 = "Received no inject."
     7 = "7+"
     8 = "Don't know"
     ;
  value F00371_
     0 = "No"
     1 = "Yes: doctor"
     ;
  value F00372_
     0 = "No"
     1 = "Yes: nurse/midwife"
     ;
  value F00373_
     0 = "No"
     1 = "Yes: auxil. midwife"
     ;
  value F00374_
     0 = "No"
     1 = "Yes: Auxiliary nurse"
     ;
  value F00375_
     0 = "No"
     1 = "Yes: CS health prof."
     ;
  value F00376_
     0 = "No"
     1 = "Yes: trained birth A"
     ;
  value F00377_
     0 = "No"
     1 = "Yes: traditional birth attendant"
     ;
  value F00378_
     0 = "No"
     1 = "Yes: relative"
     ;
  value F00379_
     0 = "No"
     1 = "Yes: CS other person"
     ;
  value F00380_
     0 = "No"
     1 = "Yes: CS other person"
     ;
  value F00381_
     0 = "No"
     1 = "Yes: other responses"
     ;
  value F00382_
     0 = "No"
     1 = "Yes: CS other"
     ;
  value F00383_
     0 = "No"
     1 = "Yes: CS other"
     ;
  value F00384_
     0 = "No: some care"
     1 = "Yes: no one"
     ;
  value F00385_
     0 = "No"
     1 = "Yes: doctor"
     ;
  value F00386_
     0 = "No"
     1 = "Yes: nurse/midwife"
     ;
  value F00387_
     0 = "No"
     1 = "Yes: auxil. midwife"
     ;
  value F00388_
     0 = "No"
     1 = "Yes: Auxiliary nurse"
     ;
  value F00389_
     0 = "No"
     1 = "Yes: CS health prof."
     ;
  value F00390_
     0 = "No"
     1 = "Yes: trained birth A"
     ;
  value F00391_
     0 = "No"
     1 = "Yes: traditional birth attendant"
     ;
  value F00392_
     0 = "No"
     1 = "Yes: relative,friend"
     ;
  value F00393_
     0 = "No"
     1 = "Yes: CS other person"
     ;
  value F00394_
     0 = "No"
     1 = "Yes: CS other person"
     ;
  value F00395_
     0 = "No"
     1 = "Yes: other responses"
     ;
  value F00396_
     0 = "No"
     1 = "Yes: CS other"
     ;
  value F00397_
     0 = "No"
     1 = "Yes: CS other"
     ;
  value F00398_
     0 = "No: some assistance"
     1 = "Yes: no one"
     ;
  value F00399_
    94 = "Never breastfed"
    95 = "Still breastfeeding"
    96 = "Breastfed until died"
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00400_
    94 = "Never breastfed"
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00401_
    96 = "Period not returned"
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00402_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00403_
    96 = "Still abstaining"
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00404_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00405_
     1 = "Then"
     2 = "Later"
     3 = "No more"
     ;
  value F00406_
   998 = "DK "
     ;
  value F00407_
    98 = "DK"
     ;
  value F00408_
     0 = "No antenatal visits"
    98 = "DK"
     ;
  value F00409_
    10 = "HOMES"
    11 = "Respondent's home"
    20 = "PUBLIC"
    21 = "Govt Hospital"
    22 = "Govt healt/post center"
    23 = "Mobil clinic"
    24 = "Fieldworker"
    30 = "PRIVATE MEDICAL"
    31 = "Private hospital/clinic"
    32 = "EPS/ARS/Cajas compensacion"
    33 = "Private doctor"
    34 = "Profamilia"
    96 = "OTHER"
     ;
  value F00410_
     0 = "No"
     1 = "Yes"
     ;
  value F00411_
     1 = "Very large"
     2 = "Larger than average"
     3 = "Average"
     4 = "Smaller than average"
     5 = "Very small"
     8 = "DK"
     ;
  value F00412_
  9996 = "Not weighed at birth"
  9998 = "DK  "
     ;
  value F00413_
     0 = "Not weighed"
     1 = "From card"
     2 = "From recall"
     9 = "Special answers"
     ;
  value F00414_
     0 = "No flag"
     1 = "> interval"
     2 = "> interval by 1 mnth"
     3 = "> age at death"
     4 = "During preg in cal."
     ;
  value F00415_
     0 = "No flag"
     1 = "> interval"
     2 = "> interval by 1 mnth"
     4 = "During preg in cal."
     ;
  value F00416_
     0 = "No flag"
     1 = "> interval"
     2 = "> interval by 1 mnth"
     4 = "During preg in cal."
     ;
  value F00417_
     0 = "Immediately"
   101 = "Hours: 1"
   201 = "Days: 1"
     ;
  value F00418_
    96 = "On demand"
     ;
  value F00419_
    96 = "On demand"
     ;
  value F00420_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00421_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00422_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00423_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00424_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00425_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00426_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00427_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00428_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00429_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00430_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00431_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00432_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00433_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00434_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00435_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00436_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00437_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00438_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00439_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00440_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00441_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00442_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00443_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00444_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00445_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00446_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00447_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00448_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00449_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00450_
     0 = "None"
     7 = "7+"
     8 = "DK"
     ;
  value F00451_
     7 = "7+"
     8 = "DK"
     ;
  value F00452_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00453_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00454_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00455_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00456_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00457_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00458_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00459_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00460_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00461_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00462_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00463_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00464_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00465_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00466_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00467_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00468_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00469_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00470_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00471_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00472_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00473_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00474_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00475_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00476_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00477_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00478_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00479_
     0 = "No"
     7 = "7+"
     8 = "DK"
     ;
  value F00480_
    98 = "Don't know"
     ;
  value F00481_
     0 = "No"
     1 = "Yes"
     ;
  value F00482_
     0 = "No"
     1 = "Yes"
     ;
  value F00483_
     0 = "No"
     1 = "Yes"
     ;
  value F00484_
     0 = "No"
     1 = "Yes"
     ;
  value F00485_
     0 = "No"
     1 = "Yes"
     ;
  value F00486_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00487_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00488_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00489_
   998 = "Don't know"
     ;
  value F00490_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00491_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00492_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00493_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00494_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00495_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00496_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00497_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00498_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00499_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00500_
     0 = "No"
     1 = "Yes, took no drug"
     8 = "Don't know"
     ;
  value F00501_
     0 = "No"
     1 = "Yes"
     ;
  value F00502_
   100 = "Same day"
   101 = "1 day"
   201 = "1 week"
   998 = "Don't know"
     ;
  value F00503_
    10 = "HEALTH PROFESSIONAL"
    11 = "Doctor"
    12 = "Nurse/midwife"
    13 = "Auxiliary midwife"
    14 = "Auxiliary nurse"
    20 = "OTHER PERSON"
    21 = "Traditional birth attendant"
    96 = "Other"
     ;
  value F00504_
    20 = "PUBLIC"
    21 = "Govt Hospital"
    22 = "Govt healt/post center"
    23 = "Mobil clinic"
    24 = "Fieldworker"
    30 = "PRIVATE MEDICAL"
    31 = "Private hospital/clinic"
    32 = "EPS/ARS/Cajas compensacion"
    33 = "Private doctor"
    34 = "Profamilia"
    96 = "OTHER"
     ;
  value F00505_
     0 = "No"
     1 = "Yes"
     ;
  value F00506_
     0 = "No"
     1 = "Yes"
     ;
  value F00507_
     0 = "No"
     1 = "Yes"
     ;
  value F00508_
     0 = "No"
     1 = "Yes"
     ;
  value F00509_
     0 = "No"
     1 = "Yes"
     ;
  value F00510_
     0 = "No"
     1 = "Yes"
     ;
  value F00511_
     0 = "No"
     1 = "Yes"
     ;
  value F00512_
     0 = "No"
     1 = "Yes"
     ;
  value F00513_
     0 = "No"
     1 = "Yes"
     ;
  value F00514_
     0 = "No"
     1 = "Yes"
     ;
  value F00515_
     0 = "No"
     1 = "Yes"
     ;
  value F00516_
     0 = "No"
     1 = "Yes"
     ;
  value F00517_
     0 = "No"
     1 = "Yes"
     ;
  value F00518_
     0 = "No"
     1 = "Yes"
     ;
  value F00519_
     0 = "No"
     1 = "Yes"
     ;
  value F00520_
     0 = "No"
     1 = "Yes"
     ;
  value F00521_
     0 = "No"
     1 = "Yes, given nothing"
     ;
  value F00522_
     0 = "No"
     1 = "Yes"
     ;
  value F00523_
     0 = "No card"
     1 = "Yes, seen"
     2 = "Yes, not seen"
     3 = "No longer has card"
     ;
  value F00524_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00525_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00526_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00527_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00528_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00529_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00530_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00531_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00532_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00533_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00534_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00535_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00536_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00537_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00538_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00539_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00540_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00541_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00542_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00543_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00544_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00545_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00546_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00547_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00548_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00549_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00550_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00551_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00552_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00553_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00554_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00555_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00556_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00557_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00558_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00559_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00560_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00561_
     0 = "No"
     1 = "Yes, last 24 hours"
     2 = "Yes, last two weeks"
     8 = "Don't know"
     ;
  value F00562_
     0 = "No"
     1 = "Government hospital"
     ;
  value F00563_
     0 = "No"
     1 = "Govt. health center/post"
     ;
  value F00564_
     0 = "No"
     1 = "Govt. health post"
     ;
  value F00565_
     0 = "No"
     1 = "Public mobile clinic"
     ;
  value F00566_
     0 = "No"
     1 = "Community health wrk"
     ;
  value F00567_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00568_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00569_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00570_
     0 = "No"
     1 = "Other public sector"
     ;
  value F00571_
     0 = "No"
     1 = "Private hosp./clinic"
     ;
  value F00572_
     0 = "No"
     1 = "Private pharmacy"
     ;
  value F00573_
     0 = "No"
     1 = "Private doctor"
     ;
  value F00574_
     0 = "No"
     1 = "Private mobile clin."
     ;
  value F00575_
     0 = "No"
     1 = "Community health wrk"
     ;
  value F00576_
     0 = "No"
     1 = "EPS/ARS/Caja Compensacion"
     ;
  value F00577_
     0 = "No"
     1 = "Profamilia"
     ;
  value F00578_
     0 = "No"
     1 = "Community unit (UROCs)"
     ;
  value F00579_
     0 = "No"
     1 = "Oth med.priv. sector"
     ;
  value F00580_
     0 = "No"
     1 = "Shop"
     ;
  value F00581_
     0 = "No"
     1 = "Traditional pract."
     ;
  value F00582_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00583_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00584_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00585_
     0 = "No"
     1 = "Other"
     ;
  value F00586_
     0 = "No: received treatm."
     1 = "Yes: no treatment"
     ;
  value F00587_
     0 = "No"
     1 = "Yes: medical treatm."
     ;
  value F00588_
     0 = "No"
     1 = "Yes: ORS - spontan."
     2 = "Yes: ORS - probed"
     8 = "Don't know"
     ;
  value F00589_
     0 = "No"
     1 = "Yes: RHS - spontan."
     2 = "Yes: RHS - probed"
     8 = "Don't know"
     ;
  value F00590_
     0 = "No"
     1 = "Yes: oth pill, syrup"
     8 = "Don't know"
     ;
  value F00591_
     0 = "No"
     1 = "Yes: antibiotics"
     8 = "Don't know"
     ;
  value F00592_
     0 = "No"
     1 = "Yes: injection"
     8 = "Don't know"
     ;
  value F00593_
     0 = "No"
     1 = "Yes: intravenous (IV"
     8 = "Don't know"
     ;
  value F00594_
     0 = "No"
     1 = "Yes: home rem, herb."
     8 = "Don't know"
     ;
  value F00595_
     0 = "No"
     1 = "Yes: Pedialite"
     8 = "Don't know"
     ;
  value F00596_
     0 = "No"
     1 = "Yes: CS other treatm"
     8 = "Don't know"
     ;
  value F00597_
     0 = "No"
     1 = "Yes: CS other treatm"
     8 = "Don't know"
     ;
  value F00598_
     0 = "No"
     1 = "Yes: CS other treatm"
     8 = "Don't know"
     ;
  value F00599_
     0 = "No"
     1 = "Yes"
     ;
  value F00600_
     0 = "No: received treatm."
     1 = "Yes: no treatment"
     8 = "DK"
     ;
  value F00601_
     0 = "No"
     1 = "Yes"
     ;
  value F00602_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00603_
     0 = "No"
     1 = "Yes, last 24 hours"
     2 = "Yes, last two weeks"
     8 = "Don't know"
     ;
  value F00604_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00605_
     0 = "No"
     1 = "Government hospital"
     ;
  value F00606_
     0 = "No"
     1 = "Govt. health center/post"
     ;
  value F00607_
     0 = "No"
     1 = "Govt. health post"
     ;
  value F00608_
     0 = "No"
     1 = "Public mobile clinic"
     ;
  value F00609_
     0 = "No"
     1 = "Community health wrk"
     ;
  value F00610_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00611_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00612_
     0 = "No"
     1 = "CS public sector"
     ;
  value F00613_
     0 = "No"
     1 = "Other public sector"
     ;
  value F00614_
     0 = "No"
     1 = "Private hosp./clinic"
     ;
  value F00615_
     0 = "No"
     1 = "Private pharmacy"
     ;
  value F00616_
     0 = "No"
     1 = "Private doctor"
     ;
  value F00617_
     0 = "No"
     1 = "Private mobile clin."
     ;
  value F00618_
     0 = "No"
     1 = "Community health wrk"
     ;
  value F00619_
     0 = "No"
     1 = "EPS/ARS/Caja Compensacion"
     ;
  value F00620_
     0 = "No"
     1 = "Profamilia"
     ;
  value F00621_
     0 = "No"
     1 = "Community unit (UAIRA)"
     ;
  value F00622_
     0 = "No"
     1 = "Oth med. priv. sect."
     ;
  value F00623_
     0 = "No"
     1 = "Shop"
     ;
  value F00624_
     0 = "No"
     1 = "Traditional pract."
     ;
  value F00625_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00626_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00627_
     0 = "No"
     1 = "CS oth. priv. sector"
     ;
  value F00628_
     0 = "No"
     1 = "Other"
     ;
  value F00629_
     0 = "No: received treatm."
     1 = "Yes: no treatment"
     ;
  value F00630_
     0 = "No"
     1 = "Yes: medical treatm."
     ;
  value F00631_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00632_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00633_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00634_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00635_
     0 = "No"
     1 = "Yes"
     8 = "Don't know"
     ;
  value F00636_
     0 = "No"
     1 = "Yes"
     2 = "No vaccination in last 2 years"
     8 = "Don't know"
     ;
  value F00637_
     0 = "No"
     1 = "Yes"
     ;
  value F00638_
     0 = "No"
     1 = "Yes"
     ;
  value F00639_
     0 = "No"
     1 = "Yes"
     ;
  value F00640_
     0 = "No"
     1 = "Yes"
     ;
  value F00641_
     0 = "No"
     1 = "Yes"
     ;
  value F00642_
     0 = "No"
     1 = "Yes"
     ;
  value F00643_
     0 = "No"
     1 = "Yes"
     ;
  value F00644_
     0 = "No"
     1 = "Yes"
     ;
  value F00645_
     0 = "No"
     1 = "Yes"
     ;
  value F00646_
     0 = "No"
     1 = "Yes"
     ;
  value F00647_
     0 = "No"
     1 = "Yes"
     ;
  value F00648_
     0 = "No"
     1 = "Yes"
     ;
  value F00649_
     0 = "No"
     1 = "Yes"
     ;
  value F00650_
     0 = "No"
     1 = "Yes"
     ;
  value F00651_
     0 = "No"
     1 = "Yes"
     ;
  value F00652_
     0 = "No"
     1 = "Yes, nothing taken"
     ;
  value F00653_
     0 = "No"
     1 = "Yes, DK"
     ;
  value F00654_
     0 = "Nothing to drink"
     2 = "Much less"
     3 = "Somewhat less"
     4 = "About the same"
     5 = "More"
     8 = "Don't know"
     ;
  value F00655_
     0 = "Stopped food"
     1 = "Never gave food"
     2 = "Much less"
     3 = "Somewhat less"
     4 = "About the same"
     5 = "More"
     8 = "Don't know"
     ;
  value F00656_
  9998 = "Flagged cases"
     ;
  value F00657_
  9998 = "Flagged cases"
     ;
  value F00658_
 99998 = "Flagged cases"
     ;
  value F00659_
  9998 = "Flagged cases"
     ;
  value F00660_
  9998 = "Flagged cases"
     ;
  value F00661_
 99998 = "Flagged cases"
     ;
  value F00662_
  9998 = "Flagged cases"
     ;
  value F00663_
  9998 = "Flagged cases"
     ;
  value F00664_
 99998 = "Flagged cases"
     ;
  value F00665_
     0 = "Measured"
     1 = "Dead"
     2 = "Sick"
     3 = "Not present"
     4 = "Refused"
     5 = "Mother refused"
     6 = "Other"
     ;
  value F00666_
     1 = "Lying"
     2 = "Standing"
     ;
  value F00667_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00668_
     0 = "Not in household"
     ;
  value F00669_
     1 = "Granted"
     2 = "Refused"
     ;
  value F00670_
     0 = "Measured"
     1 = "Dead"
     3 = "Not present"
     4 = "Refused"
     6 = "Other"
     ;
  value F00671_
     1 = "Severe"
     2 = "Moderate"
     3 = "Mild"
     4 = "Not anemic"
     ;
  value F00672_
     0 = "No"
     1 = "Yes"
     ;
  value F00673_
     1 = "Guajira, Cesar, Magdalena"
     2 = "Atlantico, Bolivar Norte"
     3 = "Bolivar, Sucre, Cordoba"
     4 = "Santanderes"
     5 = "Boyaca, C/marca, Meta"
     6 = "Antioquia"
     7 = "Medellin"
     8 = "Caldas, Risaralda, Quindio"
     9 = "Tolima, Huila, Caqueta"
    10 = "Cauca, Nariño"
    11 = "Valle del cauca"
    12 = "Litoral pacifico"
    13 = "Cali"
    14 = "Bogota D.C."
     ;
  value F00674_
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
  value F00675_
     1 = "Within city limits"
     2 = "Village"
     3 = "Disperse population"
     ;
  value F00676_
     1 = "Cities >700.000"
     2 = "Department capitals"
     3 = "Cities 50000-700.000"
     4 = "Remaining urban"
     5 = "Rural"
     ;
  value F00677_
     1 = "Reads easily"
     2 = "Reads with difficulty"
     3 = "Cannot read"
     ;
  value F00678_
     0 = "No"
     1 = "Yes"
     ;
  value F00679_
     1 = "Got pregnant"
     2 = "Got married"
     3 = "Take care of children"
     4 = "Family need help"
     5 = "Could not pay school"
     6 = "Sickness"
     7 = "Need to earn money"
     8 = "Graduated, enough"
     9 = "Did not pass exams"
    10 = "Did not like school"
    11 = "School far a way"
    12 = "No teachers at school"
    96 = "Other"
    98 = "DK"
     ;
  value F00680_
    10 = "PUBLIC"
    11 = "Govt Hospital"
    12 = "Govt healt post/center"
    13 = "Mobil clinic"
    14 = "Fieldworker"
    15 = "ICBF"
    20 = "PRIVATE MEDICAL"
    21 = "Private hospital/clinic"
    22 = "EPS/ARS/Cajas compensacion"
    23 = "Private doctor"
    24 = "Profamilia"
    95 = "No prenatal care"
    96 = "OTHER"
    98 = "DK"
     ;
  value F00681_
     0 = "No"
     1 = "Yes"
     ;
  value F00682_
     1 = "Partial payment"
     2 = "Did not pay anything"
     ;
  value F00683_
     0 = "Less than a day"
   995 = "Hasn't been hospitalized"
     ;
  value F00684_
     0 = "No"
     1 = "Yes"
     ;
  value F00685_
     0 = "No"
     1 = "Yes"
     ;
  value F00686_
     0 = "No"
     1 = "Yes"
     ;
  value F00687_
     0 = "No"
     1 = "Yes"
     ;
  value F00688_
     0 = "No"
     1 = "Yes"
     ;
  value F00689_
     0 = "No"
     1 = "Yes"
     ;
  value F00690_
     0 = "No"
     1 = "Yes"
     ;
  value F00691_
     0 = "No"
     1 = "Yes"
     8 = "No responde"
     ;
  value F00692_
    10 = "PUBLIC"
    11 = "Govt Hospital"
    12 = "Govt healt post/center"
    13 = "Mobil clinic"
    14 = "Fieldworker"
    15 = "ICBF"
    20 = "PRIVATE MEDICAL"
    21 = "Private hospital/clinic"
    22 = "EPS/ARS/Cajas compensacion"
    23 = "Private doctor"
    24 = "Profamilia"
    96 = "OTHER"
    98 = "DK"
     ;
  value F00693_
     0 = "No regret"
     1 = "Respondent wants another"
     2 = "Partner wants another"
     3 = "Side effects"
     4 = "Child died"
     6 = "Other"
     ;
  value F00694_
     0 = "No"
     1 = "Yes"
     ;
  value F00695_
     1 = "Partial payment"
     2 = "Did not pay anything"
     ;
  value F00696_
     1 = "Trinovum"
     2 = "Ortho-Novum"
     3 = "Microgynon"
     4 = "Harmonet"
     5 = "Gynovin"
     6 = "Neogynon CD"
     7 = "Microgynon 30 CD"
     8 = "Microgynon 30"
     9 = "Neogynon"
    10 = "Mercilon"
    11 = "Marvelon"
    12 = "Femiane"
    13 = "Gynovin"
    14 = "Noral"
    15 = "Cilest"
    16 = "Premarin"
    17 = "Minulet"
    18 = "Tri-Ciclomex"
    19 = "Tri-Cilest (28 tabletas)"
    20 = "Tri-Cilest (21 tabletas)"
    21 = "Progyluton"
    22 = "Lindiol"
    23 = "Nordette û 28"
    24 = "Noral 28"
    25 = "Nordette"
    96 = "Otro"
    98 = "No sabe"
     ;
  value F00697_
     1 = "Norforms"
     2 = "Neosampoon"
     3 = "Farma 12"
     4 = "Noraved"
    96 = "Otro"
    98 = "No sabe"
     ;
  value F00698_
     1 = "Sanamed Duo"
     2 = "Durex"
     3 = "Today"
     4 = "Jontex"
     5 = "Piel"
     6 = "Sanity"
     7 = "Orquidea"
     8 = "Rose Tex"
     9 = "Deluxe"
    10 = "Royal Tex"
    11 = "Unique"
    12 = "Panty Condom"
    13 = "Tahity"
    14 = "Preventor"
    15 = "Control"
    16 = "Aroma"
    17 = "Confiamor"
    18 = "Unisex"
    19 = "Harmony"
    96 = "Otro"
    98 = "No sabe"
     ;
  value F00699_
     1 = "Calendar"
     2 = "Body temperature"
     3 = "Cervical mucus"
     4 = "Body temperature & mucus"
     5 = "No specific system"
     6 = "Other"
     ;
  value F00700_
     0 = "No"
     1 = "Yes"
     ;
  value F00701_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00702_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00703_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00704_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00705_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00706_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00707_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00708_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00709_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00710_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00711_
     1 = "Good"
     2 = "Fair"
     3 = "Bad"
     8 = "DK"
     ;
  value F00712_
     0 = "No"
     1 = "Yes"
     ;
  value F00713_
     0 = "No"
     1 = "Yes"
     ;
  value F00714_
     0 = "No"
     1 = "Yes"
     ;
  value F00715_
     0 = "No"
     1 = "Yes"
     ;
  value F00716_
     0 = "No"
     1 = "Yes"
     ;
  value F00717_
     0 = "No"
     1 = "Yes"
     ;
  value F00718_
     0 = "No"
     1 = "Yes"
     ;
  value F00719_
     0 = "No"
     1 = "Yes"
     ;
  value F00720_
     0 = "No"
     1 = "Yes"
     ;
  value F00721_
     0 = "No"
     1 = "Yes"
     ;
  value F00722_
     0 = "No"
     1 = "Yes"
     ;
  value F00723_
     0 = "No"
     1 = "Yes"
     2 = "Never clean child"
     ;
  value F00724_
     0 = "No treatment done"
    98 = "DK"
     ;
  value F00725_
     0 = "No"
     1 = "Yes"
     ;
  value F00726_
     0 = "No"
     1 = "Yes"
     ;
  value F00727_
     0 = "No"
     1 = "Yes"
     ;
  value F00728_
     0 = "No"
     1 = "Yes"
     ;
  value F00729_
     1 = "Husband died"
     2 = "Physical/psicologic/sexual violence"
     3 = "Husband infidelity"
     4 = "Got in love with someone else"
     5 = "Didn't fulfill duties as father/husband"
     6 = "Drink all times"
     7 = "Use of drugs"
     8 = "Corrupted behavior"
     9 = "Mutual agreement"
    96 = "Other"
     ;
  value F00730_
     0 = "No"
     1 = "Yes"
     ;
  value F00731_
     0 = "No"
     1 = "Yes"
     ;
  value F00732_
     1 = "Respondent"
     2 = "Husband/partner"
     3 = "Older girl"
     4 = "Older boy"
     5 = "Other relatives"
     6 = "Neighbors"
     7 = "Friends"
     8 = "Servants/hired help"
     9 = "Child is school"
    10 = "Care by ICBF"
    11 = "Care other institution"
    96 = "Other"
     ;
  value F00733_
     1 = "One place"
     2 = "More than one place"
     ;
  value F00734_
   995 = "Abroad"
     ;
  value F00735_
     5 = "Antioquia"
     8 = "Atlántico"
    11 = "Bogotá"
    13 = "Bolívar"
    15 = "Boyacá"
    17 = "Caldas"
    18 = "Caquetá"
    19 = "Cauca"
    20 = "Cesar"
    23 = "Córdoba"
    25 = "Cundinamarca"
    27 = "Chocó"
    41 = "Huila"
    44 = "La Guajira"
    47 = "Magdalena"
    50 = "Meta"
    52 = "Nariño"
    54 = "Norte de Santander"
    63 = "Quindío"
    66 = "Risaralda"
    68 = "Santander"
    70 = "Sucre"
    73 = "Tolima"
    76 = "Valle"
    81 = "Arauca"
    85 = "Casanare"
    86 = "Putumayo"
    88 = "San Andrés y Providencia"
    91 = "Amazonas"
    94 = "Guainía"
    95 = "Guaviare"
    97 = "Vaupés"
    99 = "Vichada"
     ;
  value F00736_
     1 = "Within city limits"
     2 = "Village"
     3 = "Countryside"
     ;
  value F00737_
     1 = "Displace by insecurity"
     2 = "Displace by nature disasters"
     3 = "Here they help poor people"
     4 = "Labor reasons"
     5 = "Education reasons"
     6 = "Health reasons"
     7 = "Family reasons"
     8 = "In search for better conditions"
     9 = "Reject reasons"
    10 = "Attraction reasons"
    11 = "Economic reasons"
    96 = "Other"
     ;
  value F00738_
     0 = "No"
     1 = "Yes"
     ;
  value F00739_
     0 = "No"
     1 = "Yes"
     ;
  value F00740_
     0 = "No"
     1 = "Yes"
     ;
  value F00741_
     0 = "No"
     1 = "Yes"
     ;
  value F00742_
     0 = "No"
     1 = "Yes"
     ;
  value F00743_
     0 = "No"
     1 = "Yes"
     ;
  value F00744_
     0 = "No"
     1 = "Yes"
     ;
  value F00745_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00746_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00747_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00748_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00749_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00750_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00751_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00752_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00753_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00754_
     1 = "Great"
     2 = "Little"
     3 = "None"
     8 = "DK"
     ;
  value F00755_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00756_
     0 = "No"
     1 = "Yes"
     ;
  value F00757_
     0 = "No"
     1 = "Yes"
     ;
  value F00758_
     0 = "No"
     1 = "Yes"
     ;
  value F00759_
     0 = "No"
     1 = "Yes"
     ;
  value F00760_
     0 = "No"
     1 = "Yes"
     ;
  value F00761_
     0 = "No"
     1 = "Yes"
     ;
  value F00762_
     0 = "No"
     1 = "Yes"
     ;
  value F00763_
     0 = "No"
     1 = "Yes"
     ;
  value F00764_
     0 = "No"
     1 = "Yes"
     ;
  value F00765_
     0 = "No"
     1 = "Yes"
     ;
  value F00766_
     0 = "No"
     1 = "Yes"
     ;
  value F00767_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00768_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00769_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00770_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00771_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00772_
     0 = "No"
     1 = "Yes, listening"
     2 = "Yes, not listening"
     ;
  value F00773_
     0 = "No"
     1 = "Yes, listening"
     2 = "Yes, not listening"
     ;
  value F00774_
     0 = "No"
     1 = "Yes, listening"
     2 = "Yes, not listening"
     ;
  value F00775_
     0 = "No"
     1 = "Yes, listening"
     2 = "Yes, not listening"
     ;
  value F00776_
    10 = "PUBLIC"
    11 = "Govt Hospital"
    12 = "Govt health post/center"
    13 = "Mobil clinic"
    14 = "Fieldworker"
    15 = "ICBF"
    20 = "PRIVATE MEDICAL"
    21 = "Private hospital/clinic"
    22 = "EPS/ARS/Cajas compensacion"
    23 = "Private doctor"
    24 = "Profamilia"
    96 = "OTHER"
    98 = "DK"
     ;
  value F00777_
     0 = "No"
     1 = "Yes"
     ;
  value F00778_
     1 = "Partial payment"
     2 = "Paid nothing"
     ;
  value F00779_
     0 = "No"
     1 = "Yes"
     ;
  value F00780_
     0 = "No"
     1 = "Yes"
     ;
  value F00781_
    98 = "No sabe"
     ;
  value F00782_
     0 = "No"
     1 = "Yes"
     ;
  value F00783_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00784_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00785_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00786_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00787_
     1 = "Daily"
     2 = "Weekly"
     3 = "Bimonthly"
     4 = "Monthly"
     5 = "Occacionally"
     6 = "Other"
     8 = "Don't answer"
     ;
  value F00788_
     0 = "Less than a day"
   995 = "Was not in a hospital"
     ;
  value F00789_
     0 = "No"
     1 = "Yes"
     ;
  value F00790_
     0 = "No"
     1 = "Yes"
     ;
  value F00791_
     0 = "No"
     1 = "Yes"
     ;
  value F00792_
     0 = "No"
     1 = "Yes"
     ;
  value F00793_
     0 = "No"
     1 = "Yes"
     ;
  value F00794_
     0 = "No"
     1 = "Yes"
     ;
  value F00795_
     0 = "No"
     1 = "Yes"
     ;
  value F00796_
     0 = "No"
     1 = "Yes"
     ;
  value F00797_
     1 = "Partial payment"
     2 = "Paid nothing"
     ;
  value F00798_
     0 = "No"
     1 = "Yes"
     ;
  value F00799_
     0 = "No"
     1 = "Yes"
     ;
  value F00800_
     0 = "No"
     1 = "Yes"
     ;
  value F00801_
     0 = "No"
     1 = "Yes"
     ;
  value F00802_
     0 = "No"
     1 = "Yes"
     ;
  value F00803_
    97 = "Not measured"
    98 = "DK"
     ;
  value F00804_
     0 = "No"
     1 = "Yes"
     ;
  value F00805_
     0 = "No"
     1 = "Yes"
     ;
  value F00806_
     0 = "No"
     1 = "Yes"
     ;
  value F00807_
     0 = "No"
     1 = "Yes"
     ;
  value F00808_
     0 = "No"
     1 = "Yes"
     ;
  value F00809_
     0 = "No"
     1 = "Yes"
     ;
  value F00810_
     0 = "No"
     1 = "Yes"
     ;
  value F00811_
     0 = "No"
     1 = "Yes"
     ;
  value F00812_
     0 = "No"
     1 = "Yes"
     ;
  value F00813_
     0 = "No"
     1 = "Doctor"
     ;
  value F00814_
     0 = "No"
     1 = "Nurse"
     ;
  value F00815_
     0 = "No"
     1 = "Nurse auxiliary"
     ;
  value F00816_
     0 = "No"
     1 = "Traditional birth attendant"
     ;
  value F00817_
     0 = "No"
     1 = "Other"
     ;
  value F00818_
     1 = "Mother ill, weak"
     2 = "Child ill, weak"
     3 = "Child died"
     4 = "Child had problem succion"
     5 = "Breast problem succion"
     6 = "Insufficient milk"
     7 = "Mother working"
     8 = "Child refused"
    96 = "Other"
     ;
  value F00819_
     1 = "Mother ill, weak"
     2 = "Child ill, weak"
     3 = "Child died"
     4 = "Child had problem succion"
     5 = "Breast problem succion"
     6 = "Insufficient milk"
     7 = "Mother working"
     8 = "Child refused"
     9 = "Weaning age"
    10 = "Became pregnant"
    11 = "Started using method"
    96 = "Other"
     ;
  value F00820_
     0 = "No"
     1 = "Yes"
     ;
  value F00821_
    10 = "PUBLIC"
    11 = "Govt Hospital"
    12 = "Govt healt/post center"
    13 = "Mobil clinic"
    14 = "Fieldworker"
    15 = "ICBF"
    20 = "PRIVATE MEDICAL"
    21 = "Private hospital/clinic"
    22 = "EPS/ARS/Cajas compensacion"
    23 = "Private doctor"
    24 = "Profamilia"
    96 = "OTHER"
    98 = "DK"
     ;
  value F00822_
     0 = "No"
     1 = "Yes"
     2 = "Never feed child"
     ;
  value F00823_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00824_
     0 = "No"
     1 = "Yes"
     ;
  value F00825_
     1 = "Registraduría"
     2 = "Notary"
     3 = "Police inspection"
     4 = "Corregiduría"
     5 = "Consulate"
     8 = "DK"
     ;
  value F00826_
     1 = "Cost too much"
     2 = "Register place far away"
     3 = "Didn't know it was necessary"
     4 = "There wasn't proper stationary"
     5 = "Didn't want to pay penalty"
     6 = "Don't know where to register"
     7 = "Parent with no identification"
     8 = "Lack of time"
     9 = "Child too young"
    10 = "Father absent temporarily"
    11 = "Wait until father recognize him"
    12 = "Wait after baptisim"
    13 = "Father left them"
    14 = "Ilness/hospitalization"
    15 = "Problems at register place"
    16 = "Father died"
    17 = "Father hasn't wanted yet"
    96 = "Other"
     ;
  value F00827_
     0 = "No"
     1 = "Yes"
     ;
  value F00828_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00829_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00830_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00831_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00832_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00833_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00834_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00835_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00836_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00837_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00838_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00839_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00840_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00841_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00842_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00843_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00844_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00845_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00846_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00847_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00848_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00849_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00850_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00851_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00852_
     0 = "No"
     1 = "Vacc. date on card"
     2 = "Reported by mother"
     3 = "Vacc. marked on card"
     8 = "DK"
     ;
  value F00853_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00854_
    97 = "Inconsistent"
    98 = "DK"
     ;
  value F00855_
  9997 = "Inconsistent"
  9998 = "DK  "
     ;
  value F00856_
     1 = "At birth"
     2 = "Later"
     ;
  value F00857_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00858_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00859_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00860_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00861_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00862_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00863_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00864_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00865_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00866_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00867_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00868_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00869_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00870_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00871_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00872_
     0 = "No"
     1 = "Yes"
     8 = "DK"
     ;
  value F00873_
    98 = "NS"
     ;
  value F00874_
     0 = "No scar"
     1 = "Scar seen"
     ;
Data user.COBR41FL;
  attrib CASEID   length=$15 label="Case Identification";
  attrib BIDX     label="Birth column number";
  attrib V000     length=$3 label="Country code and phase";
  attrib V001     label="Cluster number";
  attrib V002     label="Household number";
  attrib V003     label="Respondent's line number";
  attrib V004     label="Ultimate area unit";
  attrib V005     label="Sample weight";
  attrib V006     label="Month of interview";
  attrib V007     label="Year of interview";
  attrib V008     label="Date of interview (CMC)";
  attrib V009     label="Respondent's month of birth";
  attrib V010     label="Respondent's year of birth";
  attrib V011     label="Date of birth (CMC)";
  attrib V012     label="Current age - respondent";
  attrib V013     format=F00001_. label="Age 5-year groups";
  attrib V014     format=F00002_. label="Completeness of information";
  attrib V015     format=F00003_. label="Result of individual interview";
  attrib V016     label="Day of interview";
  attrib V017     label="CMC start of calendar";
  attrib V018     format=F00004_. label="Row of month of interview";
  attrib V019     format=F00005_. label="Length of calendar";
  attrib V019A    label="Number of calendar columns";
  attrib V020     format=F00006_. label="Ever-married sample";
  attrib V021     label="Primary sampling unit";
  attrib V022     label="Sample stratum number";
  attrib V023     format=F00007_. label="Sample domain";
  attrib V024     format=F00008_. label="Region";
  attrib V025     format=F00009_. label="Type of place of residence";
  attrib V026     format=F00010_. label="De facto place of residence";
  attrib V027     label="Number of visits";
  attrib V028     label="Interviewer identification";
  attrib V029     label="Keyer identification";
  attrib V030     label="Field supervisor";
  attrib V031     label="Field editor";
  attrib V032     label="Office editor";
  attrib V033     label="Ultimate area selection prob.";
  attrib V034     format=F00011_. label="Line number of husband";
  attrib V040     label="Cluster altitude in meters";
  attrib V042     format=F00012_. label="Household selection for hem-NA";
  attrib V043     format=F00013_. label="Selection for women's stat-NA";
  attrib V044     format=F00014_. label="Selection for domestic violence module";
  attrib V101     format=F00015_. label="Region";
  attrib V102     format=F00016_. label="Type of place of residence";
  attrib V103     format=F00017_. label="Childhood place of residenc-NA";
  attrib V104     format=F00018_. label="Years lived in place of res.";
  attrib V105     format=F00019_. label="Type of place of previous r-NA";
  attrib V106     format=F00020_. label="Highest educational level";
  attrib V107     label="Highest year of education";
  attrib V113     format=F00021_. label="Source of drinking water";
  attrib V115     format=F00022_. label="Time to get to water source";
  attrib V116     format=F00023_. label="Type of toilet facility";
  attrib V119     format=F00024_. label="Has electricity";
  attrib V120     format=F00025_. label="Has radio";
  attrib V121     format=F00026_. label="Has television";
  attrib V122     format=F00027_. label="Has refrigerator";
  attrib V123     format=F00028_. label="Has bicycle                -NA";
  attrib V124     format=F00029_. label="Has motorcycle/scooter     -NA";
  attrib V125     format=F00030_. label="Has car/truck              -NA";
  attrib V127     format=F00031_. label="Main floor material";
  attrib V128     format=F00032_. label="Main wall material         -NA";
  attrib V129     format=F00033_. label="Main roof material         -NA";
  attrib V130     label="Religion                   -NA";
  attrib V131     label="Ethnicity                  -NA";
  attrib V133     format=F00034_. label="Education in single years";
  attrib V134     format=F00035_. label="De facto place of residence";
  attrib V135     format=F00036_. label="Usual resident or visitor";
  attrib V136     label="Number of household members";
  attrib V137     label="Number of children 5 and under";
  attrib V138     label="Number of eligible women in HH";
  attrib V139     format=F00037_. label="De jure region of residence";
  attrib V140     format=F00038_. label="De jure type of place of res.";
  attrib V141     format=F00039_. label="De jure place of residence";
  attrib V149     format=F00040_. label="Educational attainment";
  attrib V150     format=F00041_. label="Relationship to household head";
  attrib V151     format=F00042_. label="Sex of household head";
  attrib V152     label="Age of household head";
  attrib V153     format=F00043_. label="Has telephone";
  attrib AWFACTT  label="All woman factor - total";
  attrib AWFACTU  label="All woman factor - urban/rural";
  attrib AWFACTR  label="All woman factor - regional";
  attrib AWFACTE  label="All woman factor - educational";
  attrib V155     format=F00044_. label="Literacy                   -NA";
  attrib V156     format=F00045_. label="Ever participated in a lite-NA";
  attrib V157     format=F00046_. label="Frequency of reading newpap-NA";
  attrib V158     format=F00047_. label="Frequency of listening to r-NA";
  attrib V159     format=F00048_. label="Frequency of watching telev-NA";
  attrib V160     format=F00049_. label="Toilet facilities shared";
  attrib V161     format=F00050_. label="Type of cooking fuel";
  attrib V162     format=F00051_. label="Place for hand washing     -NA";
  attrib V163     format=F00052_. label="Presence of water/tap in ho-NA";
  attrib V164     format=F00053_. label="Presence of soap/ash/other -NA";
  attrib V165     format=F00054_. label="Presence of basin in househ-NA";
  attrib V166     format=F00055_. label="Results of salt iodine test-NA";
  attrib V201     label="Total children ever born";
  attrib V202     label="Sons at home";
  attrib V203     label="Daughters at home";
  attrib V204     label="Sons elsewhere";
  attrib V205     label="Daughters elsewhere";
  attrib V206     label="Sons who have died";
  attrib V207     label="Daughters who have died";
  attrib V208     label="Births in last five years";
  attrib V209     label="Births in past year";
  attrib V210     label="Births in month of interview";
  attrib V211     label="Date of first birth (CMC)";
  attrib V212     label="Age of respondent at 1st birth";
  attrib V213     format=F00056_. label="Currently pregnant";
  attrib V214     label="Duration of current pregnancy";
  attrib V215     format=F00057_. label="Time since last menstrual period";
  attrib V216     format=F00058_. label="Menstruated in last six weeks";
  attrib V217     format=F00059_. label="Knowledge of ovulatory cycle";
  attrib V218     label="Number of living children";
  attrib V219     label="Living children + current pregnancy";
  attrib V220     format=F00060_. label="Living children + current  pregnancy 6+";
  attrib V221     format=F00061_. label="Marriage to first birth int.";
  attrib V222     label="Last birth to interview";
  attrib V223     format=F00062_. label="Completeness of current pregnant information";
  attrib V224     label="Entries in birth history";
  attrib V225     format=F00063_. label="Current pregnancy wanted";
  attrib V226     format=F00064_. label="Time since last period (comp)";
  attrib V227     format=F00065_. label="Flag for last period";
  attrib V228     format=F00066_. label="Ever had a terminated pregnancy";
  attrib V229     format=F00067_. label="Month pregnancy ended";
  attrib V230     format=F00068_. label="Year pregnancy ended";
  attrib V231     format=F00069_. label="CMC pregnancy ended";
  attrib V232     format=F00070_. label="Completeness of last term. inf";
  attrib V233     format=F00071_. label="Months when pregnancy ended";
  attrib V234     format=F00072_. label="Other such pregnancies";
  attrib V235     format=F00073_. label="Index last child prior to cal.";
  attrib V237     format=F00074_. label="Birth between last & interview";
  attrib V238     label="Births in last three years";
  attrib V239     format=F00075_. label="Pregnancies terminated before 1995";
  attrib V240     format=F00076_. label="Month of last termination prior to calendar";
  attrib V241     format=F00077_. label="Year of last termination prior to calendar";
  attrib V242     format=F00078_. label="CMC termination ended prior to calendar";
  attrib V243     format=F00079_. label="Completeness of last termination date prior to calendar";
  attrib V310     label="Living children at first use";
  attrib V311     format=F00080_. label="Children at first use (grpd)";
  attrib V312     format=F00081_. label="Current contraceptive method";
  attrib V313     format=F00082_. label="Current use by method type";
  attrib V315     label="Month of start of use of method";
  attrib V316     label="Year of start of use of method";
  attrib V317     label="Date of start of use of method (CMC)";
  attrib V318     format=F00083_. label="Completeness of information";
  attrib V319     format=F00084_. label="Years since sterilization";
  attrib V320     format=F00085_. label="Age at sterilization";
  attrib V321     format=F00086_. label="Marital duration at sterilization";
  attrib V322     format=F00087_. label="Parity at sterilization";
  attrib V326     format=F00088_. label="Last source for current users";
  attrib V327     format=F00089_. label="Last source for users by type";
  attrib V337     format=F00090_. label="Months of use of current method";
  attrib V359     format=F00091_. label="Last method disc. last 5 years";
  attrib V360     format=F00092_. label="Reason of last discontinuation";
  attrib V361     format=F00093_. label="Pattern of use";
  attrib V362     format=F00094_. label="Intention to use";
  attrib V363     format=F00095_. label="Preferred future method";
  attrib V364     format=F00096_. label="Contraceptive use & intention";
  attrib V367     format=F00097_. label="Wanted last child";
  attrib V375A    format=F00098_. label="Main reason not using a method";
  attrib V376     format=F00099_. label="Main reason not to use a method";
  attrib V376A    format=F00100_. label="Would ever use method if married";
  attrib V379     format=F00101_. label="Source known for any method-NA";
  attrib V380     format=F00102_. label="Source known for any method-NA";
  attrib V384A    format=F00103_. label="Heard FP on radio last mont-NA";
  attrib V384B    format=F00104_. label="Heard FP on TV last months -NA";
  attrib V384C    format=F00105_. label="Heard FP newspaper last mon-NA";
  attrib V393     format=F00106_. label="Visited by FP worker last 12m";
  attrib V394     format=F00107_. label="Visited health facility last 12m";
  attrib V395     format=F00108_. label="At health facility, told of FP";
  attrib V3A00A   format=F00109_. label="Source of FP for non-users:  government hospital";
  attrib V3A00B   format=F00110_. label="Source of FP for non-users: government health center";
  attrib V3A00C   format=F00111_. label="Source of FP for non-users:-NA";
  attrib V3A00D   format=F00112_. label="Source of FP for non-users:  mobile clinic";
  attrib V3A00E   format=F00113_. label="Source of FP for non-users:  fieldworker";
  attrib V3A00F   format=F00114_. label="Source of FP for non-users:-NA";
  attrib V3A00G   format=F00115_. label="Source of FP for non-users:-NA";
  attrib V3A00H   format=F00116_. label="Source of FP for non-users:-NA";
  attrib V3A00I   format=F00117_. label="Source of FP for non-users:-NA";
  attrib V3A00J   format=F00118_. label="Source of FP for non-users:  private hospital/clinic";
  attrib V3A00K   format=F00119_. label="Source of FP for non-users:  private pharmacy";
  attrib V3A00L   format=F00120_. label="Source of FP for non-users:  private doctor";
  attrib V3A00M   format=F00121_. label="Source of FP for non-users:-NA";
  attrib V3A00N   format=F00122_. label="Source of FP for non-users:-NA";
  attrib V3A00O   format=F00123_. label="Source of FP for non-users:  EPS/ARS/Caja compensacion";
  attrib V3A00P   format=F00124_. label="Source of FP for non-users:  Profamilia";
  attrib V3A00Q   format=F00125_. label="Source of FP for non-users:-NA";
  attrib V3A00R   format=F00126_. label="Source of FP for non-users:-NA";
  attrib V3A00S   format=F00127_. label="Source of FP for non-users:-NA";
  attrib V3A00T   format=F00128_. label="Source of FP for non-users:-NA";
  attrib V3A00U   format=F00129_. label="Source of FP for non-users:-NA";
  attrib V3A00V   format=F00130_. label="Source of FP for non-users:-NA";
  attrib V3A00W   format=F00131_. label="Source of FP for non-users:-NA";
  attrib V3A00X   format=F00132_. label="Source of FP for non-users:  Other";
  attrib V3A00Y   format=F00133_. label="Source of FP for non-users:  no source";
  attrib V3A00Z   format=F00134_. label="Source of FP for non-users:  any source";
  attrib V3A01    format=F00135_. label="Told sterilization would mean no more children";
  attrib V3A02    format=F00136_. label="Told about side effects";
  attrib V3A03    format=F00137_. label="Told about side effects by -NA";
  attrib V3A04    format=F00138_. label="Told how to deal with side effects";
  attrib V3A05    format=F00139_. label="Told about other FP methods";
  attrib V3A06    format=F00140_. label="Told about other FP methods-NA";
  attrib V3A07    format=F00141_. label="First source for current me-NA";
  attrib V3A08A   format=F00142_. label="Reason not using: Not married";
  attrib V3A08B   format=F00143_. label="Reason not using: Not having sex";
  attrib V3A08C   format=F00144_. label="Reason not using: Infrequent sex";
  attrib V3A08D   format=F00145_. label="Reason not using: Menopausal/hysterectomy";
  attrib V3A08E   format=F00146_. label="Reason not using: Subfecund/infecund";
  attrib V3A08F   format=F00147_. label="Reason not using: Postpartum amenorrheic";
  attrib V3A08G   format=F00148_. label="Reason not using: Breastfeeding";
  attrib V3A08H   format=F00149_. label="Reason not using: Fatalistic";
  attrib V3A08I   format=F00150_. label="Reason not using: Respondent opposed";
  attrib V3A08J   format=F00151_. label="Reason not using: Husband/partner opposed";
  attrib V3A08K   format=F00152_. label="Reason not using: Others opposed";
  attrib V3A08L   format=F00153_. label="Reason not using: Religious prohibition";
  attrib V3A08M   format=F00154_. label="Reason not using: Knows no method";
  attrib V3A08N   format=F00155_. label="Reason not using: Knows no source";
  attrib V3A08O   format=F00156_. label="Reason not using: Health concerns";
  attrib V3A08P   format=F00157_. label="Reason not using: Fear of side effects";
  attrib V3A08Q   format=F00158_. label="Reason not using: Lack of access/too far";
  attrib V3A08R   format=F00159_. label="Reason not using: Costs too much";
  attrib V3A08S   format=F00160_. label="Reason not using: Inconvenient to use";
  attrib V3A08T   format=F00161_. label="Reason not using: Interferes with body process";
  attrib V3A08U   format=F00162_. label="Reason not using: partner infecund";
  attrib V3A08V   format=F00163_. label="Reason not using: CS      -NA";
  attrib V3A08W   format=F00164_. label="Reason not using: CS      -NA";
  attrib V3A08X   format=F00165_. label="Reason not using: Other";
  attrib V3A08Z   format=F00166_. label="Reason not using: Don't know";
  attrib V401     format=F00167_. label="Last birth caesarean section";
  attrib V404     format=F00168_. label="Currently breastfeeding";
  attrib V405     format=F00169_. label="Currently amenorrheic";
  attrib V406     format=F00170_. label="Currently abstaining";
  attrib V407     format=F00171_. label="Times breastfed during night";
  attrib V408     format=F00172_. label="Times breastfed during day";
  attrib V415     format=F00173_. label="Drank from bottle with nipple";
  attrib V416     format=F00174_. label="Heard of oral rehydration";
  attrib V417     label="Entries in maternity table";
  attrib V418     label="Entries in health table";
  attrib V419     label="Entries in height/weight table";
  attrib V420     label="Measurer's code";
  attrib V421     label="Assistant measurer's code";
  attrib V426     format=F00175_. label="When child put to breast";
  attrib V437     label="Respondent's weight (kilos-1d)";
  attrib V438     label="Respondent's height (cms-1d)";
  attrib V439     format=F00176_. label="Ht/A Percentile (resp.)";
  attrib V440     format=F00177_. label="Ht/A Standard deviations (resp";
  attrib V441     format=F00178_. label="Ht/A Percent ref. median (resp";
  attrib V442     format=F00179_. label="Wt/Ht Percent ref. median (DHS";
  attrib V443     format=F00180_. label="Wt/Ht Percent ref. median (Fog";
  attrib V444     format=F00181_. label="Wt/Ht Percent ref. median (WHO";
  attrib V444A    format=F00182_. label="Wt/Ht Std deviations(resp) DHS";
  attrib V445     format=F00183_. label="Body mass index for respondent";
  attrib V446     format=F00184_. label="Rohrer's index for respondent";
  attrib V447     format=F00185_. label="Result of measurement of resp.";
  attrib V447A    label="Women's age in years from h-NA";
  attrib V452A    format=F00186_. label="Under age 18 (HH report)   -NA";
  attrib V452B    format=F00187_. label="Line no. of parent/caretake-NA";
  attrib V452C    format=F00188_. label="Read consent statement     -NA";
  attrib V453     label="Hemoglobin level (g/dl - 1 -NA";
  attrib V454     format=F00189_. label="Currently pregnant (househo-NA";
  attrib V455     format=F00190_. label="Result of measuring (Hemogl-NA";
  attrib V456     label="Hemoglobin level adjusted b-NA";
  attrib V457     format=F00191_. label="Anemia level               -NA";
  attrib V458     format=F00192_. label="Agrees to referral         -NA";
  attrib V459     format=F00193_. label="Have bednet for sleeping (household report)";
  attrib V460     format=F00194_. label="Children under 5 slept under bednet last night (HH report)";
  attrib V461     format=F00195_. label="Respondent slept under bedn-NA";
  attrib V462     format=F00196_. label="Washed hands before prepari-NA";
  attrib V463A    format=F00197_. label="Smokes cigarettes          -NA";
  attrib V463B    format=F00198_. label="Smokes pipe                -NA";
  attrib V463C    format=F00199_. label="Smokes other tobacco       -NA";
  attrib V463D    format=F00200_. label="Smokes country specific    -NA";
  attrib V463E    format=F00201_. label="Smokes country specific    -NA";
  attrib V463F    format=F00202_. label="Smokes country specific    -NA";
  attrib V463G    format=F00203_. label="Smokes country specific    -NA";
  attrib V463Z    format=F00204_. label="Smokes nothing             -NA";
  attrib V464     label="Number of cigarettes in las-NA";
  attrib V465     format=F00205_. label="Disposal of youngest child's stools when not using toilet";
  attrib V466     format=F00206_. label="When child is seriously ill, can decide whether med tx sough";
  attrib V467A    format=F00207_. label="Getting medical help for se-NA";
  attrib V467B    format=F00208_. label="Getting medical help for se-NA";
  attrib V467C    format=F00209_. label="Getting medical help for se-NA";
  attrib V467D    format=F00210_. label="Getting medical help for se-NA";
  attrib V467E    format=F00211_. label="Getting medical help for se-NA";
  attrib V467F    format=F00212_. label="Getting medical help for se-NA";
  attrib V467G    format=F00213_. label="Getting medical help for se-NA";
  attrib V468     format=F00214_. label="Columns used for Last Birth Only variables";
  attrib V469A    format=F00215_. label="Times gave child plain water";
  attrib V469B    format=F00216_. label="Times gave child sugar wate-NA";
  attrib V469C    format=F00217_. label="Times gave child fruit juice";
  attrib V469D    format=F00218_. label="Times gave child herbal tea-NA";
  attrib V469E    format=F00219_. label="Times gave child powder/tin-NA";
  attrib V469F    format=F00220_. label="Times gave child commercially produced baby formula";
  attrib V469G    format=F00221_. label="Times gave child fresh milk-NA";
  attrib V469H    format=F00222_. label="Times given tinned, powdered or fresh animal milk";
  attrib V469I    format=F00223_. label="Times given sugar water, tee, coffee, soft drink, soup";
  attrib V469J    format=F00224_. label="Times given country specifi-NA";
  attrib V469K    format=F00225_. label="Times given country specifi-NA";
  attrib V469L    format=F00226_. label="Times gave child other liqu-NA";
  attrib V469M    format=F00227_. label="Times given pumpkin, carrots, red/yel yams, red sweet pot.";
  attrib V469N    format=F00228_. label="Times given any green leafy-NA";
  attrib V469O    format=F00229_. label="Times given mango, papaya or other Vitamin A rich fruits";
  attrib V469P    format=F00230_. label="Times given other solid, se-NA";
  attrib V469Q    format=F00231_. label="Times given food made from wheat, corn, oat, rice";
  attrib V469R    format=F00232_. label="Times given food made from local roots/tuber";
  attrib V469S    format=F00233_. label="Times gave child eggs, fish-NA";
  attrib V469T    format=F00234_. label="Times gave child meat      -NA";
  attrib V469U    format=F00235_. label="Times gave child other fruits/vegetables";
  attrib V469V    format=F00236_. label="Times gave child meat, poultry, fish, shellfish, eggs";
  attrib V469W    format=F00237_. label="Times gave child legumes (lentils, beans, peanuts)";
  attrib V469X    format=F00238_. label="Times gave child cheese/yogurt";
  attrib V469Y    format=F00239_. label="Times gave child foods made with oil, fat, butter";
  attrib V469Z    format=F00240_. label="Times gave child country sp-NA";
  attrib V469XX   format=F00241_. label="Times gave child country sp-NA";
  attrib V469XY   format=F00242_. label="Times gave child country sp-NA";
  attrib V469XZ   format=F00243_. label="Times gave child country sp-NA";
  attrib V470A    format=F00244_. label="Last 7 days - plain water";
  attrib V470B    format=F00245_. label="Last 7 days - sugar water  -NA";
  attrib V470C    format=F00246_. label="Last 7 days - fruit juice";
  attrib V470D    format=F00247_. label="Last 7 days -  herbal tea  -NA";
  attrib V470E    format=F00248_. label="Last 7 days - powder/tinned-NA";
  attrib V470F    format=F00249_. label="Last 7 days - commercially produced baby formula";
  attrib V470G    format=F00250_. label="Last 7 days -  fresh milk  -NA";
  attrib V470H    format=F00251_. label="Last 7 days - tinned, powdered or fresh animal milk";
  attrib V470I    format=F00252_. label="Last 7 days - sugar water, tee, coffee, soft drink, soup";
  attrib V470J    format=F00253_. label="Last 7 days - country speci-NA";
  attrib V470K    format=F00254_. label="Last 7 days - country speci-NA";
  attrib V470L    format=F00255_. label="Last 7 days -  other liquid-NA";
  attrib V470M    format=F00256_. label="Last 7 days - pumpkin, carrots, red/yel yams, red sweet pot.";
  attrib V470N    format=F00257_. label="Last 7 days - any green lea-NA";
  attrib V470O    format=F00258_. label="Last 7 days - mango, papaya or other Vitamin A rich fruits";
  attrib V470P    format=F00259_. label="Last 7 days - other solid, -NA";
  attrib V470Q    format=F00260_. label="Last 7 days - food made from wheat, corn, oat, rice";
  attrib V470R    format=F00261_. label="Last 7 days - food made from local roots/tuber";
  attrib V470S    format=F00262_. label="Last 7 days - eggs, fish, p-NA";
  attrib V470T    format=F00263_. label="Last 7 days - Times gave ch-NA";
  attrib V470U    format=F00264_. label="Last 7 days -  other fruits/vegetables";
  attrib V470V    format=F00265_. label="Last 7 days -  meat, poultry, fish, shellfish, eggs";
  attrib V470W    format=F00266_. label="Last 7 days - legumes (lentils, beans, peanuts)";
  attrib V470X    format=F00267_. label="Last 7 days - cheese/yogurt";
  attrib V470Y    format=F00268_. label="Last 7 days - foods made with oil, fat, butter";
  attrib V470Z    format=F00269_. label="Last 7 days - country speci-NA";
  attrib V470XX   format=F00270_. label="Last 7 days - country speci-NA";
  attrib V470XY   format=F00271_. label="Last 7 days - country speci-NA";
  attrib V470XZ   format=F00272_. label="Last 7 days - country speci-NA";
  attrib V501     format=F00273_. label="Current marital status";
  attrib V502     format=F00274_. label="Currently/formerly/never marr.";
  attrib V503     format=F00275_. label="Number of unions";
  attrib V504     format=F00276_. label="Husband lives in house";
  attrib V505     format=F00277_. label="Number of other wives      -NA";
  attrib V506     format=F00278_. label="Wife rank number           -NA";
  attrib V507     label="Month of first marriage";
  attrib V508     label="Year of first marriage";
  attrib V509     label="Date of first marriage (CMC)";
  attrib V510     format=F00279_. label="Completeness of date inform.";
  attrib V511     label="Age at first marriage";
  attrib V512     label="Years since first marriage";
  attrib V513     format=F00280_. label="Marital duration (grouped)";
  attrib V525     format=F00281_. label="Age at first intercourse";
  attrib V527     format=F00282_. label="Time since last intercourse";
  attrib V528     format=F00283_. label="Time since last intercourse(g)";
  attrib V529     format=F00284_. label="Time since last intercourse(imputed)";
  attrib V530     format=F00285_. label="Flag for V529";
  attrib V531     format=F00286_. label="Age at first intercourse (imp)";
  attrib V532     format=F00287_. label="Flag for V531";
  attrib V535     format=F00288_. label="Have ever been married";
  attrib V536     format=F00289_. label="Recent sexual activity";
  attrib V537     format=F00290_. label="Months of abstinence";
  attrib V602     format=F00291_. label="Fertility preference";
  attrib V603     format=F00292_. label="Preferred waiting time";
  attrib V604     format=F00293_. label="Preferred waiting time (grpd)";
  attrib V605     format=F00294_. label="Desire for more children";
  attrib V610     format=F00295_. label="Husband approves FP";
  attrib V611     format=F00296_. label="Discussed FP with partner  -NA";
  attrib V612     format=F00297_. label="Respondent approves FP";
  attrib V613     format=F00298_. label="Ideal number of children";
  attrib V614     format=F00299_. label="Ideal number of children (grp)";
  attrib V616     format=F00300_. label="Time for future birth";
  attrib V621     format=F00301_. label="Husbands desire for children";
  attrib V623     format=F00302_. label="Exposure";
  attrib V624     format=F00303_. label="Unmet need";
  attrib V625     format=F00304_. label="Exposure (definition 2)";
  attrib V626     format=F00305_. label="Unmet need (definition 2)";
  attrib V627     format=F00306_. label="Ideal number of boys";
  attrib V628     format=F00307_. label="Ideal number of girls";
  attrib V629     format=F00308_. label="Ideal number of either sex";
  attrib V630A    format=F00309_. label="Discussed FP with partner";
  attrib V630B    format=F00310_. label="Discussed FP with mother";
  attrib V630C    format=F00311_. label="Discussed FP with father";
  attrib V630D    format=F00312_. label="Discussed FP with sister(s)";
  attrib V630E    format=F00313_. label="Discussed FP with brother(s)";
  attrib V630F    format=F00314_. label="Discussed FP with daughter(s)";
  attrib V630G    format=F00315_. label="Discussed FP with mother-in-law";
  attrib V630H    format=F00316_. label="Discussed FP with friends/nbrs";
  attrib V630I    format=F00317_. label="Discussed FP with son(s)";
  attrib V630J    format=F00318_. label="Discussed FP father-in-law";
  attrib V630K    format=F00319_. label="Discussed FP boy friend";
  attrib V630L    format=F00320_. label="Discussed FP male friends";
  attrib V630M    format=F00321_. label="Discussed FP -country speci-NA";
  attrib V630N    format=F00322_. label="Discussed FP -country speci-NA";
  attrib V630O    format=F00323_. label="Discussed FP -country speci-NA";
  attrib V630X    format=F00324_. label="Discussed FP with others";
  attrib V631     format=F00325_. label="Problem if became pregnant";
  attrib V632     format=F00326_. label="Decision maker for using contraception";
  attrib V633A    format=F00327_. label="Reason for not having sex: Husband has STD";
  attrib V633B    format=F00328_. label="Reason for not having sex: Husband has other women";
  attrib V633C    format=F00329_. label="Reason for not having sex: Recent birth";
  attrib V633D    format=F00330_. label="Reason for not having sex: Tired, mood";
  attrib V633E    format=F00331_. label="Reason for not having sex: -NA";
  attrib V633F    format=F00332_. label="Reason for not having sex: -NA";
  attrib V633G    format=F00333_. label="Reason for not having sex: -NA";
  attrib V701     format=F00334_. label="Partner's education level";
  attrib V702     format=F00335_. label="Highest year of education";
  attrib V704     label="Partner's occupation";
  attrib V705     format=F00336_. label="Partner's occupation";
  attrib V714     format=F00337_. label="Respondent currently working";
  attrib V715     format=F00338_. label="Husbands education-single yrs";
  attrib V716     format=F00339_. label="Respondent's occupation";
  attrib V717     format=F00340_. label="Respondent's occupation";
  attrib V719     format=F00341_. label="Work for family, others, se-NA";
  attrib V721     format=F00342_. label="Works at home or away";
  attrib V729     format=F00343_. label="Partner's educational attainm.";
  attrib V730     format=F00344_. label="Partners age";
  attrib V731     format=F00345_. label="Worked in last 12 months";
  attrib V732     format=F00346_. label="Employment all year/seasona-NA";
  attrib V739     format=F00347_. label="Who decides how to spend money";
  attrib V740     format=F00348_. label="Type of land where resp. wo-NA";
  attrib V741     format=F00349_. label="Type of earnings for work";
  attrib V742     format=F00350_. label="Portion of household expenditures respondents earnings pay";
  attrib V743A    format=F00351_. label="Final say on own health care";
  attrib V743B    format=F00352_. label="Final say on making large household purchases";
  attrib V743C    format=F00353_. label="Final say on making household purchases for daily needs";
  attrib V743D    format=F00354_. label="Final say on visits to family or relatives";
  attrib V743E    format=F00355_. label="Final say on food to be cooked each day";
  attrib V744A    format=F00356_. label="Wife beating justified if s-NA";
  attrib V744B    format=F00357_. label="Wife beating justified if s-NA";
  attrib V744C    format=F00358_. label="Wife beating justified if s-NA";
  attrib V744D    format=F00359_. label="Wife beating justified if s-NA";
  attrib V744E    format=F00360_. label="Wife beating justified if s-NA";
  attrib BORD     label="Birth order number";
  attrib B0       format=F00361_. label="Child is twin";
  attrib B1       label="Month of birth";
  attrib B2       label="Year of birth";
  attrib B3       label="Date of birth (CMC)";
  attrib B4       format=F00362_. label="Sex of child";
  attrib B5       format=F00363_. label="Child is alive";
  attrib B6       format=F00364_. label="Age at death";
  attrib B7       label="Age at death (months-imputed)";
  attrib B8       label="Current age of child";
  attrib B9       format=F00365_. label="Child lives with whom";
  attrib B10      format=F00366_. label="Completeness of information";
  attrib B11      label="Preceding birth interval";
  attrib B12      label="Succeeding birth interval";
  attrib B13      format=F00367_. label="Flag for age at death";
  attrib B15      format=F00368_. label="Live birth between births";
  attrib B16      format=F00369_. label="Child's line number in household";
  attrib MIDX     label="Index to birth history";
  attrib M1       format=F00370_. label="Tetanus injections before birth";
  attrib M2A      format=F00371_. label="Prenatal: doctor";
  attrib M2B      format=F00372_. label="Prenatal: nurse/midwife";
  attrib M2C      format=F00373_. label="Prenatal: auxiliary midwife-NA";
  attrib M2D      format=F00374_. label="Prenatal: auxiliary nurse";
  attrib M2E      format=F00375_. label="Prenatal: CS health profess-NA";
  attrib M2F      format=F00376_. label="Prenatal: trained birth att-NA";
  attrib M2G      format=F00377_. label="Prenatal: traditional birth attendant";
  attrib M2H      format=F00378_. label="Prenatal: relative         -NA";
  attrib M2I      format=F00379_. label="Prenatal: CS other person  -NA";
  attrib M2J      format=F00380_. label="Prenatal: CS other person  -NA";
  attrib M2K      format=F00381_. label="Prenatal: other resp (uncoded)";
  attrib M2L      format=F00382_. label="Prenatal: CS other         -NA";
  attrib M2M      format=F00383_. label="Prenatal: CS other         -NA";
  attrib M2N      format=F00384_. label="Prenatal: no one";
  attrib M3A      format=F00385_. label="Assistance: doctor";
  attrib M3B      format=F00386_. label="Assistance: nurse/midwife";
  attrib M3C      format=F00387_. label="Assistance: auxiliary midwi-NA";
  attrib M3D      format=F00388_. label="Assistance: Auxiliary nurse";
  attrib M3E      format=F00389_. label="Assistance: CS health profe-NA";
  attrib M3F      format=F00390_. label="Assistance: trained birth a-NA";
  attrib M3G      format=F00391_. label="Assistance: traditional birth attendant";
  attrib M3H      format=F00392_. label="Assistance: relative, friend";
  attrib M3I      format=F00393_. label="Assistance: CS other person-NA";
  attrib M3J      format=F00394_. label="Assistance: CS other person-NA";
  attrib M3K      format=F00395_. label="Assistance: other resp (uncod)";
  attrib M3L      format=F00396_. label="Assistance: CS other       -NA";
  attrib M3M      format=F00397_. label="Assistance: CS other       -NA";
  attrib M3N      format=F00398_. label="Assistance: no one";
  attrib M4       format=F00399_. label="Duration of breastfeeding";
  attrib M5       format=F00400_. label="Months of breastfeeding";
  attrib M6       format=F00401_. label="Duration of amenorrhea";
  attrib M7       format=F00402_. label="Months of amenorrhea";
  attrib M8       format=F00403_. label="Duration of abstinence";
  attrib M9       format=F00404_. label="Months of abstinence";
  attrib M10      format=F00405_. label="Time wanted pregnancy";
  attrib M11      format=F00406_. label="Time would have waited";
  attrib M13      format=F00407_. label="Timing of 1st antenatal check";
  attrib M14      format=F00408_. label="Antenatal visits for pregnancy";
  attrib M15      format=F00409_. label="Place of delivery";
  attrib M17      format=F00410_. label="Delivery by caesarian section";
  attrib M18      format=F00411_. label="Size of child at birth     -NA";
  attrib M19      format=F00412_. label="Birth weight (kilos - 3 dec.)";
  attrib M19A     format=F00413_. label="Weight at birth recall";
  attrib M27      format=F00414_. label="Flag for breastfeeding";
  attrib M28      format=F00415_. label="Flag for amenorrhea";
  attrib M29      format=F00416_. label="Flag for abstinence";
  attrib M34      format=F00417_. label="When child put to breast";
  attrib M35      format=F00418_. label="Times breastfed during night";
  attrib M36      format=F00419_. label="Times breastfed during day";
  attrib M37A     format=F00420_. label="Times gave child plain water";
  attrib M37B     format=F00421_. label="Times gave child sugar wate-NA";
  attrib M37C     format=F00422_. label="Times gave child fruit juice";
  attrib M37D     format=F00423_. label="Times gave child herbal tea-NA";
  attrib M37E     format=F00424_. label="Times gave child powder/tin-NA";
  attrib M37F     format=F00425_. label="Times gave child commercially produced baby formula";
  attrib M37G     format=F00426_. label="Times gave child fresh milk-NA";
  attrib M37H     format=F00427_. label="Times given tinned, powdered or fresh animal milk";
  attrib M37I     format=F00428_. label="Times given sugar water, tee, coffee, soft drinks, soup";
  attrib M37J     format=F00429_. label="Times given country specifi-NA";
  attrib M37K     format=F00430_. label="Times given country specifi-NA";
  attrib M37L     format=F00431_. label="Times gave child other liqu-NA";
  attrib M37M     format=F00432_. label="Times given pumpkin, carrots, red/yel yams, red sweet pot.";
  attrib M37N     format=F00433_. label="Times given any green leafy-NA";
  attrib M37O     format=F00434_. label="Times given mango, papaya or other Vitamin A rich fruits";
  attrib M37P     format=F00435_. label="Times given other solid, se-NA";
  attrib M37Q     format=F00436_. label="Times given food made from corn, wheat, oat, rice";
  attrib M37R     format=F00437_. label="Times given food made from local roots/tuber";
  attrib M37S     format=F00438_. label="Times gave child eggs, fish-NA";
  attrib M37T     format=F00439_. label="Times gave child meat      -NA";
  attrib M37U     format=F00440_. label="Times gave child other fruits/vegetables";
  attrib M37V     format=F00441_. label="Times gave child meat, poultry, fish, shellfish, eggs";
  attrib M37W     format=F00442_. label="Times gave child legumes (lentils, beans, peanuts)";
  attrib M37X     format=F00443_. label="Times gave child cheese/yogurt";
  attrib M37Y     format=F00444_. label="Times gave child foods made with oil, fat, butter";
  attrib M37Z     format=F00445_. label="Times gave child country sp-NA";
  attrib M37XX    format=F00446_. label="Times gave child country sp-NA";
  attrib M37XY    format=F00447_. label="Times gave child country sp-NA";
  attrib M37XZ    format=F00448_. label="Times gave child country sp-NA";
  attrib M38      format=F00449_. label="Drank from bottle with nipple";
  attrib M39      format=F00450_. label="Times ate other food yesterday";
  attrib M40A     format=F00451_. label="Last 7 days - plain water";
  attrib M40B     format=F00452_. label="Last 7 days - sugar water  -NA";
  attrib M40C     format=F00453_. label="Last 7 days - fruit juice";
  attrib M40D     format=F00454_. label="Last 7 days -  herbal tea  -NA";
  attrib M40E     format=F00455_. label="Last 7 days - powder/tinned-NA";
  attrib M40F     format=F00456_. label="Last 7 days - commercially produced baby formula";
  attrib M40G     format=F00457_. label="Last 7 days -  fresh milk  -NA";
  attrib M40H     format=F00458_. label="Last 7 days - tinned, powdered or fresh animal milk";
  attrib M40I     format=F00459_. label="Last 7 days - sugar water, tee, coffee, soft drinks, soup";
  attrib M40J     format=F00460_. label="Last 7 days - country speci-NA";
  attrib M40K     format=F00461_. label="Last 7 days - country speci-NA";
  attrib M40L     format=F00462_. label="Last 7 days -  other liquid-NA";
  attrib M40M     format=F00463_. label="Last 7 days - pumpkin, carrots, red/yel yams, red sweet pot.";
  attrib M40N     format=F00464_. label="Last 7 days - any green lea-NA";
  attrib M40O     format=F00465_. label="Last 7 days - mango, papaya or other Vitamin A rich fruits";
  attrib M40P     format=F00466_. label="Last 7 days - other solid, -NA";
  attrib M40Q     format=F00467_. label="Last 7 days - wheat, corn, oat, rice";
  attrib M40R     format=F00468_. label="Last 7 days - food made from local roots/tuber";
  attrib M40S     format=F00469_. label="Last 7 days - eggs, fish, p-NA";
  attrib M40T     format=F00470_. label="Last 7 days - Times gave ch-NA";
  attrib M40U     format=F00471_. label="Last 7 days -  other fruits/vegetables";
  attrib M40V     format=F00472_. label="Last 7 days -  meat, poultry, fish, shellfish, eggs";
  attrib M40W     format=F00473_. label="Last 7 days - legumes (lentils, beans, peanuts)";
  attrib M40X     format=F00474_. label="Last 7 days - cheese/yogurt";
  attrib M40Y     format=F00475_. label="Last 7 days - foods made with oil, fat, butter";
  attrib M40Z     format=F00476_. label="Last 7 days - country speci-NA";
  attrib M40XX    format=F00477_. label="Last 7 days - country speci-NA";
  attrib M40XY    format=F00478_. label="Last 7 days - country speci-NA";
  attrib M40XZ    format=F00479_. label="Last 7 days - country speci-NA";
  attrib M41      format=F00480_. label="Months pregnant for last antenatal visit";
  attrib M42A     format=F00481_. label="During pregnancy - weighted";
  attrib M42B     format=F00482_. label="During pregnancy - height m-NA";
  attrib M42C     format=F00483_. label="During pregnancy - blood pressure taken";
  attrib M42D     format=F00484_. label="During pregnancy - urine sample taken";
  attrib M42E     format=F00485_. label="During pregnancy - blood sample taken";
  attrib M43      format=F00486_. label="Told about pregnancy complications";
  attrib M44      format=F00487_. label="Told where to go for pregnancy complications";
  attrib M45      format=F00488_. label="During pregnancy, given or bought iron tablets/syrup";
  attrib M46      format=F00489_. label="Days tablets or syrup taken";
  attrib M47      format=F00490_. label="During pregnancy, had difficulty with daylight vision";
  attrib M48      format=F00491_. label="During pregnancy, had diffi-NA";
  attrib M49A     format=F00492_. label="During pregnancy - took Fansidar for Malaria";
  attrib M49B     format=F00493_. label="During pregnancy - took Chloroquine for Malaria";
  attrib M49C     format=F00494_. label="During pregnancy - took Unknown Drug for Malaria";
  attrib M49D     format=F00495_. label="During pregnancy - took amodiaquina";
  attrib M49E     format=F00496_. label="During pregnancy - took primaquina";
  attrib M49F     format=F00497_. label="During pregnancy - took cou-NA";
  attrib M49G     format=F00498_. label="During pregnancy - took cou-NA";
  attrib M49X     format=F00499_. label="During pregnancy - took other drug for Malaria";
  attrib M49Z     format=F00500_. label="During pregnancy - took no drug for Malaria";
  attrib M50      format=F00501_. label="After birth, health professional checked health";
  attrib M51      format=F00502_. label="Checkup after deliver timing";
  attrib M52      format=F00503_. label="After birth, health professional checked health";
  attrib M53      format=F00504_. label="Place for checkup";
  attrib M54      format=F00505_. label="Received Vitamin A dose in -NA";
  attrib M55A     format=F00506_. label="First 3 days, given milk ot-NA";
  attrib M55B     format=F00507_. label="First 3 days, given plain w-NA";
  attrib M55C     format=F00508_. label="First 3 days, given sugar/g-NA";
  attrib M55D     format=F00509_. label="First 3 days, given gripe w-NA";
  attrib M55E     format=F00510_. label="First 3 days, given sugar/s-NA";
  attrib M55F     format=F00511_. label="First 3 days, given fruit j-NA";
  attrib M55G     format=F00512_. label="First 3 days, given infant -NA";
  attrib M55H     format=F00513_. label="First 3 days, given tea/inf-NA";
  attrib M55I     format=F00514_. label="First 3 days, given honey  -NA";
  attrib M55J     format=F00515_. label="First 3 days, given country-NA";
  attrib M55K     format=F00516_. label="First 3 days, given country-NA";
  attrib M55L     format=F00517_. label="First 3 days, given country-NA";
  attrib M55M     format=F00518_. label="First 3 days, given country-NA";
  attrib M55N     format=F00519_. label="First 3 days, given country-NA";
  attrib M55X     format=F00520_. label="First 3 days, given other  -NA";
  attrib M55Z     format=F00521_. label="First 3 days, given nothing-NA";
  attrib M56      format=F00522_. label="Sugar added to any of foods-NA";
  attrib HIDX     label="Index to birth history";
  attrib H1       format=F00523_. label="Has health card";
  attrib H2       format=F00524_. label="Received BCG";
  attrib H2D      format=F00525_. label="BCG day";
  attrib H2M      format=F00526_. label="BCG month";
  attrib H2Y      format=F00527_. label="BCG year";
  attrib H3       format=F00528_. label="Received DPT 1";
  attrib H3D      format=F00529_. label="DPT 1 day";
  attrib H3M      format=F00530_. label="DPT 1 month";
  attrib H3Y      format=F00531_. label="DPT 1 year";
  attrib H4       format=F00532_. label="Received POLIO 1";
  attrib H4D      format=F00533_. label="POLIO 1 day";
  attrib H4M      format=F00534_. label="POLIO 1 month";
  attrib H4Y      format=F00535_. label="POLIO 1 year";
  attrib H5       format=F00536_. label="Received DPT 2";
  attrib H5D      format=F00537_. label="DPT 2 day";
  attrib H5M      format=F00538_. label="DPT 2 month";
  attrib H5Y      format=F00539_. label="DPT 2 year";
  attrib H6       format=F00540_. label="Received POLIO 2";
  attrib H6D      format=F00541_. label="POLIO 2 day";
  attrib H6M      format=F00542_. label="POLIO 2 month";
  attrib H6Y      format=F00543_. label="POLIO 2 year";
  attrib H7       format=F00544_. label="Received DPT 3";
  attrib H7D      format=F00545_. label="DPT 3 day";
  attrib H7M      format=F00546_. label="DPT 3 month";
  attrib H7Y      format=F00547_. label="DPT 3 year";
  attrib H8       format=F00548_. label="Received POLIO 3";
  attrib H8D      format=F00549_. label="POLIO 3 day";
  attrib H8M      format=F00550_. label="POLIO 3 month";
  attrib H8Y      format=F00551_. label="POLIO 3 year";
  attrib H9       format=F00552_. label="Received MEASLES";
  attrib H9D      format=F00553_. label="MEASLES day";
  attrib H9M      format=F00554_. label="MEASLES month";
  attrib H9Y      format=F00555_. label="MEASLES year";
  attrib H0       format=F00556_. label="Polio 0";
  attrib H0D      format=F00557_. label="Polio 0 day";
  attrib H0M      format=F00558_. label="POLIO 0 month";
  attrib H0Y      format=F00559_. label="POLIO 0 year";
  attrib H10      format=F00560_. label="Ever had vaccination";
  attrib H11      format=F00561_. label="Had diarrhea recently";
  attrib H12A     format=F00562_. label="Diarrhea: government hosp.";
  attrib H12B     format=F00563_. label="Diarrhea: govt health center/post";
  attrib H12C     format=F00564_. label="Diarrhea: govt health post -NA";
  attrib H12D     format=F00565_. label="Diarrhea: mobile clinic";
  attrib H12E     format=F00566_. label="Diarrhea: comm.health worker";
  attrib H12F     format=F00567_. label="Diarrhea: CS public sector -NA";
  attrib H12G     format=F00568_. label="Diarrhea: CS public sector -NA";
  attrib H12H     format=F00569_. label="Diarrhea: CS public sector -NA";
  attrib H12I     format=F00570_. label="Diarrhea: other public sect-NA";
  attrib H12J     format=F00571_. label="Diarrhea: private hosp/clin.";
  attrib H12K     format=F00572_. label="Diarrhea: private pharmacy";
  attrib H12L     format=F00573_. label="Diarrhea: private doctor";
  attrib H12M     format=F00574_. label="Diarrhea: private mobile cl-NA";
  attrib H12N     format=F00575_. label="Diarrhea: comm.health worke-NA";
  attrib H12O     format=F00576_. label="Diarrhea: EPS/ARS/Caja Compensacion";
  attrib H12P     format=F00577_. label="Diarrhea: Profamilia";
  attrib H12Q     format=F00578_. label="Diarrhea: Community unit (UROCs)";
  attrib H12R     format=F00579_. label="Diarrhea: other med.priv se-NA";
  attrib H12S     format=F00580_. label="Diarrhea: shop";
  attrib H12T     format=F00581_. label="Diarrhea: traditional pract.";
  attrib H12U     format=F00582_. label="Diarrhea: CS oth.priv secto-NA";
  attrib H12V     format=F00583_. label="Diarrhea: CS oth.priv secto-NA";
  attrib H12W     format=F00584_. label="Diarrhea: CS oth.priv secto-NA";
  attrib H12X     format=F00585_. label="Diarrhea: Other";
  attrib H12Y     format=F00586_. label="Diarrhea: no treatment";
  attrib H12Z     format=F00587_. label="Diarrhea: medical treatment";
  attrib H13      format=F00588_. label="Given oral rehydration";
  attrib H14      format=F00589_. label="Given recommend. home solution";
  attrib H15      format=F00590_. label="Given other pills or syrups";
  attrib H15A     format=F00591_. label="Given antibiotics (CS)";
  attrib H15B     format=F00592_. label="Given an injection         -NA";
  attrib H15C     format=F00593_. label="Given an intravenous (IV)";
  attrib H15D     format=F00594_. label="Given home remedy, herbal med.";
  attrib H15E     format=F00595_. label="Given Pedialite";
  attrib H15F     format=F00596_. label="Given CS other treatment   -NA";
  attrib H15G     format=F00597_. label="Given CS other treatment   -NA";
  attrib H15H     format=F00598_. label="Given CS other treatment   -NA";
  attrib H20      format=F00599_. label="Given other treatment";
  attrib H21A     format=F00600_. label="Given no treatment";
  attrib H21      format=F00601_. label="Received any treatment";
  attrib H22      format=F00602_. label="Had fever in last two weeks";
  attrib H31      format=F00603_. label="Had cough in last two weeks";
  attrib H31B     format=F00604_. label="Short, rapid breaths       -NA";
  attrib H32A     format=F00605_. label="Fever/cough: government hosp.";
  attrib H32B     format=F00606_. label="Fever/cough: govt health cntr/post";
  attrib H32C     format=F00607_. label="Fever/cough: govt health po-NA";
  attrib H32D     format=F00608_. label="Fever/cough: mobile clinic";
  attrib H32E     format=F00609_. label="Fever/cough: comm.health wrkr";
  attrib H32F     format=F00610_. label="Fever/cough: CS public sect-NA";
  attrib H32G     format=F00611_. label="Fever/cough: CS public sect-NA";
  attrib H32H     format=F00612_. label="Fever/cough: CS public sect-NA";
  attrib H32I     format=F00613_. label="Fever/cough: oth public sec-NA";
  attrib H32J     format=F00614_. label="Fever/cough: private hosp/clin";
  attrib H32K     format=F00615_. label="Fever/cough: private pharmacy";
  attrib H32L     format=F00616_. label="Fever/cough: private doctor";
  attrib H32M     format=F00617_. label="Fever/cough: private mobile-NA";
  attrib H32N     format=F00618_. label="Fever/cough: comm.health wr-NA";
  attrib H32O     format=F00619_. label="Fever/cough: EPS/ARS/Caja Compensacion";
  attrib H32P     format=F00620_. label="Fever/cough: Profamilia";
  attrib H32Q     format=F00621_. label="Fever/cough: Community unit (UAIRA)";
  attrib H32R     format=F00622_. label="Fever/cough: oth med.priv s-NA";
  attrib H32S     format=F00623_. label="Fever/cough: shop";
  attrib H32T     format=F00624_. label="Fever/cough: traditional pract";
  attrib H32U     format=F00625_. label="Fever/cough: CS oth.priv se-NA";
  attrib H32V     format=F00626_. label="Fever/cough: CS oth.priv se-NA";
  attrib H32W     format=F00627_. label="Fever/cough: CS oth.priv se-NA";
  attrib H32X     format=F00628_. label="Fever/cough: Other";
  attrib H32Y     format=F00629_. label="Fever/cough: no treatment";
  attrib H32Z     format=F00630_. label="Fever/cough: medical treatment";
  attrib H33      format=F00631_. label="Received Vitamin A         -NA";
  attrib H33D     format=F00632_. label="Vitamin A Day              -NA";
  attrib H33M     format=F00633_. label="Vitamin A month            -NA";
  attrib H33Y     format=F00634_. label="Vitamin A year             -NA";
  attrib H34      format=F00635_. label="Vitamin A in last 6 months -NA";
  attrib H35      format=F00636_. label="Any vaccinations in last 2 years part of campaign";
  attrib H36A     format=F00637_. label="Vaccinated during Campaign -NA";
  attrib H36B     format=F00638_. label="Vaccinated during Campaign -NA";
  attrib H36C     format=F00639_. label="Vaccinated during Campaign -NA";
  attrib H36D     format=F00640_. label="Vaccinated during Campaign -NA";
  attrib H36E     format=F00641_. label="Vaccinated during Campaign -NA";
  attrib H36F     format=F00642_. label="Vaccinated during Campaign -NA";
  attrib H37A     format=F00643_. label="Fansidar taken for fever";
  attrib H37B     format=F00644_. label="Chloroquine taken for fever";
  attrib H37C     format=F00645_. label="Aspirin taken for fever";
  attrib H37D     format=F00646_. label="Acetaminophen taken for fever";
  attrib H37E     format=F00647_. label="Amodiaquina taken for fever";
  attrib H37F     format=F00648_. label="Primaquina taken for fever";
  attrib H37G     format=F00649_. label="Ibuprofeno taken for fever";
  attrib H37H     format=F00650_. label="Country specific taken for -NA";
  attrib H37X     format=F00651_. label="Other taken for fever";
  attrib H37Y     format=F00652_. label="Nothing taken for fever";
  attrib H37Z     format=F00653_. label="Don't know if or what was taken";
  attrib H38      format=F00654_. label="Had diarrhea in last 2 weeks: Amount offered to drink";
  attrib H39      format=F00655_. label="Had diarrhea in last 2 weeks: Amount offered to eat";
  attrib HWIDX    label="Index to birth history";
  attrib HW1      label="Age in months";
  attrib HW2      label="Weight in kilograms (1 dec.)";
  attrib HW3      label="Height in centimeters (1 dec.)";
  attrib HW4      format=F00656_. label="Ht/A Percentile";
  attrib HW5      format=F00657_. label="Ht/A Standard deviations";
  attrib HW6      format=F00658_. label="Ht/A Percent of ref. median";
  attrib HW7      format=F00659_. label="Wt/A Percentile";
  attrib HW8      format=F00660_. label="Wt/A Standard deviations";
  attrib HW9      format=F00661_. label="Wt/A Percent of ref. median";
  attrib HW10     format=F00662_. label="Wt/Ht Percentile";
  attrib HW11     format=F00663_. label="Wt/Ht Standard deviations";
  attrib HW12     format=F00664_. label="Wt/Ht Percent of ref. median";
  attrib HW13     format=F00665_. label="Reason not measured";
  attrib HW15     format=F00666_. label="Height: lying or standing";
  attrib HW16     format=F00667_. label="Day of birth of child";
  attrib HW17     label="Date measured (day)";
  attrib HW18     label="Date measured (month)";
  attrib HW19     label="Date measured (year)";
  attrib HW51     format=F00668_. label="Line no. of parent/caretake-NA";
  attrib HW52     format=F00669_. label="Read consent statement     -NA";
  attrib HW53     label="Hemoglobin level (g/dl - 1 -NA";
  attrib HW55     format=F00670_. label="Result of measuring (Hemogl-NA";
  attrib HW56     label="Hemoglobin level adjusted b-NA";
  attrib HW57     format=F00671_. label="Anemia level               -NA";
  attrib HW58     format=F00672_. label="Agrees to referral         -NA";
  attrib SSUBREG  format=F00673_. label="Subregions";
  attrib SDEPTO   format=F00674_. label="Department";
  attrib SMUNIP   label="Municipality";
  attrib SAREA    format=F00675_. label="Residence area";
  attrib SMUEST   label="Sampling area";
  attrib SLOCAL   format=F00676_. label="Population size";
  attrib S107     format=F00677_. label="Literacy";
  attrib S109     format=F00678_. label="Respondent still in school";
  attrib S110     format=F00679_. label="Reason abandoned school";
  attrib S229     format=F00680_. label="Place of prenatal care";
  attrib S229A    label="Months at first prenatal control";
  attrib S229B    format=F00681_. label="Had to pay for last prenatal care";
  attrib S229C    format=F00682_. label="How was prenatal payment done";
  attrib S230     format=F00683_. label="Days hospitalized during pregnancy";
  attrib S231A    format=F00684_. label="Reason hospitalized: Infection";
  attrib S231B    format=F00685_. label="Reason hospitalized: bleeding";
  attrib S231C    format=F00686_. label="Reason hospitalized: Hypertension";
  attrib S231D    format=F00687_. label="Reason hospitalized: Attacks, Convulsions";
  attrib S231E    format=F00688_. label="Reason hospitalized: Abortion threat";
  attrib S231F    format=F00689_. label="Reason hospitalized: Membrane broken";
  attrib S231X    format=F00690_. label="Reason hospitalized: Other";
  attrib S236     format=F00691_. label="Received medical care for last termination";
  attrib S237     format=F00692_. label="Place of post-abortion care";
  attrib S314     format=F00693_. label="Reason regret sterilization";
  attrib S315B    format=F00694_. label="Paid for sterilization";
  attrib S315C    format=F00695_. label="How was sterilization payment done";
  attrib S317AA   format=F00696_. label="Brand of pill used";
  attrib S317AB   format=F00697_. label="Brand of vaginals used";
  attrib S317AC   format=F00698_. label="Brand of condoms used";
  attrib S317B    format=F00699_. label="Method of periodic abstinence";
  attrib S327B    format=F00700_. label="Have seen someone to control IUD/Norplant";
  attrib S327C    label="Number of DIU/Norplant controls since Jan. 1999";
  attrib S327EA   format=F00701_. label="Service last time got method: schedule";
  attrib S327EB   format=F00702_. label="Service last time got method: orientation";
  attrib S327EC   format=F00703_. label="Service last time got method: information";
  attrib S327ED   format=F00704_. label="Service last time got method: waiting room convenience";
  attrib S327EE   format=F00705_. label="Service last time got method: cleanness";
  attrib S327EF   format=F00706_. label="Service last time got method: waiting time";
  attrib S327EG   format=F00707_. label="Service last time got method: administrative treatment";
  attrib S327EH   format=F00708_. label="Service last time got method: nurses treatment";
  attrib S327EI   format=F00709_. label="Service last time got method: medical treatment";
  attrib S327EJ   format=F00710_. label="Service last time got method: medical explanations";
  attrib S327EK   format=F00711_. label="Service last time got method: privacy";
  attrib S335     format=F00712_. label="Relied breastfeeding avoid pregnancy";
  attrib S338     format=F00713_. label="Currently Rely on breastfeeding";
  attrib S487A    format=F00714_. label="Take child health center when: can't drink/breastfed";
  attrib S487B    format=F00715_. label="Take child health center when: get sicker";
  attrib S487C    format=F00716_. label="Take child health center when: fever/diarrhea/vomiting";
  attrib S487D    format=F00717_. label="Take child health center when: fast breathing";
  attrib S487E    format=F00718_. label="Take child health center when: difficulty to breath";
  attrib S487F    format=F00719_. label="Take child health center when: blood in stools";
  attrib S487G    format=F00720_. label="Take child health center when: not eating/drinking";
  attrib S487X    format=F00721_. label="Take child health center when: other";
  attrib S487Z    format=F00722_. label="Take child health center when: don't know";
  attrib S490     format=F00723_. label="Wash hands after cleaning youngest child";
  attrib S494     format=F00724_. label="Months last treatment to bednet done";
  attrib S500A    format=F00725_. label="Presence children (section 5)";
  attrib S500B    format=F00726_. label="Presence husband (section 5)";
  attrib S500C    format=F00727_. label="Presence other men (section 5)";
  attrib S500D    format=F00728_. label="Presence other women (section 5)";
  attrib S508A    format=F00729_. label="Reason last divorce/ separation";
  attrib S517     format=F00730_. label="Have sex with other men last 12 months";
  attrib S518     format=F00731_. label="Last intercourse with other men used condom";
  attrib S711     label="Months worked in last 12 months";
  attrib S719     format=F00732_. label="Child minder";
  attrib S720     format=F00733_. label="Places have lived since 1995";
  attrib S723M    label="Month came to live present residence";
  attrib S723Y    label="Year came to live present residence";
  attrib S724A    format=F00734_. label="Municipality previous residence";
  attrib S724B    format=F00735_. label="Department previous residence";
  attrib S725     format=F00736_. label="Area previous residence";
  attrib S726     format=F00737_. label="Reason left last place of residence";
  attrib S727     label="Number of family members came with you";
  attrib S727A    format=F00738_. label="Came with you: husband/partner";
  attrib S727B    format=F00739_. label="Came with you: sons/daughters";
  attrib S727C    format=F00740_. label="Came with you: parents/parent-in-law";
  attrib S727D    format=F00741_. label="Came with you: brothers/sisters";
  attrib S727X    format=F00742_. label="Came with you: other";
  attrib S801A    format=F00743_. label="Ever heard of VIH";
  attrib S801B    format=F00744_. label="Ever heard of AIDS";
  attrib S807A    format=F00745_. label="Risk of AIDS: married woman";
  attrib S807B    format=F00746_. label="Risk of AIDS: married man";
  attrib S807C    format=F00747_. label="Risk of AIDS: single woman with sexual live";
  attrib S807D    format=F00748_. label="Risk of AIDS: single man with sexual live";
  attrib S807E    format=F00749_. label="Risk of AIDS: boys & girls";
  attrib S807F    format=F00750_. label="Risk of AIDS: prostitutes";
  attrib S807G    format=F00751_. label="Risk of AIDS: lesbian women";
  attrib S807H    format=F00752_. label="Risk of AIDS: homosexual man";
  attrib S807I    format=F00753_. label="Risk of AIDS: women that have sex with men & women";
  attrib S807J    format=F00754_. label="Risk of AIDS: men that have sex with women & men";
  attrib S807A1   format=F00755_. label="Respondent has chances of getting aids";
  attrib S808A    format=F00756_. label="How to know if person has AIDS: VIH test";
  attrib S808B    format=F00757_. label="How to know if person has AIDS: physical appearance";
  attrib S808C    format=F00758_. label="How to know if person has AIDS: no specific signs, symptoms";
  attrib S808D    format=F00759_. label="How to know if person has AIDS: blood test";
  attrib S808E    format=F00760_. label="How to know if person has AIDS: medical exam";
  attrib S808F    format=F00761_. label="How to know if person has AIDS: symptoms related to AIDS";
  attrib S808X    format=F00762_. label="How to know if person has AIDS: other";
  attrib S808Z    format=F00763_. label="How to know if person has AIDS: don't know";
  attrib S810     format=F00764_. label="Received advise before AIDS test";
  attrib S811     format=F00765_. label="Did know test results";
  attrib S812     format=F00766_. label="Received advise when test results were given";
  attrib S816X    format=F00767_. label="AIDS transmit. other";
  attrib S816Z    format=F00768_. label="AIDS transmit. don't know";
  attrib S817     format=F00769_. label="Should an infected person inform his/her partner(s)";
  attrib S819     format=F00770_. label="Should an infected person be fired by employer";
  attrib S820     format=F00771_. label="Should an infected person may continue to have sex";
  attrib S717A    format=F00772_. label="Pres. children < 10 (sec 7)";
  attrib S717B    format=F00773_. label="Pres. husband (sec 7)";
  attrib S717C    format=F00774_. label="Pres. other males (sec 7)";
  attrib S717D    format=F00775_. label="Pres. other females (sec 7)";
  attrib S1007    label="Respondent's arm circumference (cms 1 dec)";
  attrib IDX94    label="Index to birth history";
  attrib S407A    format=F00776_. label="Place where prenatal care took place";
  attrib S411A    format=F00777_. label="Last control had to pay";
  attrib S411B    format=F00778_. label="How was payment for last control made";
  attrib S412B    format=F00779_. label="During pregnancy - uterus height measured";
  attrib S418     format=F00780_. label="During pregnancy drank alcoholic beverages";
  attrib S418A    format=F00781_. label="Number of drinks in a week";
  attrib S418B    format=F00782_. label="During pregnancy smoked cigarettes";
  attrib S418C    label="Number of cigarettes during pregnancy";
  attrib S418EA   format=F00783_. label="During pregnancy consumed: marihuana";
  attrib S418EB   format=F00784_. label="During pregnancy consumed: bazzoka";
  attrib S418EC   format=F00785_. label="During pregnancy consumed: cocaine";
  attrib S418EX   format=F00786_. label="During pregnancy consumed: other";
  attrib S418F    format=F00787_. label="Frequency of drug consumption";
  attrib S420     format=F00788_. label="Number of days in a hospital during pregnancy";
  attrib S420AA   format=F00789_. label="Reason hospitalized during pregnancy: infection";
  attrib S420AB   format=F00790_. label="Reason hospitalized during pregnancy: hemorrhage";
  attrib S420AC   format=F00791_. label="Reason hospitalized during pregnancy: hypertension";
  attrib S420AD   format=F00792_. label="Reason hospitalized during pregnancy: convulsions";
  attrib S420AE   format=F00793_. label="Reason hospitalized during pregnancy: threat of abortion";
  attrib S420AF   format=F00794_. label="Reason hospitalized during pregnancy: membrane broken";
  attrib S420AX   format=F00795_. label="Reason hospitalized during pregnancy: other";
  attrib S421A    format=F00796_. label="Had to pay for delivery";
  attrib S421B    format=F00797_. label="How was delivery payment done";
  attrib S423AA   format=F00798_. label="At delivery: prolonged labor";
  attrib S423AB   format=F00799_. label="0t delivery: excessive bleeding";
  attrib S423AC   format=F00800_. label="At delivery: fever with bleeding";
  attrib S423AD   format=F00801_. label="At delivery: convulsions";
  attrib S423AE   format=F00802_. label="At delivery: other";
  attrib S424B    format=F00803_. label="Height at birth";
  attrib S425     format=F00804_. label="After birth was given anything in a bottle with nipple";
  attrib S426A    format=F00805_. label="After delivery: excessive bleeding";
  attrib S426B    format=F00806_. label="After delivery: dismay/faint";
  attrib S426C    format=F00807_. label="After delivery: fever, chills";
  attrib S426D    format=F00808_. label="After delivery: breast infections";
  attrib S426E    format=F00809_. label="After delivery: pain when urinate";
  attrib S426F    format=F00810_. label="After delivery: vaginal discharge";
  attrib S426G    format=F00811_. label="After delivery: loss of urine";
  attrib S426BA   format=F00812_. label="Received medical care due to complications";
  attrib S427BA   format=F00813_. label="Postnatal control: Doctor";
  attrib S427BB   format=F00814_. label="Postnatal control: nurse";
  attrib S427BC   format=F00815_. label="Postnatal control: nurse auxiliary";
  attrib S427BD   format=F00816_. label="Postnatal control: traditional birth attendant";
  attrib S427BX   format=F00817_. label="Postnatal control: other";
  attrib S435     format=F00818_. label="Reason did not breastfed";
  attrib S440     format=F00819_. label="Reason stopped breastfeeding";
  attrib S441     format=F00820_. label="Received training about breastfeeding";
  attrib S442     format=F00821_. label="Place of training for breastfeeding";
  attrib S449     format=F00822_. label="Last time the feed child washed your hands";
  attrib S450A    format=F00823_. label="Did get a birth certificate";
  attrib S450B    format=F00824_. label="Was birth registered";
  attrib S450C    format=F00825_. label="Place where child was registered";
  attrib S450D    format=F00826_. label="Reason child was not registered";
  attrib S450E    format=F00827_. label="Do you know how to register a child";
  attrib IDX95    label="Index to birth history";
  attrib SPB1     format=F00828_. label="Received antihepatitis B1";
  attrib SPB1D    format=F00829_. label="Antihepatitis B1 day";
  attrib SPB1M    format=F00830_. label="Antihepatitis B1 month";
  attrib SPB1Y    format=F00831_. label="Antihepatitis B1 year";
  attrib SPB2     format=F00832_. label="Received antihepatitis B2";
  attrib SPB2D    format=F00833_. label="Antihepatitis B2 day";
  attrib SPB2M    format=F00834_. label="Antihepatitis B2 month";
  attrib SPB2Y    format=F00835_. label="Antihepatitis B2 year";
  attrib SPB3     format=F00836_. label="Received antihepatitis B3";
  attrib SPB3D    format=F00837_. label="Antihepatitis B3 day";
  attrib SPB3M    format=F00838_. label="Antihepatitis B3 month";
  attrib SPB3Y    format=F00839_. label="Antihepatitis B3 year";
  attrib S456T    format=F00840_. label="Received triple viral (MMR)";
  attrib S456TD   format=F00841_. label="Triple viral (MMR) day";
  attrib S456TM   format=F00842_. label="Triple viral (MMR) month";
  attrib S456TY   format=F00843_. label="Triple viral (MMR) year";
  attrib SFH1     format=F00844_. label="Received antihemophilus H1";
  attrib SFH1D    format=F00845_. label="Antihemophilus H1 day";
  attrib SFH1M    format=F00846_. label="Antihemophilus H1 month";
  attrib SFH1Y    format=F00847_. label="Antihemophilus H1 year";
  attrib SFH2     format=F00848_. label="Received antihemophilus H2";
  attrib SFH2D    format=F00849_. label="Antihemophilus H2 day";
  attrib SFH2M    format=F00850_. label="Antihemophilus H2 month";
  attrib SFH2Y    format=F00851_. label="Antihemophilus H2 year";
  attrib SFH3     format=F00852_. label="Received antihemophilus H3";
  attrib SFH3D    format=F00853_. label="Antihemophilus H3 day";
  attrib SFH3M    format=F00854_. label="Antihemophilus H3 month";
  attrib SFH3Y    format=F00855_. label="Antihemophilus H3 year";
  attrib S461A    format=F00856_. label="When first hepatitis vaccine was received";
  attrib S469B    format=F00857_. label="Last two weeks had: nose congested/liquid";
  attrib S469C    format=F00858_. label="Last two weeks had: throat pain";
  attrib S469D    format=F00859_. label="Last two weeks had: hoarseness (ronquera)";
  attrib S469E    format=F00860_. label="Last two weeks had: difficult to swallow/feeding";
  attrib S469F    format=F00861_. label="Last two weeks had: ear pain or secretions";
  attrib S469G    format=F00862_. label="Last two weeks had: short and rapid breaths";
  attrib S469H    format=F00863_. label="Last two weeks had: difficult to breath";
  attrib S469I    format=F00864_. label="Last two weeks had: blue or purple lips";
  attrib S469J    format=F00865_. label="Last two weeks had: skin hollow between ribs when breathing";
  attrib S474A    format=F00866_. label="During diarrhea had: mucus and/or blood";
  attrib S474B    format=F00867_. label="During diarrhea had: dry or wrinkle skin";
  attrib S474C    format=F00868_. label="During diarrhea had: sunken eyes with no tears";
  attrib S474D    format=F00869_. label="During diarrhea had: sunken mollera";
  attrib S474E    format=F00870_. label="During diarrhea had: dry lips";
  attrib S474F    format=F00871_. label="During diarrhea had: weakness";
  attrib S474G    format=F00872_. label="During diarrhea had: vomiting";
  attrib S475     format=F00873_. label="Bowel movements in worst day";
  attrib S1005    format=F00874_. label="BCG scar on arm or shoulder";
infile 'C:\COUNTRIES\CO41\COBR41FL.DAT' LRECL=1471 MISSOVER ;
    input
    @1    CASEID   $15.
    @16   BIDX     2.0
    @18   V000     $3.
    @21   V001     8.0
    @29   V002     4.0
    @33   V003     3.0
    @36   V004     4.0
    @40   V005     8.0
    @48   V006     2.0
    @50   V007     4.0
    @54   V008     4.0
    @58   V009     2.0
    @60   V010     4.0
    @64   V011     4.0
    @68   V012     2.0
    @70   V013     1.0
    @71   V014     1.0
    @72   V015     1.0
    @73   V016     2.0
    @75   V017     4.0
    @79   V018     2.0
    @81   V019     2.0
    @83   V019A    1.0
    @84   V020     1.0
    @85   V021     4.0
    @89   V022     4.0
    @93   V023     2.0
    @95   V024     2.0
    @97   V025     1.0
    @98   V026     1.0
    @99   V027     1.0
    @100  V028     3.0
    @103  V029     2.0
    @105  V030     3.0
    @108  V031     3.0
    @111  V032     2.0
    @113  V033     8.0
    @121  V034     2.0
    @123  V040     4.0
    @127  V042     1.0
    @128  V043     1.0
    @129  V044     1.0
    @130  V101     2.0
    @132  V102     1.0
    @133  V103     1.0
    @134  V104     2.0
    @136  V105     1.0
    @137  V106     1.0
    @138  V107     2.0
    @140  V113     2.0
    @142  V115     3.0
    @145  V116     2.0
    @147  V119     1.0
    @148  V120     1.0
    @149  V121     1.0
    @150  V122     1.0
    @151  V123     1.0
    @152  V124     1.0
    @153  V125     1.0
    @154  V127     2.0
    @156  V128     2.0
    @158  V129     2.0
    @160  V130     1.0
    @161  V131     2.0
    @163  V133     2.0
    @165  V134     1.0
    @166  V135     1.0
    @167  V136     2.0
    @169  V137     2.0
    @171  V138     2.0
    @173  V139     2.0
    @175  V140     1.0
    @176  V141     1.0
    @177  V149     1.0
    @178  V150     2.0
    @180  V151     1.0
    @181  V152     2.0
    @183  V153     1.0
    @184  AWFACTT  5.0
    @189  AWFACTU  5.0
    @194  AWFACTR  5.0
    @199  AWFACTE  5.0
    @204  V155     1.0
    @205  V156     1.0
    @206  V157     1.0
    @207  V158     1.0
    @208  V159     1.0
    @209  V160     1.0
    @210  V161     2.0
    @212  V162     1.0
    @213  V163     1.0
    @214  V164     1.0
    @215  V165     1.0
    @216  V166     3.0
    @219  V201     2.0
    @221  V202     2.0
    @223  V203     2.0
    @225  V204     2.0
    @227  V205     2.0
    @229  V206     2.0
    @231  V207     2.0
    @233  V208     1.0
    @234  V209     1.0
    @235  V210     1.0
    @236  V211     4.0
    @240  V212     2.0
    @242  V213     1.0
    @243  V214     2.0
    @245  V215     3.0
    @248  V216     1.0
    @249  V217     1.0
    @250  V218     2.0
    @252  V219     2.0
    @254  V220     1.0
    @255  V221     3.0
    @258  V222     3.0
    @261  V223     1.0
    @262  V224     2.0
    @264  V225     1.0
    @265  V226     3.0
    @268  V227     1.0
    @269  V228     1.0
    @270  V229     2.0
    @272  V230     4.0
    @276  V231     4.0
    @280  V232     1.0
    @281  V233     2.0
    @283  V234     1.0
    @284  V235     2.0
    @286  V237     1.0
    @287  V238     1.0
    @288  V239     1.0
    @289  V240     2.0
    @291  V241     4.0
    @295  V242     4.0
    @299  V243     1.0
    @300  V310     2.0
    @302  V311     1.0
    @303  V312     2.0
    @305  V313     1.0
    @306  V315     2.0
    @308  V316     4.0
    @312  V317     4.0
    @316  V318     1.0
    @317  V319     1.0
    @318  V320     1.0
    @319  V321     1.0
    @320  V322     1.0
    @321  V326     2.0
    @323  V327     1.0
    @324  V337     3.0
    @327  V359     2.0
    @329  V360     2.0
    @331  V361     1.0
    @332  V362     1.0
    @333  V363     2.0
    @335  V364     1.0
    @336  V367     1.0
    @337  V375A    2.0
    @339  V376     2.0
    @341  V376A    1.0
    @342  V379     2.0
    @344  V380     1.0
    @345  V384A    1.0
    @346  V384B    1.0
    @347  V384C    1.0
    @348  V393     1.0
    @349  V394     1.0
    @350  V395     1.0
    @351  V3A00A   1.0
    @352  V3A00B   1.0
    @353  V3A00C   1.0
    @354  V3A00D   1.0
    @355  V3A00E   1.0
    @356  V3A00F   1.0
    @357  V3A00G   1.0
    @358  V3A00H   1.0
    @359  V3A00I   1.0
    @360  V3A00J   1.0
    @361  V3A00K   1.0
    @362  V3A00L   1.0
    @363  V3A00M   1.0
    @364  V3A00N   1.0
    @365  V3A00O   1.0
    @366  V3A00P   1.0
    @367  V3A00Q   1.0
    @368  V3A00R   1.0
    @369  V3A00S   1.0
    @370  V3A00T   1.0
    @371  V3A00U   1.0
    @372  V3A00V   1.0
    @373  V3A00W   1.0
    @374  V3A00X   1.0
    @375  V3A00Y   1.0
    @376  V3A00Z   1.0
    @377  V3A01    1.0
    @378  V3A02    1.0
    @379  V3A03    1.0
    @380  V3A04    1.0
    @381  V3A05    1.0
    @382  V3A06    1.0
    @383  V3A07    2.0
    @385  V3A08A   1.0
    @386  V3A08B   1.0
    @387  V3A08C   1.0
    @388  V3A08D   1.0
    @389  V3A08E   1.0
    @390  V3A08F   1.0
    @391  V3A08G   1.0
    @392  V3A08H   1.0
    @393  V3A08I   1.0
    @394  V3A08J   1.0
    @395  V3A08K   1.0
    @396  V3A08L   1.0
    @397  V3A08M   1.0
    @398  V3A08N   1.0
    @399  V3A08O   1.0
    @400  V3A08P   1.0
    @401  V3A08Q   1.0
    @402  V3A08R   1.0
    @403  V3A08S   1.0
    @404  V3A08T   1.0
    @405  V3A08U   1.0
    @406  V3A08V   1.0
    @407  V3A08W   1.0
    @408  V3A08X   1.0
    @409  V3A08Z   1.0
    @410  V401     1.0
    @411  V404     1.0
    @412  V405     1.0
    @413  V406     1.0
    @414  V407     2.0
    @416  V408     2.0
    @418  V415     1.0
    @419  V416     1.0
    @420  V417     1.0
    @421  V418     1.0
    @422  V419     1.0
    @423  V420     3.0
    @426  V421     3.0
    @429  V426     3.0
    @432  V437     4.0
    @436  V438     4.0
    @440  V439     4.0
    @444  V440     4.0
    @448  V441     5.0
    @453  V442     5.0
    @458  V443     5.0
    @463  V444     5.0
    @468  V444A    4.0
    @472  V445     4.0
    @476  V446     4.0
    @480  V447     1.0
    @481  V447A    2.0
    @483  V452A    1.0
    @484  V452B    2.0
    @486  V452C    1.0
    @487  V453     3.0
    @490  V454     1.0
    @491  V455     1.0
    @492  V456     3.0
    @495  V457     1.0
    @496  V458     1.0
    @497  V459     1.0
    @498  V460     1.0
    @499  V461     1.0
    @500  V462     1.0
    @501  V463A    1.0
    @502  V463B    1.0
    @503  V463C    1.0
    @504  V463D    1.0
    @505  V463E    1.0
    @506  V463F    1.0
    @507  V463G    1.0
    @508  V463Z    1.0
    @509  V464     2.0
    @511  V465     2.0
    @513  V466     1.0
    @514  V467A    1.0
    @515  V467B    1.0
    @516  V467C    1.0
    @517  V467D    1.0
    @518  V467E    1.0
    @519  V467F    1.0
    @520  V467G    1.0
    @521  V468     1.0
    @522  V469A    1.0
    @523  V469B    1.0
    @524  V469C    1.0
    @525  V469D    1.0
    @526  V469E    1.0
    @527  V469F    1.0
    @528  V469G    1.0
    @529  V469H    1.0
    @530  V469I    1.0
    @531  V469J    1.0
    @532  V469K    1.0
    @533  V469L    1.0
    @534  V469M    1.0
    @535  V469N    1.0
    @536  V469O    1.0
    @537  V469P    1.0
    @538  V469Q    1.0
    @539  V469R    1.0
    @540  V469S    1.0
    @541  V469T    1.0
    @542  V469U    1.0
    @543  V469V    1.0
    @544  V469W    1.0
    @545  V469X    1.0
    @546  V469Y    1.0
    @547  V469Z    1.0
    @548  V469XX   1.0
    @549  V469XY   1.0
    @550  V469XZ   1.0
    @551  V470A    1.0
    @552  V470B    1.0
    @553  V470C    1.0
    @554  V470D    1.0
    @555  V470E    1.0
    @556  V470F    1.0
    @557  V470G    1.0
    @558  V470H    1.0
    @559  V470I    1.0
    @560  V470J    1.0
    @561  V470K    1.0
    @562  V470L    1.0
    @563  V470M    1.0
    @564  V470N    1.0
    @565  V470O    1.0
    @566  V470P    1.0
    @567  V470Q    1.0
    @568  V470R    1.0
    @569  V470S    1.0
    @570  V470T    1.0
    @571  V470U    1.0
    @572  V470V    1.0
    @573  V470W    1.0
    @574  V470X    1.0
    @575  V470Y    1.0
    @576  V470Z    1.0
    @577  V470XX   1.0
    @578  V470XY   1.0
    @579  V470XZ   1.0
    @580  V501     1.0
    @581  V502     1.0
    @582  V503     1.0
    @583  V504     1.0
    @584  V505     2.0
    @586  V506     2.0
    @588  V507     2.0
    @590  V508     4.0
    @594  V509     4.0
    @598  V510     1.0
    @599  V511     2.0
    @601  V512     2.0
    @603  V513     1.0
    @604  V525     2.0
    @606  V527     3.0
    @609  V528     2.0
    @611  V529     3.0
    @614  V530     1.0
    @615  V531     2.0
    @617  V532     1.0
    @618  V535     1.0
    @619  V536     1.0
    @620  V537     2.0
    @622  V602     1.0
    @623  V603     3.0
    @626  V604     1.0
    @627  V605     1.0
    @628  V610     1.0
    @629  V611     1.0
    @630  V612     1.0
    @631  V613     2.0
    @633  V614     1.0
    @634  V616     3.0
    @637  V621     1.0
    @638  V623     1.0
    @639  V624     2.0
    @641  V625     1.0
    @642  V626     2.0
    @644  V627     2.0
    @646  V628     2.0
    @648  V629     2.0
    @650  V630A    1.0
    @651  V630B    1.0
    @652  V630C    1.0
    @653  V630D    1.0
    @654  V630E    1.0
    @655  V630F    1.0
    @656  V630G    1.0
    @657  V630H    1.0
    @658  V630I    1.0
    @659  V630J    1.0
    @660  V630K    1.0
    @661  V630L    1.0
    @662  V630M    1.0
    @663  V630N    1.0
    @664  V630O    1.0
    @665  V630X    1.0
    @666  V631     1.0
    @667  V632     1.0
    @668  V633A    1.0
    @669  V633B    1.0
    @670  V633C    1.0
    @671  V633D    1.0
    @672  V633E    1.0
    @673  V633F    1.0
    @674  V633G    1.0
    @675  V701     1.0
    @676  V702     2.0
    @678  V704     3.0
    @681  V705     2.0
    @683  V714     1.0
    @684  V715     2.0
    @686  V716     3.0
    @689  V717     2.0
    @691  V719     1.0
    @692  V721     1.0
    @693  V729     1.0
    @694  V730     2.0
    @696  V731     1.0
    @697  V732     1.0
    @698  V739     1.0
    @699  V740     1.0
    @700  V741     1.0
    @701  V742     1.0
    @702  V743A    1.0
    @703  V743B    1.0
    @704  V743C    1.0
    @705  V743D    1.0
    @706  V743E    1.0
    @707  V744A    1.0
    @708  V744B    1.0
    @709  V744C    1.0
    @710  V744D    1.0
    @711  V744E    1.0
    @712  BORD     2.0
    @714  B0       1.0
    @715  B1       2.0
    @717  B2       4.0
    @721  B3       4.0
    @725  B4       1.0
    @726  B5       1.0
    @727  B6       3.0
    @730  B7       3.0
    @733  B8       2.0
    @735  B9       1.0
    @736  B10      1.0
    @737  B11      3.0
    @740  B12      3.0
    @743  B13      1.0
    @744  B15      1.0
    @745  B16      2.0
    @747  MIDX     1.0
    @748  M1       1.0
    @749  M2A      1.0
    @750  M2B      1.0
    @751  M2C      1.0
    @752  M2D      1.0
    @753  M2E      1.0
    @754  M2F      1.0
    @755  M2G      1.0
    @756  M2H      1.0
    @757  M2I      1.0
    @758  M2J      1.0
    @759  M2K      1.0
    @760  M2L      1.0
    @761  M2M      1.0
    @762  M2N      1.0
    @763  M3A      1.0
    @764  M3B      1.0
    @765  M3C      1.0
    @766  M3D      1.0
    @767  M3E      1.0
    @768  M3F      1.0
    @769  M3G      1.0
    @770  M3H      1.0
    @771  M3I      1.0
    @772  M3J      1.0
    @773  M3K      1.0
    @774  M3L      1.0
    @775  M3M      1.0
    @776  M3N      1.0
    @777  M4       2.0
    @779  M5       2.0
    @781  M6       2.0
    @783  M7       2.0
    @785  M8       2.0
    @787  M9       2.0
    @789  M10      1.0
    @790  M11      3.0
    @793  M13      2.0
    @795  M14      2.0
    @797  M15      2.0
    @799  M17      1.0
    @800  M18      1.0
    @801  M19      4.0
    @805  M19A     1.0
    @806  M27      1.0
    @807  M28      1.0
    @808  M29      1.0
    @809  M34      3.0
    @812  M35      2.0
    @814  M36      2.0
    @816  M37A     1.0
    @817  M37B     1.0
    @818  M37C     1.0
    @819  M37D     1.0
    @820  M37E     1.0
    @821  M37F     1.0
    @822  M37G     1.0
    @823  M37H     1.0
    @824  M37I     1.0
    @825  M37J     1.0
    @826  M37K     1.0
    @827  M37L     1.0
    @828  M37M     1.0
    @829  M37N     1.0
    @830  M37O     1.0
    @831  M37P     1.0
    @832  M37Q     1.0
    @833  M37R     1.0
    @834  M37S     1.0
    @835  M37T     1.0
    @836  M37U     1.0
    @837  M37V     1.0
    @838  M37W     1.0
    @839  M37X     1.0
    @840  M37Y     1.0
    @841  M37Z     1.0
    @842  M37XX    1.0
    @843  M37XY    1.0
    @844  M37XZ    1.0
    @845  M38      1.0
    @846  M39      1.0
    @847  M40A     1.0
    @848  M40B     1.0
    @849  M40C     1.0
    @850  M40D     1.0
    @851  M40E     1.0
    @852  M40F     1.0
    @853  M40G     1.0
    @854  M40H     1.0
    @855  M40I     1.0
    @856  M40J     1.0
    @857  M40K     1.0
    @858  M40L     1.0
    @859  M40M     1.0
    @860  M40N     1.0
    @861  M40O     1.0
    @862  M40P     1.0
    @863  M40Q     1.0
    @864  M40R     1.0
    @865  M40S     1.0
    @866  M40T     1.0
    @867  M40U     1.0
    @868  M40V     1.0
    @869  M40W     1.0
    @870  M40X     1.0
    @871  M40Y     1.0
    @872  M40Z     1.0
    @873  M40XX    1.0
    @874  M40XY    1.0
    @875  M40XZ    1.0
    @876  M41      2.0
    @878  M42A     1.0
    @879  M42B     1.0
    @880  M42C     1.0
    @881  M42D     1.0
    @882  M42E     1.0
    @883  M43      1.0
    @884  M44      1.0
    @885  M45      1.0
    @886  M46      3.0
    @889  M47      1.0
    @890  M48      1.0
    @891  M49A     1.0
    @892  M49B     1.0
    @893  M49C     1.0
    @894  M49D     1.0
    @895  M49E     1.0
    @896  M49F     1.0
    @897  M49G     1.0
    @898  M49X     1.0
    @899  M49Z     1.0
    @900  M50      1.0
    @901  M51      3.0
    @904  M52      2.0
    @906  M53      2.0
    @908  M54      1.0
    @909  M55A     1.0
    @910  M55B     1.0
    @911  M55C     1.0
    @912  M55D     1.0
    @913  M55E     1.0
    @914  M55F     1.0
    @915  M55G     1.0
    @916  M55H     1.0
    @917  M55I     1.0
    @918  M55J     1.0
    @919  M55K     1.0
    @920  M55L     1.0
    @921  M55M     1.0
    @922  M55N     1.0
    @923  M55X     1.0
    @924  M55Z     1.0
    @925  M56      1.0
    @926  HIDX     1.0
    @927  H1       1.0
    @928  H2       1.0
    @929  H2D      2.0
    @931  H2M      2.0
    @933  H2Y      4.0
    @937  H3       1.0
    @938  H3D      2.0
    @940  H3M      2.0
    @942  H3Y      4.0
    @946  H4       1.0
    @947  H4D      2.0
    @949  H4M      2.0
    @951  H4Y      4.0
    @955  H5       1.0
    @956  H5D      2.0
    @958  H5M      2.0
    @960  H5Y      4.0
    @964  H6       1.0
    @965  H6D      2.0
    @967  H6M      2.0
    @969  H6Y      4.0
    @973  H7       1.0
    @974  H7D      2.0
    @976  H7M      2.0
    @978  H7Y      4.0
    @982  H8       1.0
    @983  H8D      2.0
    @985  H8M      2.0
    @987  H8Y      4.0
    @991  H9       1.0
    @992  H9D      2.0
    @994  H9M      2.0
    @996  H9Y      4.0
    @1000 H0       1.0
    @1001 H0D      2.0
    @1003 H0M      2.0
    @1005 H0Y      4.0
    @1009 H10      1.0
    @1010 H11      1.0
    @1011 H12A     1.0
    @1012 H12B     1.0
    @1013 H12C     1.0
    @1014 H12D     1.0
    @1015 H12E     1.0
    @1016 H12F     1.0
    @1017 H12G     1.0
    @1018 H12H     1.0
    @1019 H12I     1.0
    @1020 H12J     1.0
    @1021 H12K     1.0
    @1022 H12L     1.0
    @1023 H12M     1.0
    @1024 H12N     1.0
    @1025 H12O     1.0
    @1026 H12P     1.0
    @1027 H12Q     1.0
    @1028 H12R     1.0
    @1029 H12S     1.0
    @1030 H12T     1.0
    @1031 H12U     1.0
    @1032 H12V     1.0
    @1033 H12W     1.0
    @1034 H12X     1.0
    @1035 H12Y     1.0
    @1036 H12Z     1.0
    @1037 H13      1.0
    @1038 H14      1.0
    @1039 H15      1.0
    @1040 H15A     1.0
    @1041 H15B     1.0
    @1042 H15C     1.0
    @1043 H15D     1.0
    @1044 H15E     1.0
    @1045 H15F     1.0
    @1046 H15G     1.0
    @1047 H15H     1.0
    @1048 H20      1.0
    @1049 H21A     1.0
    @1050 H21      1.0
    @1051 H22      1.0
    @1052 H31      1.0
    @1053 H31B     1.0
    @1054 H32A     1.0
    @1055 H32B     1.0
    @1056 H32C     1.0
    @1057 H32D     1.0
    @1058 H32E     1.0
    @1059 H32F     1.0
    @1060 H32G     1.0
    @1061 H32H     1.0
    @1062 H32I     1.0
    @1063 H32J     1.0
    @1064 H32K     1.0
    @1065 H32L     1.0
    @1066 H32M     1.0
    @1067 H32N     1.0
    @1068 H32O     1.0
    @1069 H32P     1.0
    @1070 H32Q     1.0
    @1071 H32R     1.0
    @1072 H32S     1.0
    @1073 H32T     1.0
    @1074 H32U     1.0
    @1075 H32V     1.0
    @1076 H32W     1.0
    @1077 H32X     1.0
    @1078 H32Y     1.0
    @1079 H32Z     1.0
    @1080 H33      1.0
    @1081 H33D     2.0
    @1083 H33M     2.0
    @1085 H33Y     4.0
    @1089 H34      1.0
    @1090 H35      1.0
    @1091 H36A     1.0
    @1092 H36B     1.0
    @1093 H36C     1.0
    @1094 H36D     1.0
    @1095 H36E     1.0
    @1096 H36F     1.0
    @1097 H37A     1.0
    @1098 H37B     1.0
    @1099 H37C     1.0
    @1100 H37D     1.0
    @1101 H37E     1.0
    @1102 H37F     1.0
    @1103 H37G     1.0
    @1104 H37H     1.0
    @1105 H37X     1.0
    @1106 H37Y     1.0
    @1107 H37Z     1.0
    @1108 H38      1.0
    @1109 H39      1.0
    @1110 HWIDX    1.0
    @1111 HW1      2.0
    @1113 HW2      3.0
    @1116 HW3      4.0
    @1120 HW4      4.0
    @1124 HW5      4.0
    @1128 HW6      5.0
    @1133 HW7      4.0
    @1137 HW8      4.0
    @1141 HW9      5.0
    @1146 HW10     4.0
    @1150 HW11     4.0
    @1154 HW12     5.0
    @1159 HW13     1.0
    @1160 HW15     1.0
    @1161 HW16     2.0
    @1163 HW17     2.0
    @1165 HW18     2.0
    @1167 HW19     4.0
    @1171 HW51     2.0
    @1173 HW52     1.0
    @1174 HW53     3.0
    @1177 HW55     1.0
    @1178 HW56     4.0
    @1182 HW57     1.0
    @1183 HW58     1.0
    @1184 SSUBREG  2.0
    @1186 SDEPTO   2.0
    @1188 SMUNIP   2.0
    @1190 SAREA    1.0
    @1191 SMUEST   3.0
    @1194 SLOCAL   1.0
    @1195 S107     1.0
    @1196 S109     1.0
    @1197 S110     2.0
    @1199 S229     2.0
    @1201 S229A    1.0
    @1202 S229B    1.0
    @1203 S229C    1.0
    @1204 S230     3.0
    @1207 S231A    1.0
    @1208 S231B    1.0
    @1209 S231C    1.0
    @1210 S231D    1.0
    @1211 S231E    1.0
    @1212 S231F    1.0
    @1213 S231X    1.0
    @1214 S236     1.0
    @1215 S237     2.0
    @1217 S314     1.0
    @1218 S315B    1.0
    @1219 S315C    1.0
    @1220 S317AA   2.0
    @1222 S317AB   2.0
    @1224 S317AC   2.0
    @1226 S317B    1.0
    @1227 S327B    1.0
    @1228 S327C    1.0
    @1229 S327EA   1.0
    @1230 S327EB   1.0
    @1231 S327EC   1.0
    @1232 S327ED   1.0
    @1233 S327EE   1.0
    @1234 S327EF   1.0
    @1235 S327EG   1.0
    @1236 S327EH   1.0
    @1237 S327EI   1.0
    @1238 S327EJ   1.0
    @1239 S327EK   1.0
    @1240 S335     1.0
    @1241 S338     1.0
    @1242 S487A    1.0
    @1243 S487B    1.0
    @1244 S487C    1.0
    @1245 S487D    1.0
    @1246 S487E    1.0
    @1247 S487F    1.0
    @1248 S487G    1.0
    @1249 S487X    1.0
    @1250 S487Z    1.0
    @1251 S490     1.0
    @1252 S494     2.0
    @1254 S500A    1.0
    @1255 S500B    1.0
    @1256 S500C    1.0
    @1257 S500D    1.0
    @1258 S508A    2.0
    @1260 S517     1.0
    @1261 S518     1.0
    @1262 S711     2.0
    @1264 S719     2.0
    @1266 S720     1.0
    @1267 S723M    2.0
    @1269 S723Y    4.0
    @1273 S724A    3.0
    @1276 S724B    2.0
    @1278 S725     1.0
    @1279 S726     2.0
    @1281 S727     2.0
    @1283 S727A    1.0
    @1284 S727B    1.0
    @1285 S727C    1.0
    @1286 S727D    1.0
    @1287 S727X    1.0
    @1288 S801A    1.0
    @1289 S801B    1.0
    @1290 S807A    1.0
    @1291 S807B    1.0
    @1292 S807C    1.0
    @1293 S807D    1.0
    @1294 S807E    1.0
    @1295 S807F    1.0
    @1296 S807G    1.0
    @1297 S807H    1.0
    @1298 S807I    1.0
    @1299 S807J    1.0
    @1300 S807A1   1.0
    @1301 S808A    1.0
    @1302 S808B    1.0
    @1303 S808C    1.0
    @1304 S808D    1.0
    @1305 S808E    1.0
    @1306 S808F    1.0
    @1307 S808X    1.0
    @1308 S808Z    1.0
    @1309 S810     1.0
    @1310 S811     1.0
    @1311 S812     1.0
    @1312 S816X    1.0
    @1313 S816Z    1.0
    @1314 S817     1.0
    @1315 S819     1.0
    @1316 S820     1.0
    @1317 S717A    1.0
    @1318 S717B    1.0
    @1319 S717C    1.0
    @1320 S717D    1.0
    @1321 S1007    3.0
    @1324 IDX94    1.0
    @1325 S407A    2.0
    @1327 S411A    1.0
    @1328 S411B    1.0
    @1329 S412B    1.0
    @1330 S418     1.0
    @1331 S418A    2.0
    @1333 S418B    1.0
    @1334 S418C    2.0
    @1336 S418EA   1.0
    @1337 S418EB   1.0
    @1338 S418EC   1.0
    @1339 S418EX   1.0
    @1340 S418F    1.0
    @1341 S420     3.0
    @1344 S420AA   1.0
    @1345 S420AB   1.0
    @1346 S420AC   1.0
    @1347 S420AD   1.0
    @1348 S420AE   1.0
    @1349 S420AF   1.0
    @1350 S420AX   1.0
    @1351 S421A    1.0
    @1352 S421B    1.0
    @1353 S423AA   1.0
    @1354 S423AB   1.0
    @1355 S423AC   1.0
    @1356 S423AD   1.0
    @1357 S423AE   1.0
    @1358 S424B    2.0
    @1360 S425     1.0
    @1361 S426A    1.0
    @1362 S426B    1.0
    @1363 S426C    1.0
    @1364 S426D    1.0
    @1365 S426E    1.0
    @1366 S426F    1.0
    @1367 S426G    1.0
    @1368 S426BA   1.0
    @1369 S427BA   1.0
    @1370 S427BB   1.0
    @1371 S427BC   1.0
    @1372 S427BD   1.0
    @1373 S427BX   1.0
    @1374 S435     2.0
    @1376 S440     2.0
    @1378 S441     1.0
    @1379 S442     2.0
    @1381 S449     1.0
    @1382 S450A    1.0
    @1383 S450B    1.0
    @1384 S450C    1.0
    @1385 S450D    2.0
    @1387 S450E    1.0
    @1388 IDX95    1.0
    @1389 SPB1     1.0
    @1390 SPB1D    2.0
    @1392 SPB1M    2.0
    @1394 SPB1Y    4.0
    @1398 SPB2     1.0
    @1399 SPB2D    2.0
    @1401 SPB2M    2.0
    @1403 SPB2Y    4.0
    @1407 SPB3     1.0
    @1408 SPB3D    2.0
    @1410 SPB3M    2.0
    @1412 SPB3Y    4.0
    @1416 S456T    1.0
    @1417 S456TD   2.0
    @1419 S456TM   2.0
    @1421 S456TY   4.0
    @1425 SFH1     1.0
    @1426 SFH1D    2.0
    @1428 SFH1M    2.0
    @1430 SFH1Y    4.0
    @1434 SFH2     1.0
    @1435 SFH2D    2.0
    @1437 SFH2M    2.0
    @1439 SFH2Y    4.0
    @1443 SFH3     1.0
    @1444 SFH3D    2.0
    @1446 SFH3M    2.0
    @1448 SFH3Y    4.0
    @1452 S461A    1.0
    @1453 S469B    1.0
    @1454 S469C    1.0
    @1455 S469D    1.0
    @1456 S469E    1.0
    @1457 S469F    1.0
    @1458 S469G    1.0
    @1459 S469H    1.0
    @1460 S469I    1.0
    @1461 S469J    1.0
    @1462 S474A    1.0
    @1463 S474B    1.0
    @1464 S474C    1.0
    @1465 S474D    1.0
    @1466 S474E    1.0
    @1467 S474F    1.0
    @1468 S474G    1.0
    @1469 S475     2.0
    @1471 S1005    1.0
    ;
    if V015     =      9 then V015 = .;
    if V026     =      9 then V026 = .;
    if V028     =    999 then V028 = .;
    if V029     =     99 then V029 = .;
    if V030     =    999 then V030 = .;
    if V031     =    999 then V031 = .;
    if V032     =     99 then V032 = .;
    if V034     =     99 then V034 = .;
    if V103     =      9 then V103 = .;
    if V104     =     99 then V104 = .;
    if V105     =      9 then V105 = .;
    if V106     =      9 then V106 = .;
    if V107     =     99 then V107 = .;
    if V113     =     99 then V113 = .;
    if V115     =    999 then V115 = .;
    if V116     =     99 then V116 = .;
    if V119     =      9 then V119 = .;
    if V120     =      9 then V120 = .;
    if V121     =      9 then V121 = .;
    if V122     =      9 then V122 = .;
    if V123     =      9 then V123 = .;
    if V124     =      9 then V124 = .;
    if V125     =      9 then V125 = .;
    if V127     =     99 then V127 = .;
    if V128     =     99 then V128 = .;
    if V129     =     99 then V129 = .;
    if V130     =      9 then V130 = .;
    if V131     =     99 then V131 = .;
    if V133     =     99 then V133 = .;
    if V134     =      9 then V134 = .;
    if V135     =      9 then V135 = .;
    if V139     =     99 then V139 = .;
    if V140     =      9 then V140 = .;
    if V141     =      9 then V141 = .;
    if V149     =      9 then V149 = .;
    if V150     =     99 then V150 = .;
    if V152     =     99 then V152 = .;
    if V153     =      9 then V153 = .;
    if V155     =      9 then V155 = .;
    if V156     =      9 then V156 = .;
    if V157     =      9 then V157 = .;
    if V158     =      9 then V158 = .;
    if V159     =      9 then V159 = .;
    if V160     =      9 then V160 = .;
    if V161     =     99 then V161 = .;
    if V162     =      9 then V162 = .;
    if V163     =      9 then V163 = .;
    if V164     =      9 then V164 = .;
    if V165     =      9 then V165 = .;
    if V166     =    999 then V166 = .;
    if V215     =    999 then V215 = .;
    if V217     =      9 then V217 = .;
    if V225     =      9 then V225 = .;
    if V226     =    999 then V226 = .;
    if V228     =      9 then V228 = .;
    if V229     =     99 then V229 = .;
    if V230     =   9999 then V230 = .;
    if V231     =   9999 then V231 = .;
    if V233     =     99 then V233 = .;
    if V234     =      9 then V234 = .;
    if V237     =      9 then V237 = .;
    if V239     =      9 then V239 = .;
    if V240     =     99 then V240 = .;
    if V241     =   9999 then V241 = .;
    if V242     =   9999 then V242 = .;
    if V310     =     99 then V310 = .;
    if V311     =      9 then V311 = .;
    if V312     =     99 then V312 = .;
    if V313     =      9 then V313 = .;
    if V326     =     99 then V326 = .;
    if V327     =      9 then V327 = .;
    if V337     =    999 then V337 = .;
    if V359     =     99 then V359 = .;
    if V360     =     99 then V360 = .;
    if V362     =      9 then V362 = .;
    if V363     =     99 then V363 = .;
    if V367     =      9 then V367 = .;
    if V375A    =     99 then V375A = .;
    if V376     =     99 then V376 = .;
    if V376A    =      9 then V376A = .;
    if V379     =     99 then V379 = .;
    if V380     =      9 then V380 = .;
    if V384A    =      9 then V384A = .;
    if V384B    =      9 then V384B = .;
    if V384C    =      9 then V384C = .;
    if V393     =      9 then V393 = .;
    if V394     =      9 then V394 = .;
    if V395     =      9 then V395 = .;
    if V3A00A   =      9 then V3A00A = .;
    if V3A00B   =      9 then V3A00B = .;
    if V3A00C   =      9 then V3A00C = .;
    if V3A00D   =      9 then V3A00D = .;
    if V3A00E   =      9 then V3A00E = .;
    if V3A00F   =      9 then V3A00F = .;
    if V3A00G   =      9 then V3A00G = .;
    if V3A00H   =      9 then V3A00H = .;
    if V3A00I   =      9 then V3A00I = .;
    if V3A00J   =      9 then V3A00J = .;
    if V3A00K   =      9 then V3A00K = .;
    if V3A00L   =      9 then V3A00L = .;
    if V3A00M   =      9 then V3A00M = .;
    if V3A00N   =      9 then V3A00N = .;
    if V3A00O   =      9 then V3A00O = .;
    if V3A00P   =      9 then V3A00P = .;
    if V3A00Q   =      9 then V3A00Q = .;
    if V3A00R   =      9 then V3A00R = .;
    if V3A00S   =      9 then V3A00S = .;
    if V3A00T   =      9 then V3A00T = .;
    if V3A00U   =      9 then V3A00U = .;
    if V3A00V   =      9 then V3A00V = .;
    if V3A00W   =      9 then V3A00W = .;
    if V3A00X   =      9 then V3A00X = .;
    if V3A00Y   =      9 then V3A00Y = .;
    if V3A00Z   =      9 then V3A00Z = .;
    if V3A01    =      9 then V3A01 = .;
    if V3A02    =      9 then V3A02 = .;
    if V3A03    =      9 then V3A03 = .;
    if V3A04    =      9 then V3A04 = .;
    if V3A05    =      9 then V3A05 = .;
    if V3A06    =      9 then V3A06 = .;
    if V3A07    =     99 then V3A07 = .;
    if V3A08A   =      9 then V3A08A = .;
    if V3A08B   =      9 then V3A08B = .;
    if V3A08C   =      9 then V3A08C = .;
    if V3A08D   =      9 then V3A08D = .;
    if V3A08E   =      9 then V3A08E = .;
    if V3A08F   =      9 then V3A08F = .;
    if V3A08G   =      9 then V3A08G = .;
    if V3A08H   =      9 then V3A08H = .;
    if V3A08I   =      9 then V3A08I = .;
    if V3A08J   =      9 then V3A08J = .;
    if V3A08K   =      9 then V3A08K = .;
    if V3A08L   =      9 then V3A08L = .;
    if V3A08M   =      9 then V3A08M = .;
    if V3A08N   =      9 then V3A08N = .;
    if V3A08O   =      9 then V3A08O = .;
    if V3A08P   =      9 then V3A08P = .;
    if V3A08Q   =      9 then V3A08Q = .;
    if V3A08R   =      9 then V3A08R = .;
    if V3A08S   =      9 then V3A08S = .;
    if V3A08T   =      9 then V3A08T = .;
    if V3A08U   =      9 then V3A08U = .;
    if V3A08V   =      9 then V3A08V = .;
    if V3A08W   =      9 then V3A08W = .;
    if V3A08X   =      9 then V3A08X = .;
    if V3A08Z   =      9 then V3A08Z = .;
    if V401     =      9 then V401 = .;
    if V407     =     99 then V407 = .;
    if V408     =     99 then V408 = .;
    if V415     =      9 then V415 = .;
    if V416     =      9 then V416 = .;
    if V420     =    999 then V420 = .;
    if V421     =    999 then V421 = .;
    if V426     =    999 then V426 = .;
    if V437     =   9999 then V437 = .;
    if V438     =   9999 then V438 = .;
    if V439     =   9999 then V439 = .;
    if V440     =   9999 then V440 = .;
    if V441     =  99999 then V441 = .;
    if V442     =  99999 then V442 = .;
    if V443     =  99999 then V443 = .;
    if V444     =  99999 then V444 = .;
    if V444A    =   9999 then V444A = .;
    if V445     =   9999 then V445 = .;
    if V446     =   9999 then V446 = .;
    if V447     =      9 then V447 = .;
    if V452A    =      9 then V452A = .;
    if V452B    =     99 then V452B = .;
    if V452C    =      9 then V452C = .;
    if V453     =    999 then V453 = .;
    if V454     =      9 then V454 = .;
    if V456     =    999 then V456 = .;
    if V457     =      9 then V457 = .;
    if V458     =      9 then V458 = .;
    if V459     =      9 then V459 = .;
    if V460     =      9 then V460 = .;
    if V461     =      9 then V461 = .;
    if V462     =      9 then V462 = .;
    if V463A    =      9 then V463A = .;
    if V463B    =      9 then V463B = .;
    if V463C    =      9 then V463C = .;
    if V463D    =      9 then V463D = .;
    if V463E    =      9 then V463E = .;
    if V463F    =      9 then V463F = .;
    if V463G    =      9 then V463G = .;
    if V463Z    =      9 then V463Z = .;
    if V464     =     99 then V464 = .;
    if V465     =     99 then V465 = .;
    if V466     =      9 then V466 = .;
    if V467A    =      9 then V467A = .;
    if V467B    =      9 then V467B = .;
    if V467C    =      9 then V467C = .;
    if V467D    =      9 then V467D = .;
    if V467E    =      9 then V467E = .;
    if V467F    =      9 then V467F = .;
    if V467G    =      9 then V467G = .;
    if V469A    =      9 then V469A = .;
    if V469B    =      9 then V469B = .;
    if V469C    =      9 then V469C = .;
    if V469D    =      9 then V469D = .;
    if V469E    =      9 then V469E = .;
    if V469F    =      9 then V469F = .;
    if V469G    =      9 then V469G = .;
    if V469H    =      9 then V469H = .;
    if V469I    =      9 then V469I = .;
    if V469J    =      9 then V469J = .;
    if V469K    =      9 then V469K = .;
    if V469L    =      9 then V469L = .;
    if V469M    =      9 then V469M = .;
    if V469N    =      9 then V469N = .;
    if V469O    =      9 then V469O = .;
    if V469P    =      9 then V469P = .;
    if V469Q    =      9 then V469Q = .;
    if V469R    =      9 then V469R = .;
    if V469S    =      9 then V469S = .;
    if V469T    =      9 then V469T = .;
    if V469U    =      9 then V469U = .;
    if V469V    =      9 then V469V = .;
    if V469W    =      9 then V469W = .;
    if V469X    =      9 then V469X = .;
    if V469Y    =      9 then V469Y = .;
    if V469Z    =      9 then V469Z = .;
    if V469XX   =      9 then V469XX = .;
    if V469XY   =      9 then V469XY = .;
    if V469XZ   =      9 then V469XZ = .;
    if V470A    =      9 then V470A = .;
    if V470B    =      9 then V470B = .;
    if V470C    =      9 then V470C = .;
    if V470D    =      9 then V470D = .;
    if V470E    =      9 then V470E = .;
    if V470F    =      9 then V470F = .;
    if V470G    =      9 then V470G = .;
    if V470H    =      9 then V470H = .;
    if V470I    =      9 then V470I = .;
    if V470J    =      9 then V470J = .;
    if V470K    =      9 then V470K = .;
    if V470L    =      9 then V470L = .;
    if V470M    =      9 then V470M = .;
    if V470N    =      9 then V470N = .;
    if V470O    =      9 then V470O = .;
    if V470P    =      9 then V470P = .;
    if V470Q    =      9 then V470Q = .;
    if V470R    =      9 then V470R = .;
    if V470S    =      9 then V470S = .;
    if V470T    =      9 then V470T = .;
    if V470U    =      9 then V470U = .;
    if V470V    =      9 then V470V = .;
    if V470W    =      9 then V470W = .;
    if V470X    =      9 then V470X = .;
    if V470Y    =      9 then V470Y = .;
    if V470Z    =      9 then V470Z = .;
    if V470XX   =      9 then V470XX = .;
    if V470XY   =      9 then V470XY = .;
    if V470XZ   =      9 then V470XZ = .;
    if V501     =      9 then V501 = .;
    if V502     =      9 then V502 = .;
    if V503     =      9 then V503 = .;
    if V504     =      9 then V504 = .;
    if V505     =     99 then V505 = .;
    if V506     =     99 then V506 = .;
    if V525     =     99 then V525 = .;
    if V527     =    999 then V527 = .;
    if V528     =     99 then V528 = .;
    if V529     =    999 then V529 = .;
    if V531     =     99 then V531 = .;
    if V535     =      9 then V535 = .;
    if V536     =      9 then V536 = .;
    if V537     =     99 then V537 = .;
    if V602     =      9 then V602 = .;
    if V603     =    999 then V603 = .;
    if V604     =      9 then V604 = .;
    if V605     =      9 then V605 = .;
    if V610     =      9 then V610 = .;
    if V611     =      9 then V611 = .;
    if V612     =      9 then V612 = .;
    if V613     =     99 then V613 = .;
    if V616     =    999 then V616 = .;
    if V621     =      9 then V621 = .;
    if V623     =      9 then V623 = .;
    if V624     =     99 then V624 = .;
    if V625     =      9 then V625 = .;
    if V626     =     99 then V626 = .;
    if V627     =     99 then V627 = .;
    if V628     =     99 then V628 = .;
    if V629     =     99 then V629 = .;
    if V630A    =      9 then V630A = .;
    if V630B    =      9 then V630B = .;
    if V630C    =      9 then V630C = .;
    if V630D    =      9 then V630D = .;
    if V630E    =      9 then V630E = .;
    if V630F    =      9 then V630F = .;
    if V630G    =      9 then V630G = .;
    if V630H    =      9 then V630H = .;
    if V630I    =      9 then V630I = .;
    if V630J    =      9 then V630J = .;
    if V630K    =      9 then V630K = .;
    if V630L    =      9 then V630L = .;
    if V630M    =      9 then V630M = .;
    if V630N    =      9 then V630N = .;
    if V630O    =      9 then V630O = .;
    if V630X    =      9 then V630X = .;
    if V631     =      9 then V631 = .;
    if V632     =      9 then V632 = .;
    if V633A    =      9 then V633A = .;
    if V633B    =      9 then V633B = .;
    if V633C    =      9 then V633C = .;
    if V633D    =      9 then V633D = .;
    if V633E    =      9 then V633E = .;
    if V633F    =      9 then V633F = .;
    if V633G    =      9 then V633G = .;
    if V701     =      9 then V701 = .;
    if V702     =     99 then V702 = .;
    if V704     =    999 then V704 = .;
    if V705     =     99 then V705 = .;
    if V714     =      9 then V714 = .;
    if V715     =     99 then V715 = .;
    if V716     =    999 then V716 = .;
    if V717     =     99 then V717 = .;
    if V719     =      9 then V719 = .;
    if V721     =      9 then V721 = .;
    if V729     =      9 then V729 = .;
    if V730     =     99 then V730 = .;
    if V731     =      9 then V731 = .;
    if V732     =      9 then V732 = .;
    if V739     =      9 then V739 = .;
    if V740     =      9 then V740 = .;
    if V741     =      9 then V741 = .;
    if V742     =      9 then V742 = .;
    if V743A    =      9 then V743A = .;
    if V743B    =      9 then V743B = .;
    if V743C    =      9 then V743C = .;
    if V743D    =      9 then V743D = .;
    if V743E    =      9 then V743E = .;
    if V744A    =      9 then V744A = .;
    if V744B    =      9 then V744B = .;
    if V744C    =      9 then V744C = .;
    if V744D    =      9 then V744D = .;
    if V744E    =      9 then V744E = .;
    if B6       =    999 then B6 = .;
    if B9       =      9 then B9 = .;
    if B15      =      9 then B15 = .;
    if B16      =     99 then B16 = .;
    if M1       =      9 then M1 = .;
    if M2A      =      9 then M2A = .;
    if M2B      =      9 then M2B = .;
    if M2C      =      9 then M2C = .;
    if M2D      =      9 then M2D = .;
    if M2E      =      9 then M2E = .;
    if M2F      =      9 then M2F = .;
    if M2G      =      9 then M2G = .;
    if M2H      =      9 then M2H = .;
    if M2I      =      9 then M2I = .;
    if M2J      =      9 then M2J = .;
    if M2K      =      9 then M2K = .;
    if M2L      =      9 then M2L = .;
    if M2M      =      9 then M2M = .;
    if M2N      =      9 then M2N = .;
    if M3A      =      9 then M3A = .;
    if M3B      =      9 then M3B = .;
    if M3C      =      9 then M3C = .;
    if M3D      =      9 then M3D = .;
    if M3E      =      9 then M3E = .;
    if M3F      =      9 then M3F = .;
    if M3G      =      9 then M3G = .;
    if M3H      =      9 then M3H = .;
    if M3I      =      9 then M3I = .;
    if M3J      =      9 then M3J = .;
    if M3K      =      9 then M3K = .;
    if M3L      =      9 then M3L = .;
    if M3M      =      9 then M3M = .;
    if M3N      =      9 then M3N = .;
    if M4       =     99 then M4 = .;
    if M5       =     99 then M5 = .;
    if M6       =     99 then M6 = .;
    if M7       =     99 then M7 = .;
    if M8       =     99 then M8 = .;
    if M9       =     99 then M9 = .;
    if M10      =      9 then M10 = .;
    if M11      =    999 then M11 = .;
    if M13      =     99 then M13 = .;
    if M14      =     99 then M14 = .;
    if M15      =     99 then M15 = .;
    if M17      =      9 then M17 = .;
    if M18      =      9 then M18 = .;
    if M19      =   9999 then M19 = .;
    if M34      =    999 then M34 = .;
    if M35      =     99 then M35 = .;
    if M36      =     99 then M36 = .;
    if M37A     =      9 then M37A = .;
    if M37B     =      9 then M37B = .;
    if M37C     =      9 then M37C = .;
    if M37D     =      9 then M37D = .;
    if M37E     =      9 then M37E = .;
    if M37F     =      9 then M37F = .;
    if M37G     =      9 then M37G = .;
    if M37H     =      9 then M37H = .;
    if M37I     =      9 then M37I = .;
    if M37J     =      9 then M37J = .;
    if M37K     =      9 then M37K = .;
    if M37L     =      9 then M37L = .;
    if M37M     =      9 then M37M = .;
    if M37N     =      9 then M37N = .;
    if M37O     =      9 then M37O = .;
    if M37P     =      9 then M37P = .;
    if M37Q     =      9 then M37Q = .;
    if M37R     =      9 then M37R = .;
    if M37S     =      9 then M37S = .;
    if M37T     =      9 then M37T = .;
    if M37U     =      9 then M37U = .;
    if M37V     =      9 then M37V = .;
    if M37W     =      9 then M37W = .;
    if M37X     =      9 then M37X = .;
    if M37Y     =      9 then M37Y = .;
    if M37Z     =      9 then M37Z = .;
    if M37XX    =      9 then M37XX = .;
    if M37XY    =      9 then M37XY = .;
    if M37XZ    =      9 then M37XZ = .;
    if M38      =      9 then M38 = .;
    if M39      =      9 then M39 = .;
    if M40A     =      9 then M40A = .;
    if M40B     =      9 then M40B = .;
    if M40C     =      9 then M40C = .;
    if M40D     =      9 then M40D = .;
    if M40E     =      9 then M40E = .;
    if M40F     =      9 then M40F = .;
    if M40G     =      9 then M40G = .;
    if M40H     =      9 then M40H = .;
    if M40I     =      9 then M40I = .;
    if M40J     =      9 then M40J = .;
    if M40K     =      9 then M40K = .;
    if M40L     =      9 then M40L = .;
    if M40M     =      9 then M40M = .;
    if M40N     =      9 then M40N = .;
    if M40O     =      9 then M40O = .;
    if M40P     =      9 then M40P = .;
    if M40Q     =      9 then M40Q = .;
    if M40R     =      9 then M40R = .;
    if M40S     =      9 then M40S = .;
    if M40T     =      9 then M40T = .;
    if M40U     =      9 then M40U = .;
    if M40V     =      9 then M40V = .;
    if M40W     =      9 then M40W = .;
    if M40X     =      9 then M40X = .;
    if M40Y     =      9 then M40Y = .;
    if M40Z     =      9 then M40Z = .;
    if M40XX    =      9 then M40XX = .;
    if M40XY    =      9 then M40XY = .;
    if M40XZ    =      9 then M40XZ = .;
    if M41      =     99 then M41 = .;
    if M42A     =      9 then M42A = .;
    if M42B     =      9 then M42B = .;
    if M42C     =      9 then M42C = .;
    if M42D     =      9 then M42D = .;
    if M42E     =      9 then M42E = .;
    if M43      =      9 then M43 = .;
    if M44      =      9 then M44 = .;
    if M45      =      9 then M45 = .;
    if M46      =    999 then M46 = .;
    if M47      =      9 then M47 = .;
    if M48      =      9 then M48 = .;
    if M49A     =      9 then M49A = .;
    if M49B     =      9 then M49B = .;
    if M49C     =      9 then M49C = .;
    if M49D     =      9 then M49D = .;
    if M49E     =      9 then M49E = .;
    if M49F     =      9 then M49F = .;
    if M49G     =      9 then M49G = .;
    if M49X     =      9 then M49X = .;
    if M49Z     =      9 then M49Z = .;
    if M50      =      9 then M50 = .;
    if M51      =    999 then M51 = .;
    if M52      =     99 then M52 = .;
    if M53      =     99 then M53 = .;
    if M54      =      9 then M54 = .;
    if M55A     =      9 then M55A = .;
    if M55B     =      9 then M55B = .;
    if M55C     =      9 then M55C = .;
    if M55D     =      9 then M55D = .;
    if M55E     =      9 then M55E = .;
    if M55F     =      9 then M55F = .;
    if M55G     =      9 then M55G = .;
    if M55H     =      9 then M55H = .;
    if M55I     =      9 then M55I = .;
    if M55J     =      9 then M55J = .;
    if M55K     =      9 then M55K = .;
    if M55L     =      9 then M55L = .;
    if M55M     =      9 then M55M = .;
    if M55N     =      9 then M55N = .;
    if M55X     =      9 then M55X = .;
    if M55Z     =      9 then M55Z = .;
    if M56      =      9 then M56 = .;
    if H1       =      9 then H1 = .;
    if H2       =      9 then H2 = .;
    if H2D      =     99 then H2D = .;
    if H2M      =     99 then H2M = .;
    if H2Y      =   9999 then H2Y = .;
    if H3       =      9 then H3 = .;
    if H3D      =     99 then H3D = .;
    if H3M      =     99 then H3M = .;
    if H3Y      =   9999 then H3Y = .;
    if H4       =      9 then H4 = .;
    if H4D      =     99 then H4D = .;
    if H4M      =     99 then H4M = .;
    if H4Y      =   9999 then H4Y = .;
    if H5       =      9 then H5 = .;
    if H5D      =     99 then H5D = .;
    if H5M      =     99 then H5M = .;
    if H5Y      =   9999 then H5Y = .;
    if H6       =      9 then H6 = .;
    if H6D      =     99 then H6D = .;
    if H6M      =     99 then H6M = .;
    if H6Y      =   9999 then H6Y = .;
    if H7       =      9 then H7 = .;
    if H7D      =     99 then H7D = .;
    if H7M      =     99 then H7M = .;
    if H7Y      =   9999 then H7Y = .;
    if H8       =      9 then H8 = .;
    if H8D      =     99 then H8D = .;
    if H8M      =     99 then H8M = .;
    if H8Y      =   9999 then H8Y = .;
    if H9       =      9 then H9 = .;
    if H9D      =     99 then H9D = .;
    if H9M      =     99 then H9M = .;
    if H9Y      =   9999 then H9Y = .;
    if H0       =      9 then H0 = .;
    if H0D      =     99 then H0D = .;
    if H0M      =     99 then H0M = .;
    if H0Y      =   9999 then H0Y = .;
    if H10      =      9 then H10 = .;
    if H11      =      9 then H11 = .;
    if H12A     =      9 then H12A = .;
    if H12B     =      9 then H12B = .;
    if H12C     =      9 then H12C = .;
    if H12D     =      9 then H12D = .;
    if H12E     =      9 then H12E = .;
    if H12F     =      9 then H12F = .;
    if H12G     =      9 then H12G = .;
    if H12H     =      9 then H12H = .;
    if H12I     =      9 then H12I = .;
    if H12J     =      9 then H12J = .;
    if H12K     =      9 then H12K = .;
    if H12L     =      9 then H12L = .;
    if H12M     =      9 then H12M = .;
    if H12N     =      9 then H12N = .;
    if H12O     =      9 then H12O = .;
    if H12P     =      9 then H12P = .;
    if H12Q     =      9 then H12Q = .;
    if H12R     =      9 then H12R = .;
    if H12S     =      9 then H12S = .;
    if H12T     =      9 then H12T = .;
    if H12U     =      9 then H12U = .;
    if H12V     =      9 then H12V = .;
    if H12W     =      9 then H12W = .;
    if H12X     =      9 then H12X = .;
    if H12Y     =      9 then H12Y = .;
    if H12Z     =      9 then H12Z = .;
    if H13      =      9 then H13 = .;
    if H14      =      9 then H14 = .;
    if H15      =      9 then H15 = .;
    if H15A     =      9 then H15A = .;
    if H15B     =      9 then H15B = .;
    if H15C     =      9 then H15C = .;
    if H15D     =      9 then H15D = .;
    if H15E     =      9 then H15E = .;
    if H15F     =      9 then H15F = .;
    if H15G     =      9 then H15G = .;
    if H15H     =      9 then H15H = .;
    if H20      =      9 then H20 = .;
    if H21A     =      9 then H21A = .;
    if H21      =      9 then H21 = .;
    if H22      =      9 then H22 = .;
    if H31      =      9 then H31 = .;
    if H31B     =      9 then H31B = .;
    if H32A     =      9 then H32A = .;
    if H32B     =      9 then H32B = .;
    if H32C     =      9 then H32C = .;
    if H32D     =      9 then H32D = .;
    if H32E     =      9 then H32E = .;
    if H32F     =      9 then H32F = .;
    if H32G     =      9 then H32G = .;
    if H32H     =      9 then H32H = .;
    if H32I     =      9 then H32I = .;
    if H32J     =      9 then H32J = .;
    if H32K     =      9 then H32K = .;
    if H32L     =      9 then H32L = .;
    if H32M     =      9 then H32M = .;
    if H32N     =      9 then H32N = .;
    if H32O     =      9 then H32O = .;
    if H32P     =      9 then H32P = .;
    if H32Q     =      9 then H32Q = .;
    if H32R     =      9 then H32R = .;
    if H32S     =      9 then H32S = .;
    if H32T     =      9 then H32T = .;
    if H32U     =      9 then H32U = .;
    if H32V     =      9 then H32V = .;
    if H32W     =      9 then H32W = .;
    if H32X     =      9 then H32X = .;
    if H32Y     =      9 then H32Y = .;
    if H32Z     =      9 then H32Z = .;
    if H33      =      9 then H33 = .;
    if H33D     =     99 then H33D = .;
    if H33M     =     99 then H33M = .;
    if H33Y     =   9999 then H33Y = .;
    if H34      =      9 then H34 = .;
    if H35      =      9 then H35 = .;
    if H36A     =      9 then H36A = .;
    if H36B     =      9 then H36B = .;
    if H36C     =      9 then H36C = .;
    if H36D     =      9 then H36D = .;
    if H36E     =      9 then H36E = .;
    if H36F     =      9 then H36F = .;
    if H37A     =      9 then H37A = .;
    if H37B     =      9 then H37B = .;
    if H37C     =      9 then H37C = .;
    if H37D     =      9 then H37D = .;
    if H37E     =      9 then H37E = .;
    if H37F     =      9 then H37F = .;
    if H37G     =      9 then H37G = .;
    if H37H     =      9 then H37H = .;
    if H37X     =      9 then H37X = .;
    if H37Y     =      9 then H37Y = .;
    if H37Z     =      9 then H37Z = .;
    if H38      =      9 then H38 = .;
    if H39      =      9 then H39 = .;
    if HW2      =    999 then HW2 = .;
    if HW3      =   9999 then HW3 = .;
    if HW4      =   9999 then HW4 = .;
    if HW5      =   9999 then HW5 = .;
    if HW6      =  99999 then HW6 = .;
    if HW7      =   9999 then HW7 = .;
    if HW8      =   9999 then HW8 = .;
    if HW9      =  99999 then HW9 = .;
    if HW10     =   9999 then HW10 = .;
    if HW11     =   9999 then HW11 = .;
    if HW12     =  99999 then HW12 = .;
    if HW13     =      9 then HW13 = .;
    if HW15     =      9 then HW15 = .;
    if HW16     =     99 then HW16 = .;
    if HW52     =      9 then HW52 = .;
    if HW53     =    999 then HW53 = .;
    if HW55     =      9 then HW55 = .;
    if HW56     =   9999 then HW56 = .;
    if HW57     =      9 then HW57 = .;
    if HW58     =      9 then HW58 = .;
    if S107     =      9 then S107 = .;
    if S109     =      9 then S109 = .;
    if S110     =     99 then S110 = .;
    if S229     =     99 then S229 = .;
    if S229A    =      9 then S229A = .;
    if S229B    =      9 then S229B = .;
    if S229C    =      9 then S229C = .;
    if S230     =    999 then S230 = .;
    if S231A    =      9 then S231A = .;
    if S231B    =      9 then S231B = .;
    if S231C    =      9 then S231C = .;
    if S231D    =      9 then S231D = .;
    if S231E    =      9 then S231E = .;
    if S231F    =      9 then S231F = .;
    if S231X    =      9 then S231X = .;
    if S236     =      9 then S236 = .;
    if S237     =     99 then S237 = .;
    if S314     =      9 then S314 = .;
    if S315B    =      9 then S315B = .;
    if S315C    =      9 then S315C = .;
    if S317AA   =     99 then S317AA = .;
    if S317AB   =     99 then S317AB = .;
    if S317AC   =     99 then S317AC = .;
    if S317B    =      9 then S317B = .;
    if S327B    =      9 then S327B = .;
    if S327C    =      9 then S327C = .;
    if S327EA   =      9 then S327EA = .;
    if S327EB   =      9 then S327EB = .;
    if S327EC   =      9 then S327EC = .;
    if S327ED   =      9 then S327ED = .;
    if S327EE   =      9 then S327EE = .;
    if S327EF   =      9 then S327EF = .;
    if S327EG   =      9 then S327EG = .;
    if S327EH   =      9 then S327EH = .;
    if S327EI   =      9 then S327EI = .;
    if S327EJ   =      9 then S327EJ = .;
    if S327EK   =      9 then S327EK = .;
    if S335     =      9 then S335 = .;
    if S338     =      9 then S338 = .;
    if S487A    =      9 then S487A = .;
    if S487B    =      9 then S487B = .;
    if S487C    =      9 then S487C = .;
    if S487D    =      9 then S487D = .;
    if S487E    =      9 then S487E = .;
    if S487F    =      9 then S487F = .;
    if S487G    =      9 then S487G = .;
    if S487X    =      9 then S487X = .;
    if S487Z    =      9 then S487Z = .;
    if S490     =      9 then S490 = .;
    if S494     =     99 then S494 = .;
    if S500A    =      9 then S500A = .;
    if S500B    =      9 then S500B = .;
    if S500C    =      9 then S500C = .;
    if S500D    =      9 then S500D = .;
    if S508A    =     99 then S508A = .;
    if S517     =      9 then S517 = .;
    if S518     =      9 then S518 = .;
    if S711     =     99 then S711 = .;
    if S719     =     99 then S719 = .;
    if S720     =      9 then S720 = .;
    if S723M    =     99 then S723M = .;
    if S723Y    =   9999 then S723Y = .;
    if S724A    =    999 then S724A = .;
    if S725     =      9 then S725 = .;
    if S726     =     99 then S726 = .;
    if S727     =     99 then S727 = .;
    if S727A    =      9 then S727A = .;
    if S727B    =      9 then S727B = .;
    if S727C    =      9 then S727C = .;
    if S727D    =      9 then S727D = .;
    if S727X    =      9 then S727X = .;
    if S801A    =      9 then S801A = .;
    if S801B    =      9 then S801B = .;
    if S807A    =      9 then S807A = .;
    if S807B    =      9 then S807B = .;
    if S807C    =      9 then S807C = .;
    if S807D    =      9 then S807D = .;
    if S807E    =      9 then S807E = .;
    if S807F    =      9 then S807F = .;
    if S807G    =      9 then S807G = .;
    if S807H    =      9 then S807H = .;
    if S807I    =      9 then S807I = .;
    if S807J    =      9 then S807J = .;
    if S807A1   =      9 then S807A1 = .;
    if S808A    =      9 then S808A = .;
    if S808B    =      9 then S808B = .;
    if S808C    =      9 then S808C = .;
    if S808D    =      9 then S808D = .;
    if S808E    =      9 then S808E = .;
    if S808F    =      9 then S808F = .;
    if S808X    =      9 then S808X = .;
    if S808Z    =      9 then S808Z = .;
    if S810     =      9 then S810 = .;
    if S811     =      9 then S811 = .;
    if S812     =      9 then S812 = .;
    if S816X    =      9 then S816X = .;
    if S816Z    =      9 then S816Z = .;
    if S817     =      9 then S817 = .;
    if S819     =      9 then S819 = .;
    if S820     =      9 then S820 = .;
    if S717A    =      9 then S717A = .;
    if S717B    =      9 then S717B = .;
    if S717C    =      9 then S717C = .;
    if S717D    =      9 then S717D = .;
    if S1007    =    999 then S1007 = .;
    if S407A    =     99 then S407A = .;
    if S411A    =      9 then S411A = .;
    if S411B    =      9 then S411B = .;
    if S412B    =      9 then S412B = .;
    if S418     =      9 then S418 = .;
    if S418A    =     99 then S418A = .;
    if S418B    =      9 then S418B = .;
    if S418C    =     99 then S418C = .;
    if S418EA   =      9 then S418EA = .;
    if S418EB   =      9 then S418EB = .;
    if S418EC   =      9 then S418EC = .;
    if S418EX   =      9 then S418EX = .;
    if S418F    =      9 then S418F = .;
    if S420     =    999 then S420 = .;
    if S420AA   =      9 then S420AA = .;
    if S420AB   =      9 then S420AB = .;
    if S420AC   =      9 then S420AC = .;
    if S420AD   =      9 then S420AD = .;
    if S420AE   =      9 then S420AE = .;
    if S420AF   =      9 then S420AF = .;
    if S420AX   =      9 then S420AX = .;
    if S421A    =      9 then S421A = .;
    if S421B    =      9 then S421B = .;
    if S423AA   =      9 then S423AA = .;
    if S423AB   =      9 then S423AB = .;
    if S423AC   =      9 then S423AC = .;
    if S423AD   =      9 then S423AD = .;
    if S423AE   =      9 then S423AE = .;
    if S424B    =     99 then S424B = .;
    if S425     =      9 then S425 = .;
    if S426A    =      9 then S426A = .;
    if S426B    =      9 then S426B = .;
    if S426C    =      9 then S426C = .;
    if S426D    =      9 then S426D = .;
    if S426E    =      9 then S426E = .;
    if S426F    =      9 then S426F = .;
    if S426G    =      9 then S426G = .;
    if S426BA   =      9 then S426BA = .;
    if S427BA   =      9 then S427BA = .;
    if S427BB   =      9 then S427BB = .;
    if S427BC   =      9 then S427BC = .;
    if S427BD   =      9 then S427BD = .;
    if S427BX   =      9 then S427BX = .;
    if S435     =     99 then S435 = .;
    if S440     =     99 then S440 = .;
    if S441     =      9 then S441 = .;
    if S442     =     99 then S442 = .;
    if S449     =      9 then S449 = .;
    if S450A    =      9 then S450A = .;
    if S450B    =      9 then S450B = .;
    if S450C    =      9 then S450C = .;
    if S450D    =     99 then S450D = .;
    if S450E    =      9 then S450E = .;
    if SPB1     =      9 then SPB1 = .;
    if SPB1D    =     99 then SPB1D = .;
    if SPB1M    =     99 then SPB1M = .;
    if SPB1Y    =   9999 then SPB1Y = .;
    if SPB2     =      9 then SPB2 = .;
    if SPB2D    =     99 then SPB2D = .;
    if SPB2M    =     99 then SPB2M = .;
    if SPB2Y    =   9999 then SPB2Y = .;
    if SPB3     =      9 then SPB3 = .;
    if SPB3D    =     99 then SPB3D = .;
    if SPB3M    =     99 then SPB3M = .;
    if SPB3Y    =   9999 then SPB3Y = .;
    if S456T    =      9 then S456T = .;
    if S456TD   =     99 then S456TD = .;
    if S456TM   =     99 then S456TM = .;
    if S456TY   =   9999 then S456TY = .;
    if SFH1     =      9 then SFH1 = .;
    if SFH1D    =     99 then SFH1D = .;
    if SFH1M    =     99 then SFH1M = .;
    if SFH1Y    =   9999 then SFH1Y = .;
    if SFH2     =      9 then SFH2 = .;
    if SFH2D    =     99 then SFH2D = .;
    if SFH2M    =     99 then SFH2M = .;
    if SFH2Y    =   9999 then SFH2Y = .;
    if SFH3     =      9 then SFH3 = .;
    if SFH3D    =     99 then SFH3D = .;
    if SFH3M    =     99 then SFH3M = .;
    if SFH3Y    =   9999 then SFH3Y = .;
    if S461A    =      9 then S461A = .;
    if S469B    =      9 then S469B = .;
    if S469C    =      9 then S469C = .;
    if S469D    =      9 then S469D = .;
    if S469E    =      9 then S469E = .;
    if S469F    =      9 then S469F = .;
    if S469G    =      9 then S469G = .;
    if S469H    =      9 then S469H = .;
    if S469I    =      9 then S469I = .;
    if S469J    =      9 then S469J = .;
    if S474A    =      9 then S474A = .;
    if S474B    =      9 then S474B = .;
    if S474C    =      9 then S474C = .;
    if S474D    =      9 then S474D = .;
    if S474E    =      9 then S474E = .;
    if S474F    =      9 then S474F = .;
    if S474G    =      9 then S474G = .;
    if S475     =     99 then S475 = .;
    if S1005    =      9 then S1005 = .;
Run;
