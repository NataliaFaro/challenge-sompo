-- Criação da tabela

CREATE TABLE SPRINT2_RISCOSAGRICOLAS (
    data_coleta DATE,
    hora_utc VARCHAR2(26),

    temp_ins NUMBER,
    temp_max NUMBER,
    temp_min NUMBER,

    umi_ins NUMBER,
    umi_max NUMBER,
    umi_min NUMBER,

    pressao_ins NUMBER,
    vel_vento NUMBER,
    chuva_mm NUMBER,

    horas_uso NUMBER,
    vibracao_motor NUMBER,
    proximidade_agua NUMBER,
    declividade NUMBER,
    qtidade_falhas NUMBER
);

--------------------------------------------------

-- Consulta SQL: Alto desgaste operacional

SELECT *
FROM SPRINT2_RISCOSAGRICOLAS
WHERE HORAS_USO > 400;

--------------------------------------------------

-- Consulta SQL: Áreas próximas de água

SELECT *
FROM SPRINT2_RISCOSAGRICOLAS
WHERE PROXIMIDADE_AGUA < 300;
