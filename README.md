# 🐾 Projeto de Banco de Dados - Gerenciamento de Clínica Veterinária

## 📌 Tema do Projeto

**Sistema de Gerenciamento de Clínica Veterinária**  
O projeto tem como objetivo modelar um banco de dados relacional para auxiliar no gerenciamento de médicos veterinários, pacientes (animais), consultas e agendamentos em uma clínica veterinária.

---

## 💡 Descrição do Problema

Clínicas veterinárias necessitam de uma forma eficiente de registrar médicos, pacientes (animais e seus tutores), consultas realizadas e agendamentos futuros. Sem um sistema organizado, há risco de perda de informações, duplicidade de dados e dificuldades na análise de atendimentos realizados.

Este projeto visa resolver esse problema com a criação de um banco de dados estruturado, que permita registrar, consultar e relacionar informações relevantes do dia a dia da clínica.

---

## 🧱 Entidades e Relacionamentos

O banco de dados é composto pelas seguintes entidades:

### 📋 Tabelas Criadas

#### `medico`
Armazena os dados dos médicos veterinários:
- `CRM` (PK)
- `nome`
- `cpf`
- `especialidade`
- `telefone`

#### `paciente`
Armazena informações dos animais e seus tutores:
- `id_paciente` (PK)
- `nome_tutor`
- `cpf_tutor`
- `telefone_tutor`
- `raca`
- `especie`

#### `consultas`
Registra todas as consultas realizadas:
- `id_consulta` (PK)
- `tipo`
- `motivo`
- `valor`
- `data_hora`
- `id_paciente` (FK → paciente)
- `id_medico` (FK → medico)

#### `agendamento`
Gerencia os agendamentos de consultas:
- `id_agendamento` (PK)
- `data_agendamento`
- `atualizacao`
- `medico_CRM` (FK → medico)

### 🔄 Relacionamentos
- Um **médico** pode estar relacionado a várias **consultas** e **agendamentos**.
- Um **paciente** pode ter várias **consultas** associadas.
- A tabela **consultas** faz a junção entre **paciente** e **medico**.

---

## 🔍 Exemplos de Consultas Realizadas

### 1. Listar todos os médicos cadastrados
```sql
SELECT * FROM medico;
