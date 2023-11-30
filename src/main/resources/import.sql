-- This file allow to write SQL commands that will be emitted in test and dev.
-- The commands are commented as their support depends of the database
-- insert into myentity (id, field) values(1, 'field-1');
-- insert into myentity (id, field) values(2, 'field-2');
-- insert into myentity (id, field) values(3, 'field-3
-- alter sequence myentity_seq restart with 4;

ALTER TABLE `Fair` 
MODIFY COLUMN ID INT NOT NULL AUTO_INCREMENT;
insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("GENERAL JOÃO TELLES",'TERCA','MODELO', "07:00","12:00","Rua Gen. João Telles, entre Osvaldo Aranha e Henrique Dias", "BOM FIM",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("EPATUR",'TERCA','MODELO', "15:30","20:30","Largo Zumbi dos Palmares", "Cidade Baixa",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("PRAÇA FLORIDA",'TERCA','MODELO', "15:30","20:30","Rua São Carlos, esquina rua Comendador Azevedo", "Floresta",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("PRAÇA JAPÃO",'QUARTA','MODELO', "07:30","12:00","Entre as Ruas Alameda Vicente de Carvalho e Alameda Raimundo Corrêa", "Boa Vista",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("SÃO PEDRO",'QUARTA','MODELO', "07:30","12:00","Largo 1º de Junho", "Santa Maria Goretti",362);


insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("CAMAQUÃ",'QUARTA','MODELO', "07:30","12:00","Rua Prof. Dr. João Pitta Pinheiro Filho", "Camaquã",49);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("TERMINAL ALAMEDA",'QUARTA','MODELO', "15:30","20:30","Rua Ramalhete", "Vila João Pessoa",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("FEIRA ENCOL",'QUARTA','MODELO', "15:00","20:00","Praça Carlos Simão Arnt", "Bela Vista",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("TRISTEZA",'QUARTA','MODELO', "15:30","20:30","Rua Otto Niemeyer", "Tristeza",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("SERTÓRIO",'QUARTA','MODELO', "15:30","20:30","Avenida Sertório", "Sarandi",9500);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("GERMÂNIA",'QUINTA','MODELO', "14:00","20:00","Av. Ferdinand Kisslinger", "Jardim Europa",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("JARDIM ITÚ",'QUINTA','MODELO', "15:30","20:30","Av. Karl Iwers", "Jardim Itu Sabará",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("MORRO SANTANA",'QUINTA','MODELO', "15:30","20:30","Rua Amadeu Fagundes de Oliveira Freitas", "Morro Santana",35);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("HUMAITÁ",'QUINTA','MODELO', "15:30","20:30","Rua Prof. João Souza Ribeiro", "Humaitá",707);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("JARDIM YPU",'QUINTA','MODELO', "15:30","20:30","Rua Germano Schmarczek", "Jardim Ypu",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("MENINO DEUS",'QUINTA','MODELO', "15:30","20:30","Praça Israel - Rua Vicente Lopes Santos", "Menino Deus",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("BARÃO DO TRIUNFO",'SEXTA','MODELO', "07:00","12:00","Rua Barão do Triunfo", "Azenha",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("HIPICA",'SEXTA','MODELO', "14:00","20:30","Rua Dr. Raphael Loro", "Moradas do Sul",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("PASSO DAREIA",'SEXTA','MODELO', "15:30","20:30","Rua José da Silva", "Passo DAreia",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("JARDIM BOTÂNICO",'SEXTA','MODELO', "15:30","20:30","Rua Felizardo Furtado", "Jardim Botânico",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("MARINHA DO BRASIL",'SEXTA','MODELO', "15:30","20:30","Av. Borges de Medeiros", "Praia de Belas",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("FEIRA SANTANA DMAE",'SEXTA','MODELO', "15:30","20:30","Rua Gastão Rhodes", "Santana",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("JARDIM DO SALSO",'SABADO','MODELO', "07:30","12:30","Rua Graciliano Ramos", "Jardim do Salso",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("VILA NOVA",'SABADO','MODELO', "07:30","12:30","Rua Coronel Otaviano Pinto Soares", "Vila Nova",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("PASSO DA MANGUEIRA",'SABADO','MODELO', "07:30","12:30","Rua engenheiro João Luderitz", "Passo da Mangueira",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("PARTENON PUC-RS",'SABADO','MODELO', "07:30","12:30","Av. Ceres", "Partenon",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("IPANEMA",'SABADO','MODELO', "07:30","12:30","Av. Osvaldo Gonçalves Cruz", "Ipanema",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("VILA IPIRANGA",'SABADO','MODELO', "07:30","12:30","Av. Dr. João Simplício Alves de Carvalho", "Vila Ipiranga",0);


insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("BOM FIM",'SABADO','MODELO', "15:30","20:30","Rua Irmão José Otão", "Bom Fim",438);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("CEARÁ",'DOMINGO','MODELO', "07:30","12:30","Av. Ceará", "São João",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("SANTA ROSA",'DOMINGO','MODELO', "07:30","12:30","Av. Bernardino de Oliveira Paim", "Rubem Berta",82);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("PRAÇA PIRATINI",'DOMINGO','MODELO', "07:30","12:30","Av. Piratini", "Santana",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("HUMAITÁ",'DOMINGO','MODELO', "07:30","12:30","Av. Piratini", "Santana",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("NONOAI",'DOMINGO','MODELO', "07:30","12:30","Av. São Sebastião", "Nonoai",317);


insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("BENTO GONÇALVES",'TERCA','MERCADAO', "15:30","20:30","Rua Dr. Júlio Bocaccio", "Bento Gonçalves",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("MEDIANEIRA",'QUARTA','MERCADAO', "07:00","19:00","Av. Cel. Gastão Haslocher Mazeron", "Medianeira",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("JARDIM LINDÓIA",'QUINTA','MERCADAO', "15:30","20:30","Rua Bom Retiro do Sul", "Jardim Lindóia",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("MOINHOS DE VENTO",'QUINTA','MERCADAO', "15:30","20:30","Rua Comendador Caminha", "Moinhos de Vento",313);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("CIDADE BAIXA",'SABADO','MERCADAO', "07:00","12:00","Av. Loureiro da Silva", "Cidade Baixa",0);


insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("MEDIANEIRA",'SABADO','MERCADAO', "07:00","12:00","Av. Cel. Gastão Haslocher Mazeron", "Medianeira",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("CEL. MASSOT",'DOMINGO','MERCADAO', "07:00","12:00","Av. Cel. Massot", "Cavalhada",470);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("ASSIS BRASIL",'DOMINGO','MERCADAO', "07:00","12:00","Av. Dom Cláudio José Gonçalves Ponce de Leon", "Vila Ipiranga",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("FEIRA MISTA PETRÓPOLIS",'SEXTA','MISTA', "15:30","20:30","Rua Heretiano Rocha", "Petrópolis",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Feira dos Agricultores Ecologistas - FAE",'SABADO','ECOLOGICA', "07:00","13:00","Avenida José Bonifácio", "Farroupilha",675);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica do Bom Fim",'SABADO','ECOLOGICA', "07:00","13:00","Avenida José Bonifácio", "Farroupilha",675);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica da Tristeza",'SABADO','ECOLOGICA', "07:00","12:00","Avenida Otto Niemeyer", "Tristeza",675);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Três Figueiras",'SABADO','ECOLOGICA', "07:00","12:30","Rua Cel. Armando Assis", "Três Figueiras",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Praça André Forster",'SABADO','ECOLOGICA', "07:00","12:30","Rua Rômulo Telles Pessoa", "Petrópolis",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Park Lindóia",'SABADO','ECOLOGICA', "07:00","12:30","Rua Eduardo Maurel Muller", "São Sebastião",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Auxiliadora",'TERCA','ECOLOGICA', "07:00","12:30","Travessa Lanceiros Negros", "Auxiliadora",0);

insert into `Fair`(name,weekDay,Category, start,end,street, district, number) 
values("Centro Administrativo Municipal Guilherme Socias Villela",'QUINTA','ECOLOGICA', "07:30","11:30","Rua General João Manoel", "Centro Histórico",157);

