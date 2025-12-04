

# 🏪 Banco de Dados – Loja Tech

## 📘 Sobre o Projeto
Este trabalho foi desenvolvido para a disciplina **Banco de Dados Relacional**, no curso de **Engenharia de Software – Turma B**, do professor **Fabrício Dias**.  
O objetivo foi montar um banco de dados simples para o sistema de vendas da **Loja Tech**, contendo clientes, produtos, pedidos e itens dos pedidos.

---

## 🗂️ Tabelas Criadas
O projeto contém as seguintes tabelas:

### 👤 Clientes
Armazena nome, email, telefone e cidade.

### 📦 Produtos
Contém nome do produto, preço e estoque disponível.

### 🧾 Pedidos
Guarda os pedidos feitos pelos clientes.

### 🛒 Itens_Pedido
Registra os produtos que fazem parte de cada pedido.

Cada tabela possui **chave primária** e, quando necessário, **chave estrangeira** para fazer os relacionamentos.

---

## 📑 O que o Projeto Inclui
- Criação do banco de dados **Tech**
- Criação e relacionamento das tabelas
- Inserção de dados fictícios (clientes, produtos, pedidos e itens)
- Consultas SQL para responder às perguntas do trabalho

---

## 🚀 Como Executar
1. Abra o **MySQL Workbench**  
2. Crie uma nova aba de query  
3. Copie o arquivo SQL completo  
4. Cole no editor  
5. Execute tudo  
6. As tabelas serão criadas e preenchidas automaticamente  
7. Depois, execute as consultas SELECT incluídas no final do script  

---

## 🔎 Consultas Presentes no Projeto
O script contém consultas para:

- 📋 Exibir todos os clientes  
- 💲 Listar produtos com preço acima de R$150  
- 🔗 Mostrar pedidos com o nome do cliente  
- 🛍️ Listar itens do pedido 1  
- 🧮 Calcular o valor total do pedido 1  
- 📦 Listar produtos com estoque acima de 30  
- 🌆 Mostrar pedidos de clientes de Maricá  
- 🙋‍♂️ Listar produtos comprados pelo cliente de ID 1  
- #️⃣ Contar quantos pedidos existem no total  
- ➕ Somar todo o estoque disponível  

---

## 🧠 Formas Normais (Resumo Simples)
### **1ª Forma Normal (1FN)**
Cada coluna guarda um valor simples e organizado.

### **2ª Forma Normal (2FN)**
Os dados dependem totalmente da chave primária da tabela.

### **3ª Forma Normal (3FN)**
Os campos não dependem uns dos outros, só da chave.

Esse conjunto evita redundâncias e mantém os dados mais limpos e fáceis de consultar.

---

## ✅ Conclusão
Este projeto ajudou a praticar a criação e organização de um banco de dados relacional completo.  
Inclui modelagem, tabelas, chaves primárias/estrangeiras, inserção de dados e consultas SQL fundamentais.

---
