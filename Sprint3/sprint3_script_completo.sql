CREATE TABLE SPRINT3_SCORES_RISCO (
    id_score NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    -- Dados de entrada (mesmas variáveis da tabela original)
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
    qtidade_falhas NUMBER,

    -- Resultado do modelo
    score_risco NUMBER,
    classificacao_risco VARCHAR2(10),

    -- Rastreabilidade
    data_processamento TIMESTAMP DEFAULT SYSTIMESTAMP
);
SELECT * FROM SPRINT3_SCORES_RISCO;

CREATE TABLE SPRINT3_LOG_ACESSOS (
    id_log NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    usuario VARCHAR2(50),
    perfil VARCHAR2(20),
    acao VARCHAR2(100),
    data_hora TIMESTAMP DEFAULT SYSTIMESTAMP
    );
    
SELECT * FROM SPRINT3_LOG_ACESSOS ORDER BY data_hora DESC;

SELECT object_name, created
FROM USER_OBJECTS
WHERE object_name IN ('SPRINT3_SCORES_RISCO', 'SPRINT3_LOG_ACESSOS')
AND object_type = 'TABLE';

DESCRIBE SPRINT3_SCORES_RISCO;
DESCRIBE SPRINT3_LOG_ACESSOS;

SELECT * FROM SPRINT3_SCORES_RISCO
ORDER BY data_processamento DESC;

SELECT * FROM SPRINT3_LOG_ACESSOS
ORDER BY data_hora DESC;

DESCRIBE SPRINT2_RISCOSAGRICOLAS;

INSERT INTO SPRINT2_RISCOSAGRICOLAS (
    DATA_COLETA, HORA_UTC, TEMP_INS, TEMP_MAX, TEMP_MIN,
    UMI_INS, UMI_MAX, UMI_MIN, PRESSAO_INS, VEL_VENTO,
    CHUVA_MM, HORAS_USO, VIBRACAO_MOTOR, PROXIMIDADE_AGUA,
    DECLIVIDADE, QTIDADE_FALHAS
) VALUES (
    TO_DATE('13/08/2026', 'DD/MM/YYYY'), '13:00', 25.0, 26.0, 24.0,
    150, 95, 85, 923.0, 2.0,
    50, 300, 3.5, 200,
    10, 2
);

SELECT * FROM SPRINT3_SCORES_RISCO
WHERE umi_ins = 150;

SELECT classificacao_risco, COUNT(*) AS total
FROM SPRINT3_SCORES_RISCO
GROUP BY classificacao_risco;