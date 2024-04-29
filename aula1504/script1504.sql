use empregados_db;

select* from empregado where cod_depto in(2, 4, 6);

select* from empregado where cod_depto in(
	select cod_depto from departamento where cod_depto < 5
    );
    
select cod_depto from departamento;

select * from departamento where cod_depto % 2 = 0;

/*Calculo com Datas*/

select *, (format((datediff(now(), dt_nascimento)/365),0)-1) as idade from dependente;

select *, floor(datediff(now(), dt_nascimento)/365) as idade from dependente;

/*ex.: extrair todos os empregados que tem dependentes menorer de 10 anos*/

select cod_emp from dependente where floor(datediff(now(), dt_nascimento)/365) < 10;

select * from empregado where cod_emp in(
	select cod_emp from dependente where floor(datediff(now(), dt_nascimento)/365) < 10
    );

select * from empregado where cod_emp in(
	select cod_emp from dependente where floor(datediff(now(), dt_nascimento)/365) < 18
    );


select cod_emp from dependente where floor(datediff(now(), dt_nascimento)/365) < 18;




