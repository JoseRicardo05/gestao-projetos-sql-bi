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
* **Modelagem SQL:** Criação de tabelas para Projetos, Equipe e Cargos com integridade referencial.
* **Ingestão de Dados:** Conexão ODBC/Direct entre MySQL e Power BI.
* **Tratamento de Dados:** Formatação de moedas (R$) e ajuste de tipos de dados.
* **Visualização Dinâmica:** * Gráfico de colunas para acompanhamento de orçamentos.
    * Gráfico de pizza para análise de distribuição de profissionais por cargo.
    * Design focado em UX com bordas arredondadas e limpeza de eixos.

## 🖼️ Visualização do Dashboard
<img width="1431" height="804" alt="Visualização Gestão e Projetos de Inovação" src="https://github.com/user-attachments/assets/200e76cb-4ff2-4176-bec1-a24805eb3d78" />


## 📁 Estrutura do Repositório
* `script_banco_dados.sql`: Contém todo o código de criação do banco e inserts.
* `Dashboard_Gestao_Projetos.pbix`: Arquivo do Power BI com os gráficos.
* `.gitignore`: Filtro para arquivos temporários.

---
**Desenvolvido por José Ricardo *Estudante de Análise e Desenvolvimento de Sistemas (5º Semestre)*
