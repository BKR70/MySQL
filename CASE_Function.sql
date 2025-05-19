SELECT float_val,                                                        -- float_val = column name
CASE
    WHEN float_val > 5 THEN "The value is greater than 5"
    WHEN float_val = 5 THEN "The value is 5"
    ELSE "The value is under 5"
END as float_txt                                                         -- float_txt is newly created column name 
FROM float01001;                                                         -- float01001 is table name 


SELECT float_val,
CASE
    WHEN LENGTH(float_val) > 4 THEN "The length is greater than 4"
    WHEN LENGTH(float_val) = 4 THEN "The length is 4"
    ELSE "The length is less than 4"
END as float_txt
FROM float01001;
