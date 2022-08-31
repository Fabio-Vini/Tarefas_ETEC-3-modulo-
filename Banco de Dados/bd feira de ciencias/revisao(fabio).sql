create database bd_revisao;

use bd_revisao;

create table tb_veiculo
	(
		cd int not null auto_increment,
        nm_veiculo varchar(45),
        ds_placa varchar(8),
        vl_ano int(4),
        ds_cor varchar(45),
        vl_veiculo decimal(10,2),
        primary key(cd)
	);
     
    select * from tb_veiculo;
    
    insert into tb_veiculo   
	(nm_veiculo, ds_placa, vl_ano, ds_cor, vl_veiculo) values
	('Gol', 'AKP8867','2010','Branco', '12.500,00'),
	('Parati', 'UPZ7A82','1990','Preto', '7.900,00'),
	('Cruze', 'FAH9183','2018','Branco', '90.500,00'),
	('Passat', 'OPK7A11','2005','Cinza', '29.800,00'),
	('Opyrus', 'ELN7714','2003','Prata', '26.750,00');
    
    
    select nm_veiculo, vl_ano, vl_veiculo from tb_veiculo; 							/* 3 Realize uma consulta que mostre o nome, ano e valor dos veiculos*/
    
    
    select nm_veiculo, ds_placa from tb_veiculo; 									/* 4 Realize uma consulta que mostre o nome e placa dos veiculos*/
    
    
    update tb_veiculo set nm_veiculo='clio' where cd=2; 							/* 5 Atualize o registro do veiculo 2, definindo o nome como "clio"*/
    
    
     update tb_veiculo set ds_cro='Branco', vl_veiculo = 34.000 where cd=5; 		/* 6 Atualize o registro do veiculo 2, definindo a cor "Branco" e o valor R$34.00,00*/
    
    
    delete from tb_veiculo where cd = 1; 											/* 7 Exclua o registro do veiculo codigo 1*/
    
    
    select nm_veiculo from tb_veiculo where ds_cor = 'Branco';						 /* 8 Consulte todos os veiculos de cor Branco*/
    
    
	select nm_veiculo, ds_cor, vl_veiculo from tb_veiculo where vl_ano > 2000;		 /* 9 Consulte o nome, cor e valor dos veiculos com ano acima de 2000*/
     
    
    select nm_veiculo, ds_placa from tb_veiculo where vl_veiculo <= 15.000; 		/* 10 Consulte os veiculos que tenham valor ate R$15.000,00*/
    

	delete from tb_veiculo where ds_placa = 'ELN7714'; 								/* 11 Exclua o registro de todos os veiculos com placa "ELN7714"*/