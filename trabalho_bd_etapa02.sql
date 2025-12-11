-- Trabalho Final BD - Etapa 02



-- TABELAS RESPECTIVAMENTE CRIADAS COM AS ENTIDADES E RELACIONAMENTOS APRESENTADAS ANTERIORMENTE (ABRIGO), (FUNCIONARIO),(GERENCIA),(ADOTANTE),(ANIMAL),(ANIMAL_VACINA),(RECEBE),(ADOÇÃO)

CREATE TABLE Abrigo (
    ID_Abrigo SERIAL PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20),
    Rua VARCHAR(100),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50),
    Estado CHAR(2)
);

CREATE TABLE Funcionario (
    ID_Funcionario SERIAL PRIMARY KEY,
    Nome VARCHAR(100),
    Cargo VARCHAR(50),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Gerencia (
    ID_Abrigo INT REFERENCES Abrigo(ID_Abrigo),
    ID_Funcionario INT REFERENCES Funcionario(ID_Funcionario),
    PRIMARY KEY (ID_Abrigo, ID_Funcionario)
);

CREATE TABLE Adotante (
    ID_Adotante SERIAL PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20),
    Rua VARCHAR(100),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50),
    Estado CHAR(2),
    CPF VARCHAR(14)
);

CREATE TABLE Animal (
    ID_Animal SERIAL PRIMARY KEY,
    Nome VARCHAR(50),
    Especie VARCHAR(30),
    Raca VARCHAR(50),
    Altura DECIMAL(5,2),
    Peso DECIMAL(5,2),
    Situacao VARCHAR(50)
);

CREATE TABLE Animal_Vacina (
    ID_Animal INT REFERENCES Animal(ID_Animal),
    Vacina VARCHAR(50),
    PRIMARY KEY(ID_Animal, Vacina)
);

CREATE TABLE Recebe (
    ID_Abrigo INT REFERENCES Abrigo(ID_Abrigo),
    ID_Animal INT REFERENCES Animal(ID_Animal),
    Data_Entrada DATE,
    PRIMARY KEY(ID_Abrigo, ID_Animal)
);

CREATE TABLE Adocao (
    ID_Animal INT REFERENCES Animal(ID_Animal),
    ID_Adotante INT REFERENCES Adotante(ID_Adotante),
    Data_Adocao DATE,
    Observacoes TEXT,
    PRIMARY KEY(ID_Animal, ID_Adotante)
);

-- ENTIDADE Abrigo ( CERCA DE 20 registros56)
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 1 Morada_Nova', NULL, 'Rua 71', 'Bela Vista', 'Tauá', 'PI');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 2 Lar', '97 91424-9674', 'Rua 109', 'Centro', 'Crateús', 'CE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 3 Recomeço', '99 90434-9195', 'Rua 51', 'Jardim', 'Iguatu', 'PI');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 4 Nova_Era', '80 92615-6924', 'Rua 88', 'Altos', 'Fortaleza', 'PI');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 5 Canil_Center', '92 91584-5881', 'Rua 89', 'Jardim', 'Juazeiro', 'CE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 6 Minha_Casa_Minha_Vida', '92 91291-9044', 'Rua 76', 'Jardim', 'Russas', 'RN');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 7 Cats', '81 93733-4741', 'Rua 21', 'Bela Vista', 'Sobral', 'PE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 8 Acolher', '91 92664-6065', 'Rua 91', 'Bela Vista', 'Juazeiro', 'CE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 9 Patinhas', '97 94010-2677', 'Rua 119', 'Cohab', 'Juazeiro', 'RN');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 10 Ventos_dog', '81 93752-0525', 'Rua 81', 'Cohab', 'Juazeiro', 'CE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 11 Dog_House', '98 95155-3483', 'Rua 168', 'Cohab', 'Iguatu', 'PE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 12 Vida', '87 99197-8830', 'Rua 68', 'Jardim', 'Iguatu', 'RN');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 13 Refugiu_cat', '84 98348-8085', 'Rua 24', 'Centro', 'Sobral', 'PI');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 14 Morro_Branco', '93 99771-1040', 'Rua 99', 'Cohab', 'Icó', 'PE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 15 Quixeras', '97 90188-1876', 'Rua 175', 'Jardim', 'Juazeiro', 'BA');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 16 Patriotas', '85 97433-0053', 'Rua 185', 'Altos', 'Canindé', 'PI');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 17 Penha', '89 98317-9977', 'Rua 51', 'Bela Vista', 'Russas', 'PI');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 18 Russos', '96 90009-9813', 'Rua 83', 'Cohab', 'Crateús', 'CE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 19 News', '89 93923-0949', 'Rua 62', 'Jardim', 'Sobral', 'CE');
INSERT INTO Abrigo (Nome, Telefone, Rua, Bairro, Cidade, Estado) VALUES ('Refugio 20 Batista', '97 92060-2103', 'Rua 169', 'Cohab', 'Canindé', 'PI');

-- ENTIDADE Funcionario (CERCA DE 40 registros TAL COMO PEDE O DOCS)
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Igor Moura', 'Gerente', '88 93470-8835', 'igor.moura1@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Yuri Rodrigues', 'Coordenador', '88 96118-7177', 'yuri.rodrigues2@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Quintino Carvalho', 'Atendente', '88 93681-1049', 'quintino.carvalho3@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Kaio Silva', 'Gerente', '88 93770-9641', 'kaio.silva4@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Helena Silva', 'Atendente', '88 93750-1104', 'helena.silva5@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Bruno Araújo', 'Atendente', '88 93899-4562', 'bruno.araújo6@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Vitor Lima', 'Veterinario', '88 92167-9355', 'vitor.lima7@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Sergio Lima', 'Veterinario', '88 96669-3119', 'sergio.lima8@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Diego Pereira', 'Auxiliar', '88 96939-6735', 'diego.pereira9@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Otavio Souza', 'Atendente', '88 96596-5559', 'otavio.souza10@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Zoe Pereira', 'Veterinario', '88 93116-8786', 'zoe.pereira11@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Otavio Costa', 'Auxiliar', '88 94563-7579', 'otavio.costa12@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Helena Oliveira', 'Auxiliar', '88 91604-0828', 'helena.oliveira13@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Ursula Fernandes', 'Atendente', '88 93872-2724', 'ursula.fernandes14@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Natalia Lima', 'Auxiliar', '88 96570-0960', 'natalia.lima15@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Felipe Pinto', 'Atendente', '88 94345-7454', 'felipe.pinto16@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Julia Ribeiro', 'Gerente', '88 92536-3111', 'julia.ribeiro17@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Julia Rodrigues', 'Atendente', '88 98883-0998', 'julia.rodrigues18@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Ximena Araújo', 'Atendente', '88 99571-7811', 'ximena.araújo19@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Quintino Moura', 'Veterinario', '88 98320-1312', 'quintino.moura20@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Felipe Oliveira', 'Gerente', '88 93853-6615', 'felipe.oliveira21@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Diego Rocha', 'Veterinario', '88 99740-0651', 'diego.rocha22@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Tatiana Oliveira', 'Auxiliar', '88 99260-8565', 'tatiana.oliveira23@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Kaio Gomes', 'Veterinario', '88 93910-4351', 'kaio.gomes24@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Marcos Costa', 'Coordenador', '88 95180-1188', 'marcos.costa25@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Ana Carvalho', 'Gerente', '88 91638-1200', 'ana.carvalho26@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Rafaela Rodrigues', 'Gerente', '88 92170-5718', 'rafaela.rodrigues27@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Carla Almeida', 'Coordenador', '88 92584-7179', 'carla.almeida28@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Rafaela Martins', 'Gerente', '88 90128-9086', 'rafaela.martins29@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Julia Pereira', 'Veterinario', '88 91891-1753', 'julia.pereira30@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Ximena Fernandes', 'Veterinario', '88 94616-9909', 'ximena.fernandes31@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Gustavo Araújo', 'Veterinario', '88 98280-8004', 'gustavo.araújo32@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Igor Souza', 'Atendente', '88 94533-0722', 'igor.souza33@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Ana Araújo', 'Veterinario', '88 92647-7239', 'ana.araújo34@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Rafaela Ribeiro', 'Gerente', '88 91832-1232', 'rafaela.ribeiro35@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Wagner Costa', 'Gerente', '88 96049-9543', 'wagner.costa36@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Rafaela Costa', 'Auxiliar', '88 90685-5050', 'rafaela.costa37@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Larissa Souza', 'Coordenador', '88 94088-1684', 'larissa.souza38@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Larissa Fernandes', 'Auxiliar', '88 92532-3878', 'larissa.fernandes39@exemplo.com');
INSERT INTO Funcionario (Nome, Cargo, Telefone, Email) VALUES ('Felipe Santos', 'Auxiliar', '88 92938-5442', 'felipe.santos40@exemplo.com');

-- ENTIDADE Adotante (COM APROXIMANDAMENTE 150 registros TAL COMO PEDE O DOCS )
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Zoe Ribeiro', '88 94371-2608', 'Rua 56', 'Cohab', 'Crateús', 'CE', '327.304.936-68');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Larissa Martins', '88 93652-0387', 'Rua 99', 'Cohab', 'Russas', 'CE', '985.171.891-45');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Larissa Moura', '88 95425-0452', 'Rua 60', 'Altos', 'Fortaleza', 'CE', '371.139.211-86');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Barbosa', '88 97149-9932', 'Rua 262', 'Centro', 'Iguatu', 'CE', '294.360.145-65');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ana Moura', '88 93228-5967', 'Rua 221', 'Centro', 'Russas', 'RN', '421.779.968-25');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ximena Martins', '88 95344-6592', 'Rua 152', 'Jardim', 'Fortaleza', 'CE', '530.780.488-96');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ximena Santos', '88 96653-8977', 'Rua 1', 'Altos', 'Juazeiro', 'PI', '540.904.693-87');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Araújo', '88 93501-8375', 'Rua 243', 'Residencial', 'Fortaleza', 'CE', '390.627.779-91');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Tatiana Araújo', '88 95085-3680', 'Rua 102', 'Bela Vista', 'Crateús', 'CE', '350.586.725-19');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Otavio Ribeiro', '88 93185-6291', 'Rua 254', 'Cohab', 'Tauá', 'PI', '771.804.105-23');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Yuri Ribeiro', '88 97611-0822', 'Rua 286', 'Bela Vista', 'Sobral', 'CE', '236.920.575-95');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Quintino Fernandes', '88 98270-6991', 'Rua 281', 'Cohab', 'Fortaleza', 'CE', '560.365.869-41');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Gomes', '88 97939-3919', 'Rua 141', 'Cohab', 'Sobral', 'CE', '340.378.443-50');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Rafaela Oliveira', '88 96275-2503', 'Rua 110', 'Centro', 'Iguatu', 'CE', '438.655.577-63');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Bruno Rodrigues', '88 99569-0320', 'Rua 295', 'Cohab', 'Quixadá', 'CE', '460.405.871-59');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Fernandes', '88 99883-3613', 'Rua 250', 'Bela Vista', 'Juazeiro', 'CE', '597.129.498-53');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Vitor Pinto', '88 92091-8751', 'Rua 14', 'Cohab', 'Icó', 'CE', '778.127.185-92');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Costa', '88 90823-4262', 'Rua 195', 'Altos', 'Tauá', 'CE', '434.445.879-58');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Igor Ribeiro', '88 97705-0317', 'Rua 277', 'Centro', 'Russas', 'CE', '765.170.899-93');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Bruno Silva', '88 90333-2496', 'Rua 123', 'Bela Vista', 'Quixadá', 'CE', '677.323.576-99');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Igor Barbosa', '88 91876-2683', 'Rua 160', 'Centro', 'Icó', 'CE', '419.689.793-58');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Marcos Rodrigues', '88 91669-4941', 'Rua 62', 'Jardim', 'Crateús', 'CE', '645.538.777-57');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Carla Moura', '88 96882-8031', 'Rua 55', 'Cohab', 'Russas', 'CE', '824.256.545-32');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ximena Moura', '88 98817-7921', 'Rua 239', 'Cohab', 'Icó', 'CE', '430.972.351-21');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Igor Carvalho', '88 99336-9999', 'Rua 195', 'Altos', 'Crateús', 'CE', '971.432.286-72');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Gustavo Barbosa', '88 94581-9767', 'Rua 142', 'Jardim', 'Crateús', 'CE', '295.187.347-62');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Patricia Fernandes', '88 98041-7342', 'Rua 9', 'Centro', 'Juazeiro', 'CE', '514.808.349-49');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Vitor Rocha', '88 98698-5632', 'Rua 218', 'Residencial', 'Canindé', 'CE', '460.819.564-44');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Gomes', '88 95169-1958', 'Rua 275', 'Residencial', 'Fortaleza', 'CE', '321.856.595-45');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ximena Rocha', '88 99777-4636', 'Rua 52', 'Bela Vista', 'Juazeiro', 'CE', '469.283.409-11');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Wagner Fernandes', '88 90893-9066', 'Rua 150', 'Residencial', 'Fortaleza', 'CE', '205.993.112-83');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Lima', '88 93020-0841', 'Rua 130', 'Cohab', 'Sobral', 'CE', '510.603.175-83');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Souza', '88 94978-1395', 'Rua 128', 'Centro', 'Canindé', 'CE', '720.710.909-89');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Helena Moura', '88 94871-9642', 'Rua 220', 'Altos', 'Icó', 'CE', '161.724.857-22');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Yuri Rodrigues', '88 91330-2573', 'Rua 123', 'Bela Vista', 'Canindé', 'CE', '260.102.518-67');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Wagner Nogueira', '88 93792-4720', 'Rua 145', 'Residencial', 'Quixadá', 'CE', '803.339.370-90');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sergio Rodrigues', '88 93683-2441', 'Rua 137', 'Bela Vista', 'Sobral', 'CE', '269.911.414-86');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ximena Rocha', '88 92037-7679', 'Rua 156', 'Residencial', 'Iguatu', 'CE', '612.652.605-66');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Carla Nogueira', '88 95280-9891', 'Rua 129', 'Centro', 'Sobral', 'CE', '790.956.981-83');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sergio Silva', '88 99441-0659', 'Rua 90', 'Cohab', 'Canindé', 'CE', '384.285.699-65');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Lima', '88 95700-6690', 'Rua 171', 'Altos', 'Sobral', 'CE', '437.521.810-73');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Pinto', '88 90601-7451', 'Rua 46', 'Altos', 'Juazeiro', 'CE', '218.891.513-75');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ana Fernandes', '88 93073-8494', 'Rua 186', 'Jardim', 'Quixadá', 'CE', '878.152.308-44');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Rafaela Costa', '88 97941-1989', 'Rua 15', 'Residencial', 'Icó', 'CE', '826.262.418-80');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ana Fernandes', '88 91858-7560', 'Rua 61', 'Residencial', 'Fortaleza', 'CE', '833.398.621-44');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Lima', '88 97483-9031', 'Rua 75', 'Cohab', 'Tauá', 'CE', '620.864.239-18');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Igor Ribeiro', '88 94377-0042', 'Rua 145', 'Residencial', 'Juazeiro', 'CE', '693.775.601-29');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Otavio Fernandes', '88 99042-8903', 'Rua 194', 'Cohab', 'Russas', 'CE', '814.344.685-59');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Helena Ribeiro', '88 96246-6325', 'Rua 78', 'Cohab', 'Crateús', 'CE', '614.704.439-22');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Otavio Pereira', '88 90251-2361', 'Rua 210', 'Residencial', 'Fortaleza', 'CE', '580.900.371-53');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Tatiana Pinto', '88 98742-6226', 'Rua 163', 'Residencial', 'Quixadá', 'CE', '136.732.170-40');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Martins', '88 97110-1612', 'Rua 52', 'Cohab', 'Fortaleza', 'CE', '129.147.432-17');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Barbosa', '88 94000-8702', 'Rua 211', 'Jardim', 'Fortaleza', 'CE', '279.180.724-58');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Tatiana Almeida', '88 92344-3804', 'Rua 237', 'Residencial', 'Juazeiro', 'CE', '361.782.109-69');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Fernandes', '84 95661-9626', 'Rua 154', 'Residencial', 'Iguatu', 'CE', '567.965.409-35');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Marcos Lima', '88 99370-5881', 'Rua 295', 'Altos', 'Juazeiro', 'CE', '949.774.505-45');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Clauverson Silva', '88 99935-8138', 'Rua 147', 'Bela Vista', 'Icó', 'CE', '324.751.294-89');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Igor Costa', '88 95061-7222', 'Rua 18', 'Jardim', 'Russas', 'CE', '192.402.434-63');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Felipe Rodrigues', '88 95994-8697', 'Rua 257', 'Altos', 'Fortaleza', 'CE', '944.593.925-47');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ximenes Araújo', '88 91233-2306', 'Rua 116', 'Residencial', 'Iguatu', 'CE', '474.192.909-60');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ana Gomes', '88 96038-4295', 'Rua 300', 'Cohab', 'Russas', 'CE', '791.339.582-13');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Tatiana Fernandes', '88 93626-1035', 'Rua 238', 'Residencial', 'Juazeiro', 'CE', '219.243.146-14');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Lima', '88 98807-2222', 'Rua 199', 'Cohab', 'Russas', 'RN', '529.701.860-29');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Pereira', '88 96686-4583', 'Rua 17', 'Residencial', 'Russas', 'CE', '554.555.341-56');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Diego Barbosa', '88 90992-6523', 'Rua 142', 'Bela Vista', 'Sobral', 'CE', '193.778.317-92');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Nogueira', '88 95464-3990', 'Rua 65', 'Jardim', 'Tauá', 'CE', '949.883.667-36');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sergio Rodrigues', '88 95383-2417', 'Rua 2', 'Altos', 'Fortaleza', 'CE', '653.356.917-32');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Diego Silva', '88 93898-9647', 'Rua 166', 'Centro', 'Fortaleza', 'CE', '153.229.859-63');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Quintino Pereira', '88 97344-5931', 'Rua 263', 'Jardim', 'Sobral', 'CE', '615.326.729-15');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Xico Moura', '88 90996-7847', 'Rua 206', 'Cohab', 'Sobral', 'CE', '829.554.175-20');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Kaio Nogueira', '88 94505-9590', 'Rua 281', 'Residencial', 'Russas', 'CE', '711.643.401-68');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julio Nogueira', '88 99033-3522', 'Rua 221', 'Cohab', 'Tauá', 'CE', '447.947.564-61');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Anastacia Pereira', '88 94176-6132', 'Rua 79', 'Residencial', 'Quixadá', 'CE', '193.951.187-21');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Mota', '88 92131-9115', 'Rua 31', 'Jardim', 'Canindé', 'CE', '437.786.225-62');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Larissa Ribeiro', '88 94712-9837', 'Rua 160', 'Altos', 'Sobral', 'CE', '619.317.258-94');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Patricia Almeida', '88 99113-6022', 'Rua 59', 'Altos', 'Icó', 'CE', '926.539.965-81');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Yuri Nogueira', '88 90430-9977', 'Rua 137', 'Centro', 'Fortaleza', 'CE', '819.880.416-53');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Larissa Silva', '88 99278-6566', 'Rua 36', 'Bela Vista', 'Crateús', 'CE', '864.643.320-58');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Carvalho', '88 95105-5314', 'Rua 291', 'Jardim', 'Sobral', 'CE', '259.261.872-89');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Bruno Oliveira', '88 97957-9946', 'Rua 227', 'Cohab', 'Juazeiro', 'CE', '873.624.216-54');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Saldanha', '88 97972-8633', 'Rua 158', 'Centro', 'Tauá', 'CE', '713.156.107-36');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Rodrigues', '88 94742-5375', 'Rua 62', 'Centro', 'Quixadá', 'CE', '279.232.489-78');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Wagner Almeida', '88 91180-6505', 'Rua 22', 'Cohab', 'Crateús', 'CE', '179.982.420-83');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Rocha', '88 94743-1887', 'Rua 208', 'Centro', 'Russas', 'CE', '920.732.571-98');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Larissa Oliveira', '88 93986-7138', 'Rua 206', 'Jardim', 'Sobral', 'CE', '991.417.863-53');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Helena Araújo', '88 98363-1868', 'Rua 272', 'Jardim', 'Tauá', 'CE', '459.844.938-92');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Eduarda Almeida', '88 93232-2842', 'Rua 79', 'Residencial', 'Sobral', 'CE', '891.743.605-69');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Yuri Rocha', '88 99248-5295', 'Rua 162', 'Bela Vista', 'Quixadá', 'CE', '580.552.746-48');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Jarvan Gomes', ' 88 98312-1215', 'Rua 159', 'Cohab', 'Quixadá', 'CE', '158.477.951-46');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Carla Oliveira', '88 96299-7581', 'Rua 298', 'Jardim', 'Crateús', 'CE', '929.685.767-34');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Kaio Nogueira', '88 91013-7381', 'Rua 53', 'Altos', 'Sobral', 'CE', '761.276.140-41');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Wagner Carvalho', '88 98564-9991', 'Rua 82', 'Altos', 'Russas', 'DE', '496.518.893-53');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Vitor Nogueira', '88 91079-5401', 'Rua 49', 'Jardim', 'Iguatu', 'CE', '358.841.972-94');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sylas Costa', '88 92317-5731', 'Rua 159', 'Residencial', 'Iguatu', 'CE', '709.825.186-49');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Rafaela Pinto', '88 92093-8624', 'Rua 48', 'Residencial', 'Iguatu', 'CE', '470.118.471-49');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Felipe Rodrigues', '88 93145-3711', 'Rua 71', 'Bela Vista', 'Sobral', 'CE', '964.907.203-74');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Zac Fernandes', '88 90618-5517', 'Rua 68', 'Jardim', 'Iguatu', 'CE', '266.285.951-98');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Yuri Nogueira', '88 97170-0715', 'Rua 211', 'Altos', 'Tauá', 'CE', '725.391.870-67');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Helena Fernandes', '88 93178-6026', 'Rua 293', 'Cohab', 'Quixadá', 'CE', '896.491.614-77');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Santos', '88 92267-4096', 'Rua 27', 'Residencial', 'Quixadá', 'CE', '667.205.828-76');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Diego Martins', '88 94469-7361', 'Rua 263', 'Bela Vista', 'Iguatu', 'CE', '327.936.561-54');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ana Ribeiro', '88 96126-3862', 'Rua 198', 'Centro', 'Russas', 'CE', '128.426.201-93');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Kaio Costa', '88 97740-2273', 'Rua 241', 'Cohab', 'Icó', 'CE', '181.119.362-37');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Eduarda Fernandes', '88 98647-6934', 'Rua 57', 'Altos', 'Tauá', 'CE', '224.148.344-63');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Nogueira', '88 98189-9776', 'Rua 275', 'Centro', 'Canindé', 'CE', '347.835.247-47');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Silva', '88 99349-6825', 'Rua 96', 'Residencial', 'Sobral', 'CE', '469.169.638-79');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Jinx Moura', '88 97702-0713', 'Rua 199', 'Altos', 'Juazeiro', 'CE', '465.907.169-54');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Helena Pereira', '88 92185-0726', 'Rua 181', 'Jardim', 'Russas', 'CE', '950.897.801-69');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Wagner Lima', '88 91033-7498', 'Rua 19', 'Altos', 'Tauá', 'CE', '910.304.142-50');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Moura', '88 97756-4150', 'Rua 19', 'Residencial', 'Tauá', 'CE', '465.982.899-16');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Araújo', '88 97159-6553', 'Rua 226', 'Cohab', 'Russas', 'CE', '608.808.609-57');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Zoe Moura', '88 96955-1293', 'Rua 221', 'Jardim', 'Fortaleza', 'CE', '400.428.205-20');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Kaio Martins', '88 96981-2730', 'Rua 228', 'Altos', 'Quixadá', 'CE', '844.990.461-88');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Gomes', '88 91229-6655', 'Rua 187', 'Jardim', 'Fortaleza', 'CE', '246.969.722-96');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sivir Carvalho', '88 93866-6001', 'Rua 186', 'Cohab', 'Icó', 'CE', '719.257.795-67');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Larissa Barbosa', '88 99403-2255', 'Rua 272', 'Altos', 'Iguatu', 'CE', '765.385.355-24');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sion Santos', '88 99202-1929', 'Rua 135', 'Altos', 'Quixadá', 'CE', '726.392.810-72');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Gustavo Pereira', '88 97406-2828', 'Rua 228', 'Centro', 'Russas', 'CE', '826.166.663-79');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Julia Martins', '88 95922-8335', 'Rua 115', 'Centro', 'Tauá', 'CE', '342.909.605-13');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Larissa Fernandes', '88 99038-2126', 'Rua 45', 'Centro', 'Juazeiro', 'CE', '834.836.590-77');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Natalia Ribeiro', '88 92053-5194', 'Rua 38', 'Cohab', 'Quixadá', 'CE', '452.231.999-80');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Rocha', '88 97088-8238', 'Rua 29', 'Centro', 'Canindé', 'CE', '411.268.265-51');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Wagner Almeida', '88 94653-1292', 'Rua 129', 'Bela Vista', 'Canindé', 'CE', '228.740.410-88');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Rafaela Oliveira', '88 99696-9513', 'Rua 79', 'Bela Vista', 'Icó', 'CE', '445.962.677-15');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ana Oliveira', '88 94336-3453', 'Rua 293', 'Cohab', 'Icó', 'CE', '609.742.658-47');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ursula Martins', '88 94873-7430', 'Rua 38', 'Residencial', 'Crateús', 'CE', '550.525.595-69');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Gustavo Araújo', '88 95231-5658', 'Rua 205', 'Bela Vista', 'Russas', 'CE', '675.208.426-40');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Otavio Pereira', '88 92308-1586', 'Rua 26', 'Altos', 'Iguatu', 'CE', '528.354.986-30');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Kaio Rocha', '88 92610-8163', 'Rua 264', 'Cohab', 'Quixadá', 'CE', '609.123.192-60');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Ahri Carvalho', '88 99557-5781', 'Rua 25', 'Centro', 'Juazeiro', 'CE', '711.963.769-96');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Patricia Martins', '88 97060-2194', 'Rua 136', 'Residencial', 'Russas', 'CE', '474.146.510-16');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sergio Fernandes', '88 94728-1204', 'Rua 198', 'Jardim', 'Quixadá', 'CE', '386.945.738-97');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Tatiana Pereira', '88 96453-6114', 'Rua 174', 'Jardim', 'Russas', 'CE', '303.716.621-61');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Quintino Souza', '88 95456-7761', 'Rua 266', 'Cohab', 'Fortaleza', 'CE', '627.243.435-88');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Kaio Santos', '88 94902-9727', 'Rua 173', 'Jardim', 'Canindé', 'CE', '601.825.676-48');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Patricia Silva', '88 96824-9563', 'Rua 158', 'Residencial', 'Crateús', 'CE', '585.371.771-84');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sergio Almeida', '88 97871-2793', 'Rua 269', 'Residencial', 'Icó', 'CE', '251.941.797-41');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Bruno Rocha', '88 93125-0310', 'Rua 226', 'Altos', 'Iguatu', 'CE', '522.807.308-62');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Quintino Nogueira', '88 92262-8498', 'Rua 107', 'Jardim', 'Russas', 'CE', '638.485.421-32');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Otavio Fernandes', '88 94331-9995', 'Rua 248', 'Bela Vista', 'Tauá', 'CE', '671.405.330-48');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Yuri Martins', '88 95194-7861', 'Rua 179', 'Jardim', 'Juazeiro', 'CE', '224.687.792-79');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Marcos Pinto', '88 94758-0689', 'Rua 148', 'Residencial', 'Sobral', 'CE', '552.771.362-71');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Gustavo Rodrigues', '88 99208-4450', 'Rua 71', 'Centro', 'Icó', 'CE', '345.348.151-95');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Braum Almeida', '88 91641-6771', 'Rua 170', 'Residencial', 'Quixadá', 'CE', '797.889.240-10');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Rafaela Santos', '88 97822-3267', 'Rua 148', 'Altos', 'Juazeiro', 'CE', '887.191.767-83');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Helena Fernandes', '88 92868-6846', 'Rua 91', 'Centro', 'Iguatu', 'CE', '290.866.993-47');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Bruno Silva', '88 91758-5489', 'Rua 146', 'Cohab', 'Canindé', 'CE', '605.237.971-74');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Otavio Gomes', '88 95417-2662', 'Rua 235', 'Residencial', 'Juazeiro', 'CE', '114.854.445-47');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Sergio Rodrigues', '88 97007-8442', 'Rua 168', 'Centro', 'Iguatu', 'CE', '289.243.588-51');
INSERT INTO Adotante (Nome, Telefone, Rua, Bairro, Cidade, Estado, CPF) VALUES ('Helena Silva', '88 97319-4374', 'Rua 169', 'Altos', 'Icó', 'CE', '111.367.769-56');

-- ENTIDADE Animal ( POSSUI CERCA DE 200 registros TAL COMO PEDE O DOCS)
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira1', 'Gato', 'SRD', 50.07, 18.88, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya2', 'Coelho', 'SRD', 48.32, 37.66, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela3', 'Gato', 'Vira-lata', 67.44, 19.39, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira4', 'Coelho', 'Comum', 52.12, 36.56, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob5', 'Gato', 'Maine Coon', 62.39, 3.73, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu6', 'Coelho', 'SRD', 65.03, 4.93, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela7', 'Gato', 'Vira-lata', 29.69, 21.05, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo8', 'Gato', 'Maine Coon', 39.33, 36.01, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob9', 'Cão', 'Poodle', 17.92, 16.91, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu10', 'Pássaro', 'Comum', 53.4, 16.14, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira11', 'Gato', 'Maine Coon', 14.38, 17.24, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu12', 'Cão', 'SRD', 69.17, 19.15, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya13', 'Gato', 'Vira-lata', 55.95, 39.14, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus14', 'Pássaro', 'Comum', 62.18, 36.32, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max15', 'Gato', 'Siamês', 17.12, 39.72, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu16', 'Gato', 'Vira-lata', 60.09, 30.37, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor17', 'Pássaro', 'Comum', 59.4, 10.28, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina18', 'Coelho', 'SRD', 66.24, 29.14, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna19', 'Pássaro', 'SRD', 24.44, 3.16, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor20', 'Cão', 'Vira-lata', 54.43, 16.39, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu21', 'Gato', 'SRD', 18.41, 39.74, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki22', 'Coelho', 'Comum', 24.21, 35.11, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya23', 'Coelho', 'Comum', 13.66, 37.97, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo24', 'Pássaro', 'Comum', 12.81, 14.1, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob25', 'Coelho', 'Comum', 34.5, 12.35, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob26', 'Pássaro', 'SRD', 60.96, 12.38, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob27', 'Pássaro', 'SRD', 43.74, 38.73, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya28', 'Gato', 'Siamês', 22.2, 26.04, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki29', 'Coelho', 'SRD', 42.14, 33.26, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola30', 'Pássaro', 'SRD', 62.42, 7.93, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor31', 'Gato', 'Siamês', 28.19, 36.41, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby32', 'Cão', 'Pitbull', 69.97, 19.42, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira33', 'Gato', 'Persa', 64.91, 22.31, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya34', 'Pássaro', 'Comum', 28.51, 14.71, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor35', 'Cão', 'Bulldog', 68.88, 19.04, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby36', 'Coelho', 'Comum', 34.84, 22.72, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira37', 'Gato', 'SRD', 25.65, 37.42, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola38', 'Gato', 'Vira-lata', 29.79, 15.5, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor39', 'Coelho', 'Comum', 55.8, 19.8, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor40', 'Gato', 'Siamês', 20.16, 28.95, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina41', 'Cão', 'Pinscher', 12.03, 33.94, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob42', 'Cão', 'Poodle', 18.25, 25.41, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira43', 'Gato', 'SRD', 23.12, 18.51, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela44', 'Pássaro', 'Comum', 10.94, 21.52, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna45', 'Cão', 'Pinscher', 53.33, 21.66, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna46', 'Pássaro', 'SRD', 16.42, 4.3, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby47', 'Gato', 'Maine Coon', 41.59, 32.7, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob48', 'Pássaro', 'SRD', 32.38, 16.54, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira49', 'Gato', 'Siamês', 51.04, 33.99, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max50', 'Pássaro', 'Comum', 32.63, 19.3, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira51', 'Gato', 'SRD', 39.99, 17.64, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela52', 'Cão', 'Pinscher', 65.15, 9.58, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola53', 'Cão', 'SRD', 51.07, 11.57, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina54', 'Coelho', 'SRD', 67.69, 23.69, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max55', 'Coelho', 'SRD', 43.84, 22.88, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo56', 'Coelho', 'Comum', 55.34, 6.03, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu57', 'Coelho', 'SRD', 15.86, 9.67, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus58', 'Pássaro', 'Comum', 11.78, 11.3, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor59', 'Gato', 'Siamês', 43.18, 15.33, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo60', 'Pássaro', 'SRD', 56.33, 12.17, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira61', 'Cão', 'SRD', 26.08, 15.51, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira62', 'Pássaro', 'Comum', 31.64, 4.12, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor63', 'Coelho', 'Comum', 16.13, 3.95, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor64', 'Pássaro', 'SRD', 11.58, 14.48, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela65', 'Coelho', 'Comum', 10.74, 16.85, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira66', 'Gato', 'Maine Coon', 41.27, 27.57, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina67', 'Coelho', 'Comum', 26.1, 6.26, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya68', 'Coelho', 'Comum', 27.99, 31.42, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola69', 'Gato', 'Persa', 45.63, 8.22, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina70', 'Coelho', 'SRD', 66.93, 13.62, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob71', 'Coelho', 'Comum', 30.08, 32.71, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola72', 'Coelho', 'SRD', 38.74, 7.52, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus73', 'Coelho', 'Comum', 68.07, 31.39, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya74', 'Coelho', 'Comum', 31.9, 37.32, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela75', 'Gato', 'Maine Coon', 11.61, 29.22, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor76', 'Coelho', 'SRD', 59.14, 31.93, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo77', 'Pássaro', 'SRD', 48.0, 10.06, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira78', 'Pássaro', 'Comum', 14.44, 39.63, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela79', 'Pássaro', 'Comum', 42.62, 31.73, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira80', 'Cão', 'SRD', 56.14, 26.48, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina81', 'Cão', 'Pinscher', 69.02, 27.26, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob82', 'Coelho', 'Comum', 16.36, 4.39, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu83', 'Gato', 'Persa', 32.45, 18.79, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus84', 'Cão', 'Poodle', 16.27, 16.93, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max85', 'Gato', 'Siamês', 28.71, 18.49, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu86', 'Pássaro', 'Comum', 38.57, 17.81, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus87', 'Cão', 'Labrador', 12.68, 28.58, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki88', 'Coelho', 'SRD', 50.63, 6.99, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu89', 'Gato', 'Maine Coon', 19.61, 22.61, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby90', 'Pássaro', 'SRD', 21.18, 26.46, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna91', 'Gato', 'Persa', 45.53, 15.86, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby92', 'Coelho', 'SRD', 44.64, 32.08, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus93', 'Coelho', 'SRD', 37.45, 10.86, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu94', 'Coelho', 'Comum', 46.68, 23.69, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus95', 'Pássaro', 'SRD', 58.82, 28.39, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela96', 'Cão', 'Pitbull', 18.04, 5.16, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max97', 'Gato', 'Siamês', 51.61, 20.68, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela98', 'Gato', 'Maine Coon', 33.02, 7.84, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu99', 'Gato', 'Persa', 27.33, 7.89, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela100', 'Cão', 'Bulldog', 31.54, 0.88, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby101', 'Pássaro', 'Comum', 34.55, 19.92, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor102', 'Gato', 'SRD', 43.92, 31.94, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola103', 'Cão', 'Labrador', 23.49, 11.9, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela104', 'Pássaro', 'SRD', 44.36, 11.08, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu105', 'Cão', 'Bulldog', 53.14, 22.08, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max106', 'Gato', 'Siamês', 62.49, 1.77, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus107', 'Cão', 'Poodle', 61.92, 5.14, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby108', 'Coelho', 'Comum', 19.96, 6.0, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki109', 'Gato', 'SRD', 44.2, 21.53, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus110', 'Coelho', 'Comum', 44.36, 38.12, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina111', 'Pássaro', 'SRD', 69.55, 34.75, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira112', 'Gato', 'Vira-lata', 18.77, 13.22, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob113', 'Pássaro', 'Comum', 18.53, 25.48, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya114', 'Pássaro', 'SRD', 48.02, 35.26, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya115', 'Coelho', 'Comum', 37.28, 19.78, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki116', 'Cão', 'Pitbull', 68.33, 25.58, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki117', 'Cão', 'Bulldog', 42.07, 9.1, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki118', 'Gato', 'Persa', 26.11, 33.22, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu119', 'Gato', 'Maine Coon', 61.15, 31.64, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna120', 'Cão', 'Pitbull', 57.03, 18.65, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki121', 'Gato', 'Persa', 37.39, 39.68, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby122', 'Gato', 'Siamês', 19.54, 37.34, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max123', 'Coelho', 'Comum', 14.95, 26.75, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna124', 'Pássaro', 'Comum', 53.56, 30.33, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo125', 'Cão', 'Pitbull', 15.71, 8.93, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina126', 'Gato', 'Maine Coon', 50.8, 0.87, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki127', 'Cão', 'Bulldog', 35.34, 5.72, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby128', 'Pássaro', 'SRD', 53.85, 4.55, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus129', 'Coelho', 'SRD', 32.96, 32.63, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo130', 'Gato', 'SRD', 41.83, 0.83, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor131', 'Coelho', 'SRD', 47.68, 6.48, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela132', 'Pássaro', 'SRD', 15.2, 4.47, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela133', 'Pássaro', 'Comum', 67.79, 12.92, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby134', 'Coelho', 'SRD', 24.89, 24.24, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob135', 'Cão', 'Bulldog', 60.82, 35.1, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu136', 'Gato', 'Persa', 27.73, 2.66, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor137', 'Pássaro', 'SRD', 24.46, 25.7, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu138', 'Cão', 'Labrador', 66.04, 5.71, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus139', 'Gato', 'Persa', 67.27, 30.93, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela140', 'Cão', 'SRD', 25.73, 2.07, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob141', 'Pássaro', 'Comum', 47.71, 20.29, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya142', 'Pássaro', 'SRD', 48.43, 21.74, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola143', 'Cão', 'Labrador', 14.74, 36.88, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu144', 'Coelho', 'Comum', 45.19, 30.65, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola145', 'Pássaro', 'SRD', 13.47, 3.91, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max146', 'Pássaro', 'SRD', 28.56, 29.8, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max147', 'Cão', 'Pitbull', 18.23, 0.95, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus148', 'Coelho', 'SRD', 32.31, 30.12, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira149', 'Cão', 'Bulldog', 63.99, 13.73, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola150', 'Cão', 'Labrador', 52.74, 23.28, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor151', 'Pássaro', 'Comum', 13.33, 34.44, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus152', 'Gato', 'Siamês', 56.4, 35.82, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby153', 'Cão', 'SRD', 61.52, 0.99, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor154', 'Coelho', 'Comum', 65.21, 7.57, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu155', 'Pássaro', 'SRD', 29.31, 16.94, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola156', 'Cão', 'Pinscher', 32.37, 20.33, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina157', 'Gato', 'Maine Coon', 68.88, 38.19, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor158', 'Coelho', 'Comum', 29.64, 22.35, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus159', 'Gato', 'Siamês', 43.83, 12.5, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Thor160', 'Coelho', 'Comum', 69.87, 31.15, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina161', 'Cão', 'Poodle', 11.43, 21.89, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus162', 'Cão', 'Bulldog', 49.44, 34.04, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max163', 'Gato', 'Maine Coon', 68.99, 17.08, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina164', 'Coelho', 'SRD', 12.63, 9.64, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira165', 'Coelho', 'Comum', 68.47, 3.85, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu166', 'Gato', 'Persa', 14.49, 22.93, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo167', 'Gato', 'Vira-lata', 27.5, 34.11, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira168', 'Coelho', 'Comum', 37.17, 9.73, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina169', 'Cão', 'Vira-lata', 16.34, 18.26, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Maya170', 'Cão', 'Pinscher', 31.5, 30.93, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola171', 'Pássaro', 'Comum', 61.15, 4.07, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki172', 'Cão', 'Vira-lata', 60.16, 13.45, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira173', 'Gato', 'Siamês', 33.77, 2.43, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Lola174', 'Gato', 'SRD', 67.13, 34.26, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max175', 'Pássaro', 'SRD', 58.23, 6.02, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna176', 'Gato', 'Vira-lata', 21.89, 16.32, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela177', 'Coelho', 'SRD', 11.31, 3.05, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob178', 'Gato', 'SRD', 64.3, 33.26, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max179', 'Cão', 'Poodle', 13.04, 37.0, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Loki180', 'Pássaro', 'Comum', 11.77, 27.49, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus181', 'Gato', 'Vira-lata', 26.5, 18.12, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna182', 'Gato', 'Siamês', 39.93, 35.37, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna183', 'Cão', 'Labrador', 32.98, 17.06, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Pingo184', 'Cão', 'Poodle', 56.91, 14.68, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus185', 'Coelho', 'Comum', 26.23, 1.53, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna186', 'Coelho', 'SRD', 58.52, 19.13, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob187', 'Gato', 'Vira-lata', 16.01, 26.45, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Milu188', 'Cão', 'Bulldog', 69.78, 9.17, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus189', 'Gato', 'Vira-lata', 24.19, 13.06, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela190', 'Cão', 'Pitbull', 52.03, 37.93, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bela191', 'Gato', 'Persa', 42.53, 7.43, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Max192', 'Cão', 'Vira-lata', 46.1, 1.29, 'Retornou');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Luna193', 'Coelho', 'SRD', 58.39, 13.96, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob194', 'Coelho', 'SRD', 11.31, 23.67, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Bob195', 'Cão', 'Bulldog', 41.58, 14.91, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Zeus196', 'Pássaro', 'SRD', 30.19, 13.24, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Kira197', 'Pássaro', 'Comum', 48.95, 7.38, 'Em avaliação');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Toby198', 'Gato', 'Persa', 28.41, 27.7, 'Adotado');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina199', 'Cão', 'Pitbull', 66.92, 15.97, 'Disponível');
INSERT INTO Animal (Nome, Especie, Raca, Altura, Peso, Situacao) VALUES ('Nina200', 'Coelho', 'SRD', 48.38, 4.61, 'Retornou');

-- RELACIONAMENTO DE Animal_Vacina (vincular vacinas a animais)
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (2, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (2, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (3, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (3, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (3, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (4, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (5, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (7, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (8, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (8, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (9, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (10, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (10, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (10, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (11, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (13, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (14, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (14, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (15, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (16, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (16, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (18, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (20, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (21, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (22, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (23, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (24, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (24, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (25, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (26, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (27, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (28, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (29, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (30, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (30, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (31, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (32, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (34, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (35, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (38, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (38, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (39, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (41, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (42, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (42, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (42, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (43, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (43, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (44, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (44, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (45, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (45, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (46, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (47, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (49, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (50, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (51, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (52, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (52, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (54, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (55, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (56, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (57, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (57, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (58, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (58, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (58, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (59, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (60, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (62, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (63, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (63, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (65, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (65, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (65, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (66, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (66, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (66, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (67, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (68, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (70, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (71, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (71, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (71, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (72, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (73, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (74, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (75, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (75, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (76, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (79, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (80, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (80, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (81, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (82, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (82, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (83, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (83, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (84, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (84, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (85, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (86, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (87, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (87, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (89, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (89, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (91, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (92, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (92, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (93, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (93, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (94, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (95, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (95, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (96, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (96, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (96, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (97, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (97, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (97, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (98, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (98, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (99, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (100, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (100, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (100, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (101, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (101, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (103, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (103, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (104, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (104, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (106, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (107, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (107, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (108, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (109, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (109, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (110, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (110, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (111, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (111, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (112, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (113, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (114, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (114, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (114, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (115, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (116, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (116, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (117, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (119, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (119, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (120, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (120, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (121, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (122, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (124, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (124, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (124, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (125, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (126, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (126, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (127, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (128, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (128, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (129, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (130, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (130, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (131, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (132, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (133, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (133, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (133, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (134, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (135, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (136, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (136, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (136, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (137, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (138, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (138, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (138, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (140, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (140, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (141, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (142, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (142, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (143, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (143, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (144, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (144, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (144, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (145, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (146, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (146, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (147, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (147, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (148, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (148, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (148, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (149, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (149, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (150, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (151, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (152, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (153, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (153, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (154, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (154, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (155, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (156, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (157, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (158, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (159, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (160, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (162, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (162, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (163, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (163, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (164, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (165, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (165, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (166, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (166, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (166, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (168, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (168, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (169, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (170, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (170, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (170, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (171, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (172, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (172, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (173, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (173, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (175, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (176, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (177, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (178, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (179, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (180, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (180, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (183, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (183, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (184, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (185, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (186, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (187, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (187, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (188, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (189, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (190, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (191, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (191, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (191, 'Gripe');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (192, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (192, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (194, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (195, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (196, 'V10');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (198, 'V8');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (198, 'Giárdia');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (199, 'Raiva');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (199, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (200, 'Leishmaniose');
INSERT INTO Animal_Vacina (ID_Animal, Vacina) VALUES (200, 'V8');

-- RELACIONAMENTO DE Recebe (cada animal em um abrigo com data de entrada)
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 1, '2019-03-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 2, '2020-04-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 3, '2023-12-25');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 4, '2020-05-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 5, '2021-11-01');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 6, '2020-09-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 7, '2019-02-08');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 8, '2023-09-20');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 9, '2024-11-01');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (9, 10, '2025-12-25');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 11, '2020-07-15');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 12, '2020-03-05');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 13, '2025-12-05');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 14, '2022-03-03');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 15, '2020-03-11');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 16, '2021-03-24');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 17, '2021-03-29');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (9, 18, '2024-11-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 19, '2023-01-06');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 20, '2022-04-24');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 21, '2019-06-11');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 22, '2024-07-26');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 23, '2024-05-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 24, '2021-08-18');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 25, '2019-02-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (3, 26, '2020-03-28');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 27, '2024-07-16');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 28, '2020-01-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 29, '2019-11-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 30, '2021-11-14');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 31, '2024-02-14');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 32, '2021-12-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 33, '2019-07-25');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 34, '2020-12-16');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 35, '2022-04-05');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 36, '2022-07-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 37, '2020-04-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 38, '2019-07-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 39, '2020-07-20');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 40, '2022-09-08');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 41, '2023-11-28');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 42, '2022-01-03');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (3, 43, '2023-03-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 44, '2021-01-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 45, '2023-06-30');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 46, '2024-02-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (9, 47, '2023-04-29');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 48, '2023-09-24');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 49, '2020-04-08');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 50, '2019-08-29');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 51, '2020-02-29');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 52, '2025-08-16');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 53, '2025-05-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 54, '2021-01-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 55, '2023-04-05');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 56, '2025-11-09');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 57, '2020-06-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 58, '2024-06-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 59, '2023-08-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 60, '2019-07-08');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (3, 61, '2021-12-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 62, '2019-02-20');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 63, '2025-06-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 64, '2021-07-06');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 65, '2024-10-27');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 66, '2025-12-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 67, '2023-11-08');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 68, '2024-05-27');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 69, '2023-04-26');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 70, '2025-04-05');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 71, '2019-08-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 72, '2020-10-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 73, '2024-04-06');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 74, '2020-11-08');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (3, 75, '2024-07-06');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 76, '2021-09-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 77, '2022-02-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 78, '2024-09-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 79, '2025-03-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 80, '2023-07-10');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 81, '2019-11-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 82, '2023-12-25');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 83, '2024-01-10');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (3, 84, '2024-08-03');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 85, '2022-07-18');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 86, '2024-07-30');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 87, '2020-02-25');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 88, '2023-08-16');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 89, '2025-04-01');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 90, '2019-01-01');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (3, 91, '2025-10-10');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 92, '2022-06-01');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 93, '2025-04-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 94, '2024-02-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 95, '2023-01-28');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 96, '2021-07-02');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 97, '2022-09-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 98, '2025-12-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 99, '2024-04-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 100, '2024-01-28');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 101, '2020-02-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 102, '2019-01-09');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 103, '2022-12-25');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 104, '2025-02-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 105, '2023-03-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 106, '2019-07-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 107, '2024-07-09');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 108, '2023-08-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 109, '2021-11-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 110, '2021-03-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 111, '2020-05-09');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 112, '2021-06-02');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 113, '2021-02-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 114, '2020-03-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 115, '2019-07-10');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 116, '2020-05-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 117, '2024-02-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 118, '2024-08-27');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 119, '2024-08-05');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 120, '2024-12-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 121, '2025-03-16');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 122, '2025-07-24');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 123, '2024-09-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 124, '2025-06-27');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 125, '2020-06-09');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 126, '2023-05-06');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 127, '2025-10-18');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 128, '2024-08-26');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 129, '2023-09-11');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 130, '2021-10-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (9, 131, '2023-06-18');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 132, '2022-04-19');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 133, '2020-06-30');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 134, '2023-08-18');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (20, 135, '2024-09-29');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 136, '2025-02-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 137, '2025-03-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 138, '2021-04-02');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 139, '2025-12-31');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 140, '2022-11-15');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 141, '2020-12-29');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 142, '2025-01-31');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 143, '2020-04-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 144, '2025-04-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (16, 145, '2025-07-15');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 146, '2023-09-06');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 147, '2022-03-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 148, '2019-02-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 149, '2020-03-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 150, '2023-04-10');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 151, '2019-08-06');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 152, '2021-03-29');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (9, 153, '2020-10-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 154, '2021-10-23');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 155, '2019-09-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 156, '2021-04-15');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 157, '2019-05-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 158, '2024-01-28');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (4, 159, '2025-11-28');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 160, '2021-07-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 161, '2023-05-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 162, '2024-09-23');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 163, '2019-07-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 164, '2023-05-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 165, '2022-07-04');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 166, '2019-08-09');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 167, '2021-10-26');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 168, '2025-12-16');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 169, '2021-07-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 170, '2025-08-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 171, '2025-10-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 172, '2021-03-03');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 173, '2024-01-13');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 174, '2019-11-02');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (6, 175, '2020-12-12');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 176, '2020-05-03');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (13, 177, '2019-06-16');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 178, '2022-02-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 179, '2021-12-18');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (5, 180, '2020-10-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 181, '2021-11-10');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (1, 182, '2022-09-15');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (15, 183, '2020-09-26');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 184, '2020-09-21');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 185, '2025-09-10');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (2, 186, '2025-11-26');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (10, 187, '2024-07-02');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (19, 188, '2025-03-03');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 189, '2019-10-26');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 190, '2024-11-22');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 191, '2021-01-23');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 192, '2019-10-07');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (17, 193, '2020-10-14');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (14, 194, '2025-02-02');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (18, 195, '2023-07-11');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (3, 196, '2022-12-02');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (8, 197, '2021-05-23');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (11, 198, '2022-09-18');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (12, 199, '2022-04-17');
INSERT INTO Recebe (ID_Abrigo, ID_Animal, Data_Entrada) VALUES (7, 200, '2025-12-07');

-- RELACIONAMENTO DE Adocao (AQUI TEM 120 REGISTRO TAL COMO  PEDE O DOCUMENTO DO ADEILSON  )
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (136, 37, '2020-05-19', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (122, 2, '2025-06-03', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (144, 101, '2025-01-09', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (193, 22, '2022-06-02', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (167, 89, '2021-05-17', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (3, 132, '2020-08-06', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (30, 48, '2021-06-23', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (172, 65, '2021-03-06', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (89, 47, '2025-05-12', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (115, 141, '2024-03-04', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (62, 19, '2022-04-05', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (165, 65, '2020-02-07', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (158, 149, '2024-06-18', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (160, 92, '2020-06-09', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (63, 26, '2022-03-13', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (11, 18, '2021-03-03', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (175, 125, '2024-01-20', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (83, 79, '2025-07-20', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (98, 145, '2025-05-10', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (194, 81, '2023-10-21', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (99, 2, '2022-07-06', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (66, 57, '2023-11-22', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (139, 93, '2020-07-04', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (73, 123, '2024-03-10', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (7, 92, '2022-06-05', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (133, 142, '2020-03-21', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (96, 21, '2022-02-23', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (132, 138, '2021-03-15', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (131, 20, '2019-11-05', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (191, 130, '2019-05-08', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (125, 149, '2023-07-18', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (12, 55, '2019-05-31', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (76, 67, '2025-02-04', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (196, 121, '2020-08-31', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (50, 101, '2021-07-03', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (183, 75, '2020-07-02', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (173, 129, '2024-09-21', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (22, 102, '2023-01-30', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (25, 3, '2021-09-05', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (43, 43, '2024-10-06', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (138, 115, '2020-10-14', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (137, 145, '2025-05-06', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (2, 124, '2023-01-09', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (17, 57, '2024-06-20', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (54, 17, '2021-12-18', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (55, 60, '2019-06-25', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (109, 133, '2023-01-19', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (27, 121, '2024-02-06', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (53, 11, '2022-08-20', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (187, 134, '2022-01-25', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (112, 149, '2025-02-07', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (19, 45, '2023-03-23', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (40, 94, '2025-08-04', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (176, 133, '2021-10-27', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (118, 58, '2024-10-16', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (85, 91, '2022-11-14', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (10, 124, '2025-10-10', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (23, 129, '2020-07-23', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (149, 43, '2021-07-31', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (14, 132, '2022-02-24', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (46, 39, '2021-02-04', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (65, 93, '2025-10-01', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (142, 59, '2023-08-26', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (59, 30, '2024-05-26', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (67, 123, '2021-05-13', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (105, 42, '2023-08-11', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (100, 63, '2019-06-26', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (116, 147, '2025-08-23', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (104, 35, '2024-09-30', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (111, 147, '2020-08-24', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (81, 43, '2021-11-23', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (5, 133, '2023-07-19', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (134, 145, '2019-03-18', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (87, 22, '2021-06-06', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (16, 121, '2024-05-26', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (69, 57, '2023-08-10', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (1, 37, '2025-07-14', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (189, 131, '2021-12-19', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (93, 88, '2024-02-01', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (80, 18, '2021-07-30', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (9, 99, '2020-06-25', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (97, 5, '2021-04-08', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (174, 130, '2023-09-16', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (75, 25, '2020-12-27', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (6, 10, '2024-12-16', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (90, 31, '2020-01-17', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (154, 34, '2025-10-07', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (198, 1, '2023-11-03', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (140, 108, '2023-02-26', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (178, 136, '2023-10-24', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (141, 124, '2023-04-11', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (38, 148, '2020-02-05', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (101, 35, '2021-11-08', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (88, 60, '2019-12-10', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (39, 140, '2023-08-01', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (78, 49, '2019-01-23', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (169, 148, '2024-11-10', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (37, 134, '2019-01-30', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (182, 53, '2022-07-17', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (57, 93, '2020-03-12', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (49, 110, '2025-07-25', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (51, 67, '2025-01-04', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (145, 145, '2023-02-06', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (4, 71, '2023-06-16', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (61, 106, '2025-03-11', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (21, 124, '2021-01-02', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (170, 144, '2025-03-22', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (29, 65, '2022-06-10', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (18, 89, '2023-06-19', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (180, 31, '2021-07-30', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (70, 42, '2020-02-15', 'Adotado com sucesso');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (114, 131, '2023-06-29', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (82, 141, '2025-11-20', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (151, 42, '2023-05-13', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (106, 24, '2020-08-18', 'Pendente documentação');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (123, 112, '2019-12-28', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (48, 68, '2021-06-27', 'Exige acompanhamento');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (188, 21, '2025-10-30', NULL);
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (71, 99, '2023-06-30', 'Entregue vacinado');
INSERT INTO Adocao (ID_Animal, ID_Adotante, Data_Adocao, Observacoes) VALUES (72, 134, '2022-03-19', 'Entregue vacinado');

-- POPULAR Gerencia (RELACIONAMENTO DE FUNCIONARIOS A ABRIGOS)
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (1, 12);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (2, 29);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (2, 1);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (3, 34);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (4, 13);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (5, 39);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (6, 40);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (7, 3);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (8, 16);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (9, 11);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (10, 18);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (11, 23);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (11, 26);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (12, 38);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (12, 13);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (13, 5);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (14, 36);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (15, 36);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (16, 23);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (17, 15);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (18, 30);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (19, 37);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (19, 1);
INSERT INTO Gerencia (ID_Abrigo, ID_Funcionario) VALUES (20, 12);


CREATE INDEX idx_animal_especie ON Animal(Especie);
CREATE INDEX idx_adotante_cidade ON Adotante(Cidade);
CREATE INDEX idx_recebe_data ON Recebe(Data_Entrada);

-- AQUI VOCE PODE FAZER AS CONSULTAS 

-- Quantos animais por espécie 
SELECT Especie, COUNT(*) AS total FROM Animal GROUP BY Especie HAVING COUNT(*) >= 1;

-- Média de peso por espécie 
SELECT Especie, ROUND(AVG(Peso)::numeric,2) AS peso_medio FROM Animal GROUP BY Especie;

--Adotantes que adotaram mais de 1 animal 
SELECT a.ID_Adotante, a.Nome, COUNT(ad.ID_Animal) AS total_adocoes
FROM Adotante a JOIN Adocao ad ON a.ID_Adotante = ad.ID_Adotante
GROUP BY a.ID_Adotante, a.Nome HAVING COUNT(ad.ID_Animal) > 1;

-- Animais que têm vacinas 'Raiva' e 'V10' 
SELECT an.ID_Animal, an.Nome FROM Animal an
WHERE EXISTS (SELECT 1 FROM Animal_Vacina av WHERE av.ID_Animal = an.ID_Animal AND av.Vacina = 'Raiva')
  AND EXISTS (SELECT 1 FROM Animal_Vacina av WHERE av.ID_Animal = an.ID_Animal AND av.Vacina = 'V10');

-- Adotantes que moram em uma das cidades específicas 
SELECT * FROM Adotante WHERE Cidade IN ('Crateús','Fortaleza');

-- Animais no abrigo 1 que não foram adotados 
SELECT r.ID_Abrigo, a.ID_Animal, a.Nome FROM Recebe r
JOIN Animal a ON a.ID_Animal = r.ID_Animal
LEFT JOIN Adocao ado ON ado.ID_Animal = a.ID_Animal
WHERE ado.ID_Animal IS NULL AND r.ID_Abrigo = 1;

-- Funcionários que gerenciam mais de um abrigo 
SELECT f.ID_Funcionario, f.Nome, COUNT(g.ID_Abrigo) AS num_abrigos
FROM Funcionario f JOIN Gerencia g ON f.ID_Funcionario = g.ID_Funcionario
GROUP BY f.ID_Funcionario, f.Nome HAVING COUNT(g.ID_Abrigo) > 1;

-- Animais cujo peso é maior que a média de sua espécie 
SELECT * FROM Animal an WHERE Peso > (SELECT AVG(Peso) FROM Animal WHERE Especie = an.Especie);

-- Adotantes que adotaram animais com a vacina 'Raiva' 
SELECT DISTINCT adt.ID_Adotante, adt.Nome FROM Adotante adt
JOIN Adocao ado ON ado.ID_Adotante = adt.ID_Adotante
JOIN Animal an ON an.ID_Animal = ado.ID_Animal
WHERE EXISTS (SELECT 1 FROM Animal_Vacina av WHERE av.ID_Animal = an.ID_Animal AND av.Vacina = 'Raiva');

-- Animais por abrigo 
SELECT ab.Nome AS Abrigo, COUNT(r.ID_Animal) AS total_animais
FROM Abrigo ab JOIN Recebe r ON ab.ID_Abrigo = r.ID_Abrigo
GROUP BY ab.Nome ORDER BY total_animais DESC;

