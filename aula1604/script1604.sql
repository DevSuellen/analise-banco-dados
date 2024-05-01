use empregados_db;

/* encadeamento de chaves relacionais */

/* select composto*/

select   /*(seleciona o nome do empregado e rotula como empregado)*/
	emp.nome as empregado, 
	depto.nome as departamento 
from 
	empregado emp, 
	departamento depto 
where    /*quando o codigo do depto for igual ao codigo depto do empregado*/
	depto.cod_depto = emp.cod_depto;      

