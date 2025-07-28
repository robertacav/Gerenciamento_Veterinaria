CREATE DATABASE gerenciamento_veterinaria;
USE gerenciamento_veterinaria;

-- Criar a tabela de médicos
CREATE TABLE medico (
    CRM INT PRIMARY KEY AUTO_INCREMENT,  
    nome VARCHAR(45),
    cpf VARCHAR(45),
    especialidade VARCHAR(45),
    telefone VARCHAR(45)
);

-- Criar a tabela de consultas
CREATE TABLE consultas (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,  
    tipo VARCHAR(45),
    motivo VARCHAR(45),
    valor DECIMAL(10, 2),
    data_hora DATETIME,
    id_paciente INT,  
    id_medico INT,  
    CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
    CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medico(CRM)
);

-- Criar a tabela de pacientes
CREATE TABLE paciente (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT, 
    nome_tutor VARCHAR(45),
    cpf_tutor VARCHAR(45),
    telefone_tutor VARCHAR(45),
    raca VARCHAR(45),
    especie VARCHAR(45)
);

-- Criar a tabela de agendamentos
CREATE TABLE agendamento (
    id_agendamento INT PRIMARY KEY AUTO_INCREMENT,  
    data_agendamento DATE,
    atualizacao VARCHAR(45),
    medico_CRM INT,  
    CONSTRAINT fk_medico_agendamento FOREIGN KEY (medico_CRM) REFERENCES medico(CRM)
);
