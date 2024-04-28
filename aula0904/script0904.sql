use empregado_db;

/*Operadores Matematicos Baseados em Funçoes*/

/* AVG -> valor médio de uma coluna numérica. */
/*SELECT AVG(column_name)
FROM table_name
WHERE condition;*/

select avg(salario) as media_renda from empregado where sexo= 'F'; /*COUNT()função retorna o número de linhas que corresponde a um critério especificado.*/
select avg(salario) as media_renda from empregado where sexo= 'M';

/*Funções MySQL MIN() e MAX()*/
/*A MIN()função retorna o menor valor da coluna selecionada.*/
/*MAX()função retorna o maior valor da coluna selecionada.*/

select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo= 'F';
select max(salario) as maior_renda, min(salario) as menor_renda from empregado where sexo= 'M';

select (max(salario)-min(salario)) as inter_renda from empregado where sexo= 'F';
select (max(salario)-min(salario)) as inter_renda from empregado where sexo= 'M';

/*A SUM()função retorna a soma total de uma coluna numérica. */

select sum(salario) as total_renda from empregado where sexo= 'F';
select sum(salario) as total_renda from empregado where sexo= 'M';

/*Funcoes de Formatação e Padronização*/

select nome as empregado, salario as renda, format((salario * 0.12), 2) as INSS, format((salario * 0.15), 2) as IRPF from empregado;
select char_length(nome) as tamanho_nome, (char_length(nome) + (rand() * char_length(nome))* cod_emp) as id_aleatorio from empregado;  /*gerar um codigo */

select 
	replace(nome,"A", " * ") as nome_modificado,
    char_length(nome) as tamanho_nome,
    (char_length(nome) + (rand() * char_length(nome))* cod_emp) as id_aleatorio 
from empregado;


    
