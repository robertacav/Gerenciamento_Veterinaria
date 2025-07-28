-- Inserir dados na tabela medico
INSERT INTO medico (nome, cpf, especialidade, telefone) VALUES
('Dr. João Silva', '12345678901', 'Veterinário', '11987654321'),
('Dra. Maria Souza', '98765432109', 'Veterinário', '11976543210'),
('Dr. Pedro Costa', '19283746509', 'Veterinário', '11965432109'),
('Dra. Clara Lima', '56473829108', 'Veterinário', '11954321098'),
('Dr. Roberto Almeida', '90817263540', 'Veterinário', '11943210987');

-- Inserir dados na tabela paciente
INSERT INTO paciente (nome_tutor, cpf_tutor, telefone_tutor, raca, especie) VALUES
('Carlos Oliveira', '32165498765', '11988776655', 'Poodle', 'Cachorro'),
('Luciana Martins', '65748392012', '11987654322', 'Siamês', 'Gato'),
('Ana Pereira', '98765432109', '11976543211', 'Labrador', 'Cachorro'),
('Rita Santos', '90817263540', '11987654323', 'Persa', 'Gato'),
('Paulo Silva', '54321678910', '11999887766', 'Bulldog', 'Cachorro'),
('Fernanda Costa', '65498732100', '11986543210', 'Husky', 'Cachorro'),
('Marcelo Rocha', '32165498765', '11987766543', 'Angorá', 'Gato'),
('Juliana Almeida', '90817263541', '11999887765', 'Beagle', 'Cachorro'),
('Felipe Lima', '90817263542', '11998765432', 'Rottweiler', 'Cachorro'),
('Tatiane Souza', '75395185296', '11987654324', 'Maine Coon', 'Gato');

-- Inserir dados na tabela consultas
INSERT INTO consultas (tipo, motivo, valor, data_hora, id_paciente, id_medico) VALUES
('Consulta de rotina', 'Exame de rotina', 150.00, '2025-07-01 10:00:00', 1, 1),
('Consulta de emergência', 'Acidente', 300.00, '2025-07-01 11:00:00', 2, 2),
('Consulta de rotina', 'Vacinação', 100.00, '2025-07-02 09:30:00', 3, 3),
('Consulta de emergência', 'Problema respiratório', 200.00, '2025-07-02 14:00:00', 4, 4),
('Consulta de rotina', 'Check-up', 120.00, '2025-07-03 08:30:00', 5, 5),
('Consulta de emergência', 'Dor abdominal', 250.00, '2025-07-03 13:45:00', 6, 1),
('Consulta de rotina', 'Vacinação', 110.00, '2025-07-04 15:00:00', 7, 2),
('Consulta de emergência', 'Fratura', 350.00, '2025-07-04 16:30:00', 8, 3),
('Consulta de rotina', 'Check-up', 130.00, '2025-07-05 09:00:00', 9, 4),
('Consulta de emergência', 'Problema cardíaco', 400.00, '2025-07-05 11:30:00', 10, 5);

-- Inserir dados na tabela agendamento
INSERT INTO agendamento (data_agendamento, atualizacao, medico_CRM) VALUES
('2025-07-01', 'Agendado', 1),
('2025-07-02', 'Agendado', 2),
('2025-07-03', 'Agendado', 3),
('2025-07-04', 'Agendado', 4),
('2025-07-05', 'Agendado', 5);
