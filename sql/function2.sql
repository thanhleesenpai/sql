ALTER TABLE clazz ADD COLUMN number_students INTEGER;
CREATE OR REPLACE FUNCTION update_number_students()
RETURNS VOID AS $$
BEGIN
    UPDATE clazz c
    SET number_students = (
        SELECT COUNT(*)
        FROM student s
        WHERE s.clazz_id = c.clazz_id
    );
END;
$$
LANGUAGE plpgsql;
SELECT clazz_id, name, number_students FROM clazz;
SELECT update_number_students();
SELECT clazz_id, name, number_students FROM clazz;
