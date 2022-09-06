-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(id) AS 'number_students', YEAR(enrolment_date) AS 'year_sign' 
FROM `students`
GROUP BY year_sign;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(id) AS 'number_teachers', office_address
FROM `teachers`
GROUP BY office_address;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT exam_id AS 'exam_appeal', AVG(vote) AS 'average_vote'
FROM `exam_student`  
GROUP BY exam_id;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento