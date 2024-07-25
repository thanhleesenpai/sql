--cac lenh duoc thuc thi voi role: progres

--taodatabase

CREATE DATABASE tinyedu;
--tao admin cho database nay
CREATE ROLE admin_tinyedu WITH CREATEROLE LOGIN PASSWORD 'admin_tinyedu';
--trao toan quyen trendatabase
GRANT ALL ON DATABASE tinyedu TO admin_tinyedu;
--
ALTER DATABASE tinyedu OWNER TO admin_tinyedu
