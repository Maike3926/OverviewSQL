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

---

## 7. Tipos de Dados Comuns
* **Numéricos:** `INT` (inteiros), `DECIMAL` (frações).
* **Texto:** `CHAR` (fixo), `VARCHAR` (variável).
* **Data/Hora:** `DATE` (YYYY-MM-DD), `TIME` (HH:MM:SS).

---

## 8. Fundamentos de Estruturas de Dados
Uma estrutura de dados é projetada para organizar e armazenar dados de maneira eficiente. Cada uma possui pontos fortes e fracos, sendo que a escolha ideal muitas vezes "depende" do contexto do problema.

### Notação Big O e Complexidade
Utilizamos a notação Big O para medir o desempenho de algoritmos de forma justa, ignorando variações de hardware. Em vez de cronometrar segundos, contamos quantos passos o algoritmo executa.

Geralmente focamos no **pior caso** (*worst-case scenario*), pois ele define o limite superior de tempo que uma operação pode levar conforme a entrada cresce.

| Big O | Nome | Padrão de Crescimento |
| :--- | :--- | :--- |
| $O(1)$ | Constante | Mesmo tempo, independente da entrada. |
| $O(\log N)$ | Logarítmica | Cresce muito lentamente. |
| $O(N)$ | Linear | Cresce proporcionalmente à entrada. |
| $O(N \log N)$ | Linearitmica | Crescimento mais rápido que o linear. |
| $O(N^2)$ | Quadrática | O crescimento aumenta muito rapidamente. |



---

## 9. Listas Encadeadas (Linked Lists)
Diferente dos arrays que possuem tamanho fixo, uma lista encadeada armazena sequências usando "nós". Cada nó guarda o dado e a localização (referência) do próximo nó.

### Vantagens e Desvantagens
* **Vantagem:** Funciona bem em memórias fragmentadas e permite inserção/remoção simples sem reorganizar toda a lista.
* **Desvantagem:** Cada nó consome memória extra para o ponteiro. O acesso é custoso pois é necessário percorrer a lista até o elemento desejado.

### Tipos Principais
* **Simples:** Cada nó tem uma referência para o próximo; o último aponta para um valor inválido.
* **Dupla:** Cada nó aponta para o próximo e para o anterior. Permite remover um nó em $O(1)$ conhecendo apenas seu ponteiro.



---

## 10. Pilha (Stack)
É um tipo abstrato de dado que segue a lógica **LIFO** (*Last In, First Out*).

* **Operações principais ($O(1)$):**
    * **push:** Adiciona um item ao topo.
    * **pop:** Remove o item do topo.
    * **peek:** Observa o topo sem remover.
* **Suporte:** A lista encadeada é considerada a estrutura ideal para implementar pilhas.



---

## 11. Fila (Queue)
Segue a lógica **FIFO** (*First In, First Out*) — o primeiro que entra é o primeiro que sai.

* **Operações principais:**
    * **enqueue (add):** Adiciona ao final da fila.
    * **dequeue (remove):** Remove do início da fila.
    * **peek:** Obtém o item da frente sem removê-lo.

    ---

## 12. Operações SET (Conjuntos)
As operações SET combinam resultados de duas ou mais consultas (`SELECT`) em um único conjunto. As consultas devem ter o mesmo número de colunas e tipos de dados compatíveis.

* **UNION:** Combina os resultados e remove as duplicatas.
* **UNION ALL:** Combina os resultados e mantém as duplicatas (mais rápido que o `UNION`).
* **INTERSECT:** Retorna apenas as linhas comuns a ambas as consultas.
* **EXCEPT (ou MINUS):** Retorna as linhas da primeira consulta que não estão na segunda.

---

## 13. Funções em Linha (Scalar Functions)
Operam em um único valor de entrada e retornam um único valor de saída, aplicadas linha por linha.

### Principais Categorias:
* **String (Texto):**
  * `UPPER(coluna)`: Converte para maiúsculo.
  * `LOWER(coluna)`: Converte para minúsculo.
  * `LENGTH(coluna)`: Retorna o número de caracteres.
  * `SUBSTRING(coluna, inicio, tamanho)`: Extrai parte do texto.
* **Matemáticas:**
  * `ROUND(numero, casas_decimais)`: Arredonda um valor.
  * `ABS(numero)`: Retorna o valor absoluto.
* **Data:**
  * `CURRENT_DATE` ou `NOW()`: Retorna a data/hora atuais.
  * `EXTRACT(MONTH FROM data)`: Extrai uma parte da data.

---

## 14. Funções de Agregação
Operam em um conjunto de valores (várias linhas) e retornam um único valor resumido.

* **COUNT():** Conta o número de linhas ou valores não nulos. `COUNT(*)` conta todas as linhas.
* **SUM():** Calcula a soma total.
* **AVG():** Calcula a média.
* **MAX():** Retorna o maior valor.
* **MIN():** Retorna o menor valor.

> **Nota:** As funções de agregação (exceto `COUNT(*)`) ignoram valores `NULL`.

---

## 15. Agrupamentos: Cláusulas GROUP BY e HAVING
O `GROUP BY` é utilizado com funções de agregação para agrupar linhas com os mesmos valores.

* **Uso obrigatório:** Qualquer coluna no `SELECT` que não utilize uma função de agregação deve ser declarada obrigatoriamente no `GROUP BY`.

### Filtrando Grupos com HAVING
O `WHERE` filtra linhas antes do agrupamento. O **`HAVING`** filtra os dados depois do agrupamento.

**Ordem de Execução:**
1. `FROM`
2. `WHERE` (Filtra linhas)
3. `GROUP BY` (Agrupa)
4. `HAVING` (Filtra grupos)
5. `SELECT` (Seleciona colunas)
6. `ORDER BY` (Ordena resultado)
