/* Write your T-SQL query statement below */
Select  st.student_id, st.student_name, s.subject_name, COUNT(E.student_id) attended_exams 
from Students st
Cross join Subjects s
left join Examinations E
    ON st.student_id = E.student_id
        AND s.subject_name = E.subject_name
GROUP BY st.student_id, st.student_name, s.subject_name
ORDER BY st.student_id, st.student_name, s.subject_name
;