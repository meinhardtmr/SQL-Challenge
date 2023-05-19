--QUERY 1
SELECT emp.emp_no
      ,emp.last_name
	  ,emp.first_name
	  ,emp.sex
	  ,sal.salary
  FROM employees emp
  JOIN salaries sal on emp.emp_no = sal.emp_no;
  
-- QUERY 2
SELECT first_name
      ,last_name
	  ,hire_date
  FROM employees
 WHERE EXTRACT(YEAR FROM hire_date) = '1986';

-- QUERY 3
SELECT dep.dept_no
	  ,dep.dept_name
	  ,emp.emp_no
	  ,emp.last_name
	  ,emp.first_name
  FROM dept_manager dm 
  INNER JOIN employees emp ON dm.emp_no = emp.emp_no
  INNER JOIN departments dep ON dm.dept_no = dep.dept_no;
  
-- QUERY 4
SELECT de.dept_no
      ,emp.emp_no
	  ,emp.last_name
	  ,emp.first_name
	  ,dep.dept_name
  FROM dept_emp de
  INNER JOIN employees emp ON de.emp_no = emp.emp_no
  INNER JOIN departments dep ON de.dept_no = dep.dept_no;


-- QUERY 5
SELECT first_name
      ,last_name
	  ,sex
  FROM employees
 WHERE first_name = 'Hercules'
   AND last_name LIKE 'B%';

-- QUERY 6
SELECT dep.dept_name
      ,emp.emp_no
	  ,emp.last_name
	  ,emp.first_name
  FROM employees emp
  INNER JOIN dept_emp de ON emp.emp_no = de.emp_no 
  INNER JOIN departments dep ON de.dept_no = dep.dept_no
 WHERE dep.dept_name = 'Sales';

-- QUERY 7
SELECT dep.dept_name
      ,emp.emp_no
	  ,emp.last_name
	  ,emp.first_name
  FROM employees emp
  INNER JOIN dept_emp de ON emp.emp_no = de.emp_no 
  INNER JOIN departments dep ON de.dept_no = dep.dept_no
 WHERE dep.dept_name IN ('Sales', 'Development');

-- QUERY 8
SELECT last_name
      ,COUNT(last_name)
  FROM employees
GROUP BY last_name
ORDER BY 2 DESC;
