-- #How many values are there in the given dataset

SELECT COUNT(*) FROM patients;


-- #Count the number of appointments for each day in the given dataset:

SELECT AppointmentDay, COUNT(*) FROM patients GROUP BY AppointmentDay;


-- # Calculate the average number of appointments(Set to nearest whole number) per day in the given dataset.

SELECT Round(AVG(appointment_count)) FROM ( SELECT AppointmentDay, COUNT(*) AS appointment_count FROM patients GROUP BY AppointmentDay ) as sample;


-- # Find the day with the highest number of appointments in the given dataset.

SELECT AppointmentDay, COUNT(*) AS AppointmentCount FROM patients
GROUP BY AppointmentDay
ORDER BY AppointmentCount DESC
LIMIT 1;


-- # Calculate the monthly average number of appointments in the given dataset.

SELECT DATE_FORMAT(AppointmentDay, '%Y-%m') as month_of_appointment_date, COUNT(*) as count_of_appointments_for_each_month 
FROM patients
GROUP By  month_of_appointment_date;


-- # Find the month with the highest number of appointments in the given dataset.

SELECT DATE_FORMAT(AppointmentDay, '%Y-%m') as month_of_appointment_date, COUNT(*) as count_of_appointments_for_each_month FROM patients
GROUP By  month_of_appointment_date
ORDER BY count_of_appointments_for_each_month DESC
LIMIT 1;


-- # Calculate the weekly average number of appointments in the given dataset.

SELECT DATE_FORMAT(AppointmentDay, '%Y') as Year, 
DATE_FORMAT(AppointmentDay, '%v') as Week, 
COUNT(*) as Appointments_Count 
FROM patients 
GROUP By Year,Week 
ORDER BY Appointments_Count DESC 
LIMIT 1;


-- # Find the week with the highest number of appointments in the given dataset.

SELECT DATE_FORMAT(AppointmentDay, '%Y') as Year, DATE_FORMAT(AppointmentDay, '%v') as Week,
COUNT(*) as Appointments_Count 
FROM patients 
GROUP By Year, Week 
ORDER BY Appointments_Count DESC
LIMIT 1;


-- # What is the distribution of appointments based on gender in the dataset?

SELECT Gender, COUNT(*) AS AppointmentCount FROM patients GROUP BY Gender;


-- #Calculate the number of appointments per weekday in the given dataset. Order the appointment counts in descending.

SELECT DAYNAME(AppointmentDay) as Day, 
COUNT(*) as Appointments_Count 
FROM patients 
GROUP By Day
ORDER BY Appointments_Count DESC;


-- #Calculate the average time between scheduling and the appointment day in the given dataset. Set to nearest whole number

SELECT ROUND(AVG(DATEDIFF(`AppointmentDay`,`ScheduledDay`))) FROM patients;