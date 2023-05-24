SELECT name,agentid
FROM agents
ORDER BY name;

##Contar el número de llamadas realizadas por cada agente.
SELECT agentid, COUNT(*) AS total_calls
FROM calls
GROUP BY agentid;

##obtener duración promedio de las llamadas realizadas, AVG es promedio

SELECT AVG(duration) 
AS avg_duration 
FROM calls;

##Listar los nombres y edades de los clientes mayores de 30 años que han comprado más de 5 productos.
##se utiliza una subconsulta en la cláusula WHERE 
##para obtener los IDs de los clientes que cumplan la condición de haber comprado más de 5 productos 
##y luego se filtran los nombres y edades de estos clientes de la tabla "customers".
SELECT name, age
FROM customers
WHERE age > 30 AND customerid
IN (SELECT customerid FROM calls WHERE productsold > 5);
