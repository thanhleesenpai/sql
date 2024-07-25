--phan1
CREATE OR REPLACE FUNCTION update_number_students_in_clazz()
RETURNS TRIGGER AS $$
BEGIN

    UPDATE clazz c
    SET number_students = (
        SELECT COUNT(*)
        FROM student s
        WHERE s.clazz_id = c.clazz_id
    )
            WHERE clazz_id = OLD.clazz_id;
    UPDATE clazz c
    SET number_students = (
        SELECT COUNT(*)
        FROM student s
        WHERE s.clazz_id = c.clazz_id
    )
            WHERE clazz_id = NEW.clazz_id;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER student_number_students_trigger
AFTER INSERT OR DELETE OR UPDATE ON student
FOR EACH ROW
EXECUTE FUNCTION update_number_students_in_clazz();



--phan2
CREATE OR REPLACE FUNCTION check_student_limit_in_enrollment()
RETURNS TRIGGER AS $$
BEGIN
        IF (
            SELECT COUNT(*) 
            FROM enrollment 
            WHERE subject_id = NEW.subject_id 
            AND semester = NEW.semester
        ) >= 200 THEN
            RAISE EXCEPTION 'Cannot enroll more than 200 students in subject % for semester %', NEW.subject_id, NEW.semester;
    END IF;
	RETURN NEW;
	
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER enrollment_limit_trigger
BEFORE INSERT OR UPDATE ON enrollment
FOR EACH ROW
EXECUTE FUNCTION check_student_limit_in_enrollment();
