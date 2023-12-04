-- This file allow to write SQL commands that will be emitted in test and dev.
-- The commands are commented as their support depends of the database
-- insert into myentity (id, field) values(1, 'field-1');
-- insert into myentity (id, field) values(2, 'field-2');
-- insert into myentity (id, field) values(3, 'field-3
-- alter sequence myentity_seq restart with 4;

ALTER TABLE `Fair` 
MODIFY COLUMN ID INT NOT NULL AUTO_INCREMENT;
insert into `Fair`(name,latitude,longitude,weekDay,Category, start,end,street, district, number) 
values("GENERAL JOÃO TELLES",-30.03341951718343, -51.21270756580661,'TERCA','MODELO', "07:00","12:00","Rua Gen. João Telles, entre Osvaldo Aranha e Henrique Dias", "BOM FIM",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("EPATUR",-30.037956843210832, -51.22585057530197,'TERCA','MODELO', "15:30","20:30","Largo Zumbi dos Palmares", "Cidade Baixa",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("PRAÇA FLORIDA",-30.020532103944976, -51.21012552517712,'TERCA','MODELO', "15:30","20:30","Rua São Carlos, esquina rua Comendador Azevedo", "Floresta",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("PRAÇA JAPÃO",-30.026938278026016, -51.17957043582905,'QUARTA','MODELO', "07:30","12:00","Entre as Ruas Alameda Vicente de Carvalho e Alameda Raimundo Corrêa", "Boa Vista",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("SÃO PEDRO",-30.007622278288867, -51.168450741911705,'QUARTA','MODELO', "07:30","12:00","Largo 1º de Junho", "Santa Maria Goretti",362);


insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("CAMAQUÃ",-30.106590573879352, -51.236190365187284,'QUARTA','MODELO', "07:30","12:00","Rua Prof. Dr. João Pitta Pinheiro Filho", "Camaquã",49);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("TERMINAL ALAMEDA",-30.067719894228595, -51.1771739537404,'QUARTA','MODELO', "15:30","20:30","Rua Ramalhete", "Vila João Pessoa",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("FEIRA ENCOL",-30.037051660538836, -51.18806808254043,'QUARTA','MODELO', "15:00","20:00","Praça Carlos Simão Arnt", "Bela Vista",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("TRISTEZA",-30.110278727626238, -51.25377724044135,'QUARTA','MODELO', "15:30","20:30","Rua Otto Niemeyer", "Tristeza",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("SERTÓRIO",-30.00353346446316, -51.12731683330451,'QUARTA','MODELO', "15:30","20:30","Avenida Sertório", "Sarandi",9500);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("GERMÂNIA",-30.023914711659142, -51.1558323779074,'QUINTA','MODELO', "14:00","20:00","Av. Ferdinand Kisslinger", "Jardim Europa",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("JARDIM ITÚ",-30.017417335160545, -51.139341037297434,'QUINTA','MODELO', "15:30","20:30","Av. Karl Iwers", "Jardim Itu Sabará",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("MORRO SANTANA",-30.039436664585807, -51.12675987370846,'QUINTA','MODELO', "15:30","20:30","Rua Amadeu Fagundes de Oliveira Freitas", "Morro Santana",35);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("HUMAITÁ",-29.981618968753235, -51.190847799348376,'QUINTA','MODELO', "15:30","20:30","Rua Prof. João Souza Ribeiro", "Humaitá",707);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("JARDIM YPU",-30.046132025015226, -51.13560822407154,'QUINTA','MODELO', "15:30","20:30","Rua Germano Schmarczek", "Jardim Ypu",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("MENINO DEUS",-30.05270889098981, -51.226340936712575,'QUINTA','MODELO', "15:30","20:30","Praça Israel - Rua Vicente Lopes Santos", "Menino Deus",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("BARÃO DO TRIUNFO",-30.052633715302683, -51.215123522810586,'SEXTA','MODELO', "07:00","12:00","Rua Barão do Triunfo", "Azenha",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("HIPICA",-30.15340979496686, -51.167857336454816,'SEXTA','MODELO', "14:00","20:30","Rua Dr. Raphael Loro", "Moradas do Sul",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("PASSO DAREIA",-30.014278361395814, -51.169791419203165,'SEXTA','MODELO', "15:30","20:30","Rua José da Silva", "Passo DAreia",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("JARDIM BOTÂNICO",-30.04799901803782, -51.18251051519112,'SEXTA','MODELO', "15:30","20:30","Rua Felizardo Furtado", "Jardim Botânico",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("MARINHA DO BRASIL",-30.057748734528495, -51.23070239433854,'SEXTA','MODELO', "15:30","20:30","Av. Borges de Medeiros", "Praia de Belas",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("FEIRA SANTANA DMAE",-30.043830926322233, -51.20124237026316,'SEXTA','MODELO', "15:30","20:30","Rua Gastão Rhodes", "Santana",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("JARDIM DO SALSO",-30.050068593007516, -51.16785264554426,'SABADO','MODELO', "07:30","12:30","Rua Graciliano Ramos", "Jardim do Salso",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("VILA NOVA",-30.115189190143205, -51.219064808620665,'SABADO','MODELO', "07:30","12:30","Rua Coronel Otaviano Pinto Soares", "Vila Nova",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("PASSO DA MANGUEIRA",-30.006177118259107, -51.13487050148295,'SABADO','MODELO', "07:30","12:30","Rua engenheiro João Luderitz", "Passo da Mangueira",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("PARTENON PUC-RS",-30.057261013034243, -51.16726730689622,'SABADO','MODELO', "07:30","12:30","Av. Ceres", "Partenon",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("IPANEMA",-30.136851219351726, -51.22454536449174,'SABADO','MODELO', "07:30","12:30","Av. Osvaldo Gonçalves Cruz", "Ipanema",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("VILA IPIRANGA",-30.019052661788795, -51.15684776706146,'SABADO','MODELO', "07:30","12:30","Av. Dr. João Simplício Alves de Carvalho", "Vila Ipiranga",0);


insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("BOM FIM",-30.031475630820907, -51.21327650650103,'SABADO','MODELO', "15:30","20:30","Rua Irmão José Otão", "Bom Fim",438);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("CEARÁ",-30.00304099657119, -51.19226949284255,'DOMINGO','MODELO', "07:30","12:30","Av. Ceará", "São João",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("SANTA ROSA",-29.995021912333012, -51.100817299285545,'DOMINGO','MODELO', "07:30","12:30","Av. Bernardino de Oliveira Paim", "Rubem Berta",82);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("PRAÇA PIRATINI",-30.043738174433166, -51.213051788766485,'DOMINGO','MODELO', "07:30","12:30","Av. Piratini", "Santana",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("HUMAITÁ",-29.97954498410961, -51.184299496722836,'DOMINGO','MODELO', "07:30","12:30","Av. Piratini", "Santana",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("NONOAI",-30.090189730921907, -51.22519908604224,'DOMINGO','MODELO', "07:30","12:30","Av. São Sebastião", "Nonoai",317);


insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("BENTO GONÇALVES",-30.053228272658448, -51.20417714788594,'TERCA','MERCADAO', "15:30","20:30","Rua Dr. Júlio Bocaccio", "Bento Gonçalves",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("MEDIANEIRA",-30.059601622595924, -51.21652886917417,'QUARTA','MERCADAO', "07:00","19:00","Av. Cel. Gastão Haslocher Mazeron", "Medianeira",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("JARDIM LINDÓIA",-30.004699013703064, -51.145746564409336,'QUINTA','MERCADAO', "15:30","20:30","Rua Bom Retiro do Sul", "Jardim Lindóia",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("MOINHOS DE VENTO",-30.026727780044954, -51.20181427650411,'QUINTA','MERCADAO', "15:30","20:30","Rua Comendador Caminha", "Moinhos de Vento",313);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("CIDADE BAIXA",-30.03799986273701, -51.22594298176879,'SABADO','MERCADAO', "07:00","12:00","Av. Loureiro da Silva", "Cidade Baixa",0);


insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("MEDIANEIRA",-30.05979164951111, -51.216111795200135,'SABADO','MERCADAO', "07:00","12:00","Av. Cel. Gastão Haslocher Mazeron", "Medianeira",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("CEL. MASSOT",-30.100103668959218, -51.24396123461072,'DOMINGO','MERCADAO', "07:00","12:00","Av. Cel. Massot", "Cavalhada",470);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("ASSIS BRASIL",-30.010927328540184, -51.14612783571033,'DOMINGO','MERCADAO', "07:00","12:00","Av. Dom Cláudio José Gonçalves Ponce de Leon", "Vila Ipiranga",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("FEIRA MISTA PETRÓPOLIS",-30.0400940614444, -51.17573285375336,'SEXTA','MISTA', "15:30","20:30","Rua Heretiano Rocha", "Petrópolis",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Feira dos Agricultores Ecologistas - FAE",-30.036714303006978, -51.210883850944974,'SABADO','ECOLOGICA', "07:00","13:00","Avenida José Bonifácio", "Farroupilha",675);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica do Bom Fim",-30.038010688669917, -51.21336078257461,'SABADO','ECOLOGICA', "07:00","13:00","Avenida José Bonifácio", "Farroupilha",675);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica da Tristeza",-30.110273152945, -51.25378484041838,'SABADO','ECOLOGICA', "07:00","12:00","Avenida Otto Niemeyer", "Tristeza",675);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Três Figueiras",-30.029856233460748, -51.1696387482798,'SABADO','ECOLOGICA', "07:00","12:30","Rua Cel. Armando Assis", "Três Figueiras",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Praça André Forster",-30.038883347264576, -51.192362619228305,'SABADO','ECOLOGICA', "07:00","12:30","Rua Rômulo Telles Pessoa", "Petrópolis",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Park Lindóia",-30.007959870040363, -51.14515447470139,'SABADO','ECOLOGICA', "07:00","12:30","Rua Eduardo Maurel Muller", "São Sebastião",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Feira Ecológica Auxiliadora",-30.0209120821295, -51.19688738102493,'TERCA','ECOLOGICA', "07:00","12:30","Travessa Lanceiros Negros", "Auxiliadora",0);

insert into `Fair`(name,latitude, longitude,weekDay,Category, start,end,street, district, number) 
values("Centro Administrativo Municipal Guilherme Socias Villela",-30.029760338154965, -51.23399920028864,'QUINTA','ECOLOGICA', "07:30","11:30","Rua General João Manoel", "Centro Histórico",157);


