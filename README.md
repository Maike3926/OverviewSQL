## 1. Introdução ao SQL e DBMS

* **SQL (Structured Query Language):** É a linguagem padrão para interagir com dados. Ela permite desde consultas simples até cálculos complexos, como o levantamento de "Gasto Total" em grandes volumes de informação.
* **DBMS (SGBD):** Funciona como a interface entre o usuário e o banco de dados, sendo responsável por gerenciar o acesso, a segurança e a hospedagem dos dados.
* **Disponibilidade:** Em ambientes profissionais, esses sistemas operam 24/7 para garantir que as informações estejam sempre acessíveis.

---

## 2. Estrutura de um Banco de Dados Relacional

A organização dos dados segue uma hierarquia lógica para facilitar a manutenção e a busca:

1.  **Servidor:** O host principal que armazena os bancos de dados.
2.  **Banco de Dados:** Contêiner de alto nível (ex: "Vendas" ou "RH").
3.  **Esquema (Schema):** Agrupamento lógico de tabelas dentro do banco.
4.  **Tabela:** Onde os dados são fisicamente armazenados.



### Elementos da Tabela
* **Colunas:** Categorias verticais com tipos de dados definidos.
* **Linhas:** Registros horizontais individuais (também chamados de tuplas).
* **Célula:** A unidade básica de dado na interseção de uma linha e uma coluna.
* **Chave Primária:** O identificador único e obrigatório de cada registro.

---

## 3. Tipos de Dados Comuns

* **Numéricos:** `INT` (números inteiros) e `DECIMAL` (números com frações/precisão).
* **Texto:** `CHAR` (comprimento fixo) e `VARCHAR` (comprimento variável).
* **Data e Hora:** `DATE` (formato YYYY-MM-DD) e `TIME` (formato HH:MM:SS).

---

## 4. Categorias de Comandos SQL

* **DDL (Definição):** Comandos que criam ou modificam a estrutura (CREATE, ALTER, DROP).
* **DML (Manipulação):** Comandos para gerenciar os dados dentro das tabelas (INSERT, UPDATE, DELETE).
* **DQL (Consulta):** Comandos para recuperação de dados (SELECT).
* **DCL (Controle):** Gerenciamento de permissões (GRANT, REVOKE).
* **TCL (Transação):** Controle de transações (COMMIT, ROLLBACK).

---

## 5. Comandos de Estrutura e Manipulação

### Definição (DDL)
* **CREATE:** Inicia novos bancos de dados ou tabelas.
* **ALTER:** Modifica estruturas existentes (ex: adicionar uma nova coluna).
* **DROP:** Exclui permanentemente um objeto e todos os seus registros.

### Manipulação (DML)
* **INSERT:** Adiciona novas linhas de dados (manualmente ou via consulta).
* **UPDATE:** Edita informações já existentes.
* **DELETE:** Remove registros específicos.

 **Regra de Segurança:** Nunca utilize `UPDATE` ou `DELETE` sem a cláusula `WHERE`. Sem ela, o comando afetará todas as linhas da tabela simultaneamente.

---

## 6. Consultas e Lógica de Processamento (DQL)

A instrução básica de busca é composta por `SELECT` (colunas) e `FROM` (tabela). 

### Organização de Resultados
* **WHERE:** Filtra registros com base em condições específicas.
* **ORDER BY:** Ordena os resultados (ascendente ou descendente).
* **DISTINCT:** Remove valores duplicados do resultado.
* **LIMIT / TOP:** Define a quantidade máxima de linhas retornadas.

### Ordem Lógica de Execução
É importante notar que o banco de dados não processa o código na ordem em que o escrevemos. A sequência real de execução é:
1.  **FROM** (De onde vêm os dados?)
2.  **WHERE** (O que deve ser filtrado?)
3.  **SELECT** (O que deve ser exibido?)
4.  **ORDER BY** (Como deve ser organizado?)
