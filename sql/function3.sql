CREATE TABLE student_results (
    student_id INT,
    semester INT,
    GPA FLOAT,
    CPA FLOAT,
    PRIMARY KEY (student_id, semester)
);
CREATE OR REPLACE FUNCTION updateGPA_student(IN studentid INT, IN semester INT)
RETURNS VOID AS $$
DECLARE
    gpa FLOAT;
    cpa FLOAT;
BEGIN
    -- Tính GPA cho học kỳ cụ thể
    SELECT AVG((midterm_score * (1 - s.percentage_final_exam) + final_score * s.percentage_final_exam)) INTO gpa
    FROM enrollment e
    JOIN subject s ON e.subject_id = s.subject_id
    WHERE e.student_id = studentid AND e.semester = semester;

    -- Tính CPA tổng hợp từ tất cả các học kỳ trước đó và học kỳ hiện tại
    SELECT AVG((midterm_score * (1 - s.percentage_final_exam) + final_score * s.percentage_final_exam)) INTO cpa
    FROM enrollment e
    JOIN subject s ON e.subject_id = s.subject_id
    WHERE e.student_id = studentid AND e.semester <= semester;

    -- Cập nhật hoặc chèn vào bảng student_results
    INSERT INTO student_results (student_id, semester, GPA, CPA)
    VALUES (studentid, semester, gpa, cpa)
    ON CONFLICT (student_id, semester)
    DO UPDATE SET GPA = EXCLUDED.GPA, CPA = EXCLUDED.CPA;
END;
$$
LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION updateGPA(IN semester INT)
RETURNS VOID AS $$
DECLARE
    student RECORD;
BEGIN
    FOR student IN
        SELECT DISTINCT student_id FROM enrollment WHERE semester = semester
    LOOP
        PERFORM updateGPA_student(student.student_id, semester);
    END LOOP;
END;
$$
LANGUAGE plpgsql;
SELECT * FROM student_results;
SELECT updateGPA_student(1, 20231);  -- Thay 1 bằng student_id mong muốn và 20231 bằng học kỳ mong muốn
