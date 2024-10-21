SELECT now()

CREATE Table timeZ(ts TIMESTAMP Without TIME zone ,tsz TIMESTAMP with Time zone);

INSERT INTO timez VALUES('2024-01-22 10:45:00','2024-01-22 10:45:00');
SELECT * FROM timez

SELECT CURRENT_DATE

SELECT now()::time;

SELECT to_char(now(),'mm/yyyy/dd')

SELECT CURRENT_DATE -INTERVAL '1 years'