CREATE OR REPLACE FUNCTION
insert_view_student_class_shortinfos() RETURNS
trigger AS
$$
BEGIN
insert into student (student_id, last_name,
first_name , gender, dob) values (NEW.student_id,
NEW.last_name, NEW.first_name, NEW.gender, NEW.dob);
RETURN NEW;
END;
$$ LANGUAGE plpgsql ;
CREATE TRIGGER insert_student_view
INSTEAD OF INSERT ON student_class_shortinfos
FOR EACH ROW
EXECUTE PROCEDURE
insert_view_student_class_shortinfos();
