/*
drop schema public cascade;
create schema public;
*/

select pessoa.id, veiculo.modelo from pessoa inner join (veiculo.id = pessoa.id) order by veiculo.id;