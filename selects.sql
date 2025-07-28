USE gerenciamento_veterinaria;

SELECT * FROM medico;

SELECT * FROM paciente;

SELECT * FROM consultas;

SELECT 
    consultas.id_consulta,
    consultas.tipo,
    consultas.motivo,
    consultas.valor,
    consultas.data_hora,
    paciente.nome_tutor,
    medico.nome AS nome_medico
FROM consultas
JOIN paciente ON consultas.id_paciente = paciente.id_paciente
JOIN medico ON consultas.id_medico = medico.CRM;

SELECT * FROM consultas
WHERE DATE(data_hora) = '2025-07-01';
