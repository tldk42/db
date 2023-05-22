## Entity
department(dept_name, building, budget)
instructor(ID, name, salary)
student(ID, name, tot_cred)
course(course_id, title, credit)
section(course_id, sec_id, semester, year)
classroom(building, room_number, capacity)
time_slot(time_slot_id, day, start_time, end,time)

## many to many
prereq(course_id, prereq_id)
teaches(ID, course_id, sec)id, semester, year)
takes(ID, course_id, semester, year, grade)

advisor(instructor.ID, student.ID)