use empregados_db;

/*case, when, then*/

select *, 
case
	when salario > (1413 * 2) then (salario * 1.07)
    when salario <= (1413 * 2)  then (salario * 1.15)
end as aumento
from empregado;


delimiter //
create procedure spu_dissidio_anual(in taxa1 decimal, in taxa2 decimal, in minimo decimal)
begin
	create temporary table tmp_dissidio_anual
    select *, 
		case
			when (salario > (minimo * 2)) then (salario * taxa1)
			else (salario * taxa2)
		end as aumento
	from empregado;
    
    select * from tmp_dissidio_anual;
    start transaction;
	update empregado emp
    join tmp_dissidio_anual temp ON emp.cod_emp = temp.cod_emp
    set emp.salario = temp.aumento;
select * from empregado;
drop table tmp_dissidio_anual;
end
//

call spu_dissidio_anual(1.07, 1.15, 1412.12);