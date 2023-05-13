-- Formatting elements for date and time parts

-- Many Google Standard SQL parsing and formatting functions rely on a format string to describe the format of parsed or formatted values. 

-- A format string represents the textual form of date and time and contains separate format elements that are applied left-to-right.

-- These functions use format strings:

-- FORMAT_DATE
-- FORMAT_DATETIME
-- FORMAT_TIME
-- FORMAT_TIMESTAMP
-- PARSE_DATE
-- PARSE_DATETIME
-- PARSE_TIME
-- PARSE_TIMESTAMP

SELECT FORMAT_DATE("%b-%d-%Y", DATE "2008-12-25") AS formatted;
-- It will print date in the format of Month-Day-Year rather than Year-Month-Date while column will be named as formatted

+-------------+
| formatted   |
+-------------+
| Dec-25-2008 |
+-------------+



SELECT
  FORMAT_DATETIME("%c", DATETIME "2008-12-25 15:30:00")
  AS formatted;
-- It will print the datetime in the format of Thu Dec 25 15:30:00 2008

+--------------------------+
| formatted                |
+--------------------------+
| Thu Dec 25 15:30:00 2008 |
+--------------------------+



SELECT FORMAT_TIME("%R", TIME "15:30:00") as formatted_time;
-- It will print the time in the format %H:%M.

+----------------+
| formatted_time |
+----------------+
| 15:30          |
+----------------+



SELECT FORMAT_TIMESTAMP("%b %Y %Ez", TIMESTAMP "2008-12-25 15:30:00+00")
  AS formatted;
-- The abbreviated month name The year with century as a decimal number RFC 3339-compatible numeric time zone (+HH:MM or -HH:MM).

+-----------------+
| formatted       |
+-----------------+
| Dec 2008 +00:00 |
+-----------------+


SELECT PARSE_DATE("%Y%m%d", "20081225") AS parsed;
-- It will display the date in the format of Year-Month-Day with column named as parsed

+------------+
| parsed     |
+------------+
| 2008-12-25 |
+------------+



SELECT PARSE_DATETIME('%Y-%m-%d %H:%M:%S', '1998-10-18 13:45:55') AS datetime;
-- It will display the datetime in the format of Year-Month-Day Hour-Minute-Second with column named as datetime

+---------------------+
| datetime            |
+---------------------+
| 1998-10-18T13:45:55 |
+---------------------+



SELECT PARSE_TIME('%I:%M:%S %p', '2:23:38 pm') AS parsed_time
-- %p will convert according to AM or PM 
+-------------+
| parsed_time |
+-------------+
| 14:23:38    |
+-------------+


SELECT PARSE_TIMESTAMP("%c", "Thu Dec 25 07:30:00 2008") AS parsed;

-- Display of results may differ, depending upon the environment and
-- time zone where this query was executed.
+-------------------------+
| parsed                  |
+-------------------------+
| 2008-12-25 07:30:00 UTC |
+-------------------------+
