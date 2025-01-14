-- Criação da tabela de Clientes
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Criação da tabela de Veículos
CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10) NOT NULL,
    modelo VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Criação da tabela de Mecânicos
CREATE TABLE Mecanico (
    id_mecanico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    codigo VARCHAR(10),
    endereco VARCHAR(200),
    especialidade VARCHAR(50)
);

-- Criação da tabela de Ordens de Serviço (OS)
CREATE TABLE Ordem_Servico (
    id_os INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    data_emissao DATE,
    valor_total DECIMAL(10, 2),
    status VARCHAR(50),
    data_conclusao DATE,
    id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);

-- Criação da tabela de Serviços
CREATE TABLE Servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    valor DECIMAL(10, 2),
    tempo_estimado INT, -- em minutos
    id_os INT,
    id_mecanico INT,
    FOREIGN KEY (id_os) REFERENCES Ordem_Servico(id_os),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanico(id_mecanico)
);

-- Criação da tabela de Peças
CREATE TABLE Peca (
    id_peca INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    valor_unitario DECIMAL(10, 2)
);

-- Criação da tabela de Ordem de Serviço e Peça (relacionamento N:M)
CREATE TABLE OS_Peca (
    id_os INT,
    id_peca INT,
    quantidade INT,
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES Ordem_Servico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);

-- Criação da Tabela de Mão-de-Obra
CREATE TABLE Tabela_Mao_de_Obra (
    id_tabela INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
    valor_hora DECIMAL(10, 2)
);

-- Inserindo dados de exemplo na tabela Tabela_Mao_de_Obra
INSERT INTO Tabela_Mao_de_Obra (descricao, valor_hora)
VALUES ('Mecânico de veículos leves', 50.00),
       ('Mecânico de veículos pesados', 80.00);

