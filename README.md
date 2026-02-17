# gestao-projetos-sql-bi
Projeto de BI end-to-end: Modelagem de banco de dados relacional em MySQL, ingestão de dados e criação de dashboard dinâmico no Power BI para gestão de projetos.


# 📊 Dashboard de Gestão de Projetos e Inovação
> Projeto de integração entre Banco de Dados Relacional (MySQL) e Business Intelligence (Power BI).

## 📝 Sobre o Projeto
Este projeto demonstra um fluxo completo de análise de dados (End-to-End). Comecei criando a estrutura do banco de dados no MySQL, inserindo dados fictícios de gestão de projetos e equipes, e conectando essa base ao Power BI para gerar visualizações que auxiliam na tomada de decisão.

## 🛠️ Tecnologias Utilizadas
* **Banco de Dados:** MySQL (Modelagem de tabelas, chaves primárias/estrangeiras e manipulação de dados).
* **BI & Visualização:** Power BI Desktop (Limpeza de dados, DAX básico e Design de Dashboards).
* **Linguagem:** SQL.

## ⚙️ O que foi desenvolvido
Engenharia de Dados (SQL): Criação da View vw_dashboard_gerencial para centralizar a lógica de negócio, realizando INNER JOIN entre as tabelas de projetos e membros da equipe.

Tratamento de Dados: Implementação da função COALESCE no SQL para tratar valores nulos no orçamento, garantindo que o dashboard exiba "0" em vez de campos vazios.

Inteligência de Tempo: Utilização da função DATEDIFF no banco de dados para calcular automaticamente o prazo de execução (Lead Time) de cada projeto em dias.

*KPIs automáticos e integração direta com banco de dados MySQL.*
![Dashboard de Performance](<img width="1277" height="714" alt="Dashboard de Gestão e Performance de Projetos" src="https://github.com/user-attachments/assets/464eda23-7964-4ee9-8eca-e40bcc018eec" />
)

#### 🎨 Versão 1.0: Prototipagem e UX
*Foco inicial em design e distribuição de equipe.*
![Dashboard de Inovação](<img width="1431" height="804" alt="Visualização Gestão e Projetos de Inovação" src="https://github.com/user-attachments/assets/98257f26-9de3-4d6f-85ef-fe518fe43375" />
)


## 📁 Estrutura do Repositório
script_banco_dados.sql: Script completo com a criação das tabelas, inserção de dados e a View gerencial.

Dashboard de Gestão e Performance de Projetos.pbix: Arquivo final do Power BI conectado ao MySQL via View.

Dashboard de Gestão de Projetos de Inovação.pbix: Arquivo original com foco em design e análise de cargos.
---
**Desenvolvido por José Ricardo *Estudante de Análise e Desenvolvimento de Sistemas (5º Semestre)*
