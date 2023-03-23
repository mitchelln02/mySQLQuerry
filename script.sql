USE university;

Select first_name, last_name
From student;

Select instructor_id
From instructor
where tenured = 1;

Select student.first_name,student.last_name, instructor.first_name, instructor.last_name
From student join instructor
where advisor_id = instructor_id;

select i.instructor_id AS Instructor_ID, concat(i.first_name," ", i.last_name) AS Instructor_Name
from instructor i LEFT JOIN student s ON s.advisor_id = i.instructor_id
where s.first_name is null;

select instructor.first_name, instructor.last_name, sum(course.num_credits) as total_credit
from instructor JOIN course 
where instructor.instructor_id = course.instructor_id
group by instructor.first_name, instructor.last_name;

select course_code,course_name
from course
where course_code like '%_3___%';

select course.course_code,instructor.first_name, instructor.last_name, course.num_credits,student_id
from instructor join course 
on instructor.instructor_id = course.instructor_id 
join student_schedule
on course.course_id = student_schedule.course_id
where student_id = 1;