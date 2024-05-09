USE TestDevBackExamen;
--Depurar solo los ID diferentes de 6,7,9 y 10 de la tabla usuarios
SELECT * FROM usuarios
WHERE usuarios.userId NOT IN (6,7,9,10);

--Actualizar el dato sueldo en un 10 porciento a los empleados que tienen 
--fechas entre el año 2000 y 2001
UPDATE empleados 
SET Sueldo = Sueldo * 1.1	
FROM empleados
INNER JOIN usuarios ON empleados.userId = usuarios.userId
WHERE empleados.FechaIngreso BETWEEN '2000/01/01' AND '2001/12/31';

--Realizar consulta para traer el nombre de usuario y fecha de ingreso de los
--usuarios que ganen mas de 10000 y su apellido comience con T ordenando del
--mas reciente al mas antiguo
SELECT usuarios.Nombre, empleados.FechaIngreso
FROM usuarios
INNER JOIN empleados ON usuarios.userId = empleados.userId
WHERE empleados.Sueldo > 10000 AND usuarios.Paterno LIKE 'T%'
ORDER BY empleados.FechaIngreso DESC;

--Realiza una consulta donde agrupes a los empleados por sueldo, un grupo con 
--los que ganan mas de 1200 y uno mayor o igual a 1200, cuantos hay en cada grupo?
SELECT
    SUM(CASE WHEN Sueldo >= 1200 THEN 1 ELSE 0 END) AS SueldoMasDe1200,
    SUM(CASE WHEN Sueldo < 1200 THEN 1 ELSE 0 END) AS SueldoMenosDe1200
FROM empleados;

