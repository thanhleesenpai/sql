CREATE FUNCTION number_of_students(IN clazz_id_input char, OUT student_count int) as
$$
BEGIN
    SELECT COUNT(*)
    INTO student_count
    FROM student
    WHERE clazz_id = clazz_id_input;
END;
$$
LANGUAGE plpgsql;
