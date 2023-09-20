create database minimundo2;
use minimundo2;

CREATE TABLE Clientes (
    Codigo INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Idade INT NOT NULL,
    RG VARCHAR(20) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Telefone VARCHAR(20) NOT NULL
);

select * from clientes;


CREATE TABLE Automoveis (
    Placa VARCHAR(10) PRIMARY KEY,
    Renavam VARCHAR(17) NOT NULL,
    Fabricante VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Ano INT NOT NULL,
    ClienteCodigo INT,
    FOREIGN KEY (ClienteCodigo) REFERENCES Clientes(Codigo)
);

select * from automoveis;



CREATE TABLE Ocorrencias (
    Numero INT AUTO_INCREMENT PRIMARY KEY,
    DataOcorrencia DATE NOT NULL,
    Local VARCHAR(255) NOT NULL,
    Descricao TEXT NOT NULL,
    AutomovelPlaca VARCHAR(10),
    FOREIGN KEY (AutomovelPlaca) REFERENCES Automoveis(Placa)
);

select * from ocorrencias;

insert into Clientes (Nome, Idade, RG, CPF, Endereco, Telefone) 
values 
("Sandro",30,772057485,30339048077,"Avenida São João 30",32754374),
("Sabrina",20,337310026,26132400087,"Rua da Imprensa 79",21774715),
("Marina",18,165980187,02034317076,"Rua Cristiano Olsen 44",25216145),
("Robinson",55,348280683,98167799000, "Av Gov José Malcher 66",24129205),
("Alfred",25,294854459,40321628080, "Avenida Tocantins 95",24859181);

select * from clientes;


insert into Automoveis (Placa, Renavam, Fabricante, Modelo, Ano, ClienteCodigo) 
values 
("AIN-1229","53669873161","Ford","Fiesta",2015,1),
("MSW-3037","52016886863","Chevrolet","Cruze",2020,2),
("JUZ-4291","61433383803","Volkswagen","Golf",2018,3),
("CNZ-2257", "83450765345 ","Toyota","Corolla",2019,4),
("JPC-3718" , "60748585560", "Honda","Civic",2021,5);

select * from automoveis;



insert into Ocorrencias (DataOcorrencia, Local, Descricao, AutomovelPlaca)
values
("2023-09-19","av são joao 30","cliente estacionou em local proibido e teve seu carro multado e rebocado","AIN-1229"),
("2021-05-09","rua dos parlamentares 66","avançou o sinal vermelho e derrubou um motoqueiro","MSW-3037"),
("2020-03-12","rua dos girassois 500", "perdeu o controle do carro e bateu em um poste","JUZ-4291"),
("2015-07-18","Rua Barão de Vitória S/N", "pneu do carro estorou e o carro bateu no muro de uma moradora daquela região","CNZ-2257"),
("2008-11-11","Avenida São João 13", "estacionu em frente a uma garagem e o dono da casa chamou o reboque","JPC-3718");

select * from ocorrencias;

