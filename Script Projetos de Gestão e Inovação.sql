create database gestão_projetos_inovação
use gestão_projetos_inovação

CREATE TABLE Membro_Equipe (
    ID_Membro INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    Data_Ingresso DATE NOT NULL,
    Status_Membro ENUM('Ativo', 'Afastado', 'Inativo') NOT NULL
);

create table projeto (
id_projeto int auto_increment primary key,
nome_projeto varchar (100) not null,
descriçao text, 
data_inicio date,
data_termino date,
status_projeto enum('Em andamento', 'Concluido', 'Cancelado') not null,
orçamento decimal(15, 2),
id_gerente int,
foreign key (id_gerente) references membro_equipe(id_membro)
);

Create table equipe (
id_equipe int auto_increment primary key,
nome_equipe varchar (100) not null,
id_projeto int,
data_criaçao date not null, 
status_equipe enum('ativa', 'inativa') not null,
foreign key (id_projeto) references projeto(id_projeto)
);

create table tarefa (
id_tarefa int auto_increment primary key,
nome_tarefa varchar (100) not null,
descriçao text, 
id_projeto int,
id_responsavel int,
data_inicio date,
data_termino date,
status_tarefa enum('pendente', 'em andamento', 'concluida') not null,
prioridade enum('baixa', 'média', 'alta') not null,
foreign key (id_projeto) references projeto (id_projeto),
foreign key (id_responsavel) references membro_equipe(id_membro)
);

Create table recurso (
id_recurso int auto_increment primary key,
tipo_recurso enum('Humano', 'Material', 'Tecnológico') not null,
descriçao text,
quantidade int,
id_projeto int,
data_alocaçao date,
data_devoluçao date,
foreign key (id_projeto) references projeto(id_projeto)
);

create table relatorio_progresso (
id_relatorio int auto_increment primary key,
id_projeto int,
data_relatorio date not null,
status_progresso enum ('em andamento', 'concluido', 'atrasado') not null,
resumo text,
problemas_enfrentados text,
planos_açoes_futuros text,
foreign key (id_projeto) references projeto(id_projeto)
);

show tables;

describe projeto;

INSERT INTO Membro_Equipe (Nome, Cargo, Email, Telefone, Data_Ingresso, Status_Membro) VALUES
('João Silva', 'Gerente de projetos', 'joaosilva@gmail.com', '11987654321', '2023-01-15', 'Ativo'),
('Ana Souza', 'Analista de sistemas', 'anasouza@gmail.com', '21987564322', '2023-02-10', 'Ativo'),
('Carlos Mendes', 'Desenvolvedor', 'carlosmendes@gmail.com', '61987654323', '2023-03-05', 'Afastado'),
('Beatriz Lima', 'UX Designer', 'beatrizlima@gmail.com', '61999525020', '2023-04-20', 'Ativo'),
('Mariana Oliveira', 'Analista de marketing', 'marianaoliveira@gmail.com', '11985456788', '2022-06-22', 'Ativo'),
('Pedro Rocha', 'Engenheiro de dados', 'pedrorocha@gmail.com', '11992531402', '2024-01-24', 'Ativo'),
('Gabriela Nascimento', 'Analista de dados', 'gabrielanascimento@gmail.com', '31987654324', '2024-03-28', 'Ativo'),
('Renata Azevedo', 'Consultora de Inovação', 'renata.azevedo@example.com', '41987654333', '2023-02-01', 'Ativo'),
('Lucas Almeida', 'Designer Gráfico', 'lucas.almeida@example.com', '81987654328', '2023-06-25', 'Afastado'),
('Eduardo Mello', 'Coordenador de TI', 'eduardo.mello@example.com', '91987654338', '2023-09-30', 'Ativo');

SELECT *
FROM MEMBRO_EQUIPE

INSERT INTO Projeto (Nome_Projeto, Descriçao, Data_Inicio, Data_Termino, Status_Projeto, Orçamento, Id_Gerente) VALUES
('Sistema de Gestão de Projetos', 'Desenvolvimento de um sistema de gestão para gerenciar projetos', '2024-01-01', '2024-06-30', 'Em andamento', 50000.00, 1),
('Novo Portal Web', 'Criação de um novo portal corporativo', '2024-02-01', '2024-05-31', 'Em andamento', 75000.00, 2),
('Aplicativo Mobile', 'Desenvolvimento de um aplicativo mobile para iOS e Android', '2023-08-15', '2023-12-15', 'Concluído', 30000.00, 1);

Insert Equipe (Nome_Equipe, ID_Projeto, Data_Criaçao, Status_Equipe) values
('Equipe Alpha', 1, '2024-01-10', 'Ativa'),
('Equipe Beta', 2, '2024-02-15', 'Ativa'),
('Equipe Gamma', 3, '2023-08-20', 'Inativa');

insert Tarefa (Nome_Tarefa, Descriçao, ID_Projeto, ID_Responsavel, Data_Inicio, Data_Termino, Status_Tarefa, Prioridade) values
('Definir Requisitos', 'Definição dos requisitos do sistema', 1, 2, '2024-01-05', '2024-01-20', 'Concluída', 'Alta'),
('Desenvolver Backend', 'Implementar o backend do sistema', 1, 3, '2024-02-01', '2024-04-01', 'Em andamento', 'Alta'),
('Criar Wireframes', 'Elaborar wireframes para o projeto', 2, 4, '2024-02-20', '2024-03-10', 'Em andamento', 'Média'),
('Testes Finais', 'Realizar testes finais do aplicativo', 3, 1, '2023-11-01', '2023-12-01', 'Concluída', 'Alta');

Insert Recurso (Tipo_Recurso, Descriçao, Quantidade, ID_Projeto, Data_Alocaçao, Data_Devoluçao) values
('Humano', 'Desenvolvedor Full Stack', 2, 1, '2024-01-15', '2024-06-15'),
('Material', 'Servidores Dedicados', 5, 2, '2024-03-01', '2024-05-30'),
('Tecnológico', 'Licenças de Software', 10, 3, '2023-09-01', '2023-12-15');

Insert Relatorio_Progresso (ID_Projeto, Data_Relatorio, Status_Progresso, Resumo, Problemas_Enfrentados, Planos_Açoes_Futuros) values
(1, '2024-02-10', 'Em andamento', 'Projeto está progredindo conforme o cronograma', 'Alguns atrasos no frontend', 'Ajustar prazos e alocar mais desenvolvedores'),
(2, '2024-03-15', 'Em andamento', 'Portal web em fase de design', 'Problemas com integração de APIs', 'Consultar equipe de TI para suporte técnico'),
(3, '2023-11-20', 'Concluído', 'Aplicativo lançado com sucesso', 'Nenhum', 'Planejar atualizações futuras');

select *
from membro_equipe

select *
from equipe

select *
from projeto

select * 
from recurso

select *
from relatorio_progresso

select *
from tarefa

Select *
from membro_equipe

Select nome, cargo, email
from membro_equipe
where cargo like '%dados%';

select nome_projeto, orçamento 
from projeto
where orçamento > 40000;

select p.nome_projeto, m.nome as gerente
from projeto p
join membro_equipe m on p.id_gerente = m.id_membro;

Select nome, cargo, status_membro
From membro_equipe
Where status_membro = 'ativo';

select *
from projeto;


USE gestão_projetos_inovação


CREATE OR REPLACE VIEW vw_dashboard_gerencial AS
SELECT 
    p.id_projeto,
    p.nome_projeto AS Projeto,
    p.status_projeto AS Situacao,
    COALESCE(p.orçamento, 0) AS Investimento, 
    DATEDIFF(p.data_termino, p.data_inicio) AS Prazo_Dias,
    m.Nome AS Responsavel_TI
FROM projeto p
INNER JOIN membro_equipe m ON p.id_gerente = m.ID_Membro; 


SELECT * FROM vw_dashboard_gerencial;
