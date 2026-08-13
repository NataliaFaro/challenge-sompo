FIAP - Faculdade de Informática e Administração Paulista

# 🌱 Challenge Sompo - Previsão de Riscos em Equipamentos Agrícolas

## 👨‍🎓 Integrantes

Natalia de Lima Faro - RM 568610

## 📌 Status do Projeto

| Sprint | Status |
|---|---|
| 1 | ✅ Concluída |
| 2 | ✅ Concluída |
| 3 | 🚧 Em desenvolvimento |

## 👩‍🏫 Professores

---

## 📜 Descrição do Projeto

Este projeto tem como objetivo desenvolver uma solução baseada em dados e Inteligência Artificial capaz de identificar, prever e reduzir riscos operacionais e ambientais relacionados ao uso de equipamentos agrícolas.

No cenário atual, muitas decisões no campo ainda são tomadas de forma reativa, ou seja, apenas após a ocorrência de falhas ou acidentes. Isso pode gerar altos custos operacionais, danos aos equipamentos e riscos à segurança.

A proposta deste projeto é transformar esse modelo reativo em um modelo preventivo, utilizando dados como clima, tipo de solo, localização e histórico de uso para antecipar situações de risco e apoiar a tomada de decisão de operadores, gestores e seguradoras.

---
# 📌 Sprint 1 — Estruturação da Solução

## Apresentação

Acesse a apresentação completa do projeto:

👉 [Visualizar apresentação](Sprint1/Arquitetura_de_Sistema.pdf)

---

## ⚠️ Problema

Equipamentos agrícolas operam em ambientes altamente variáveis e sujeitos a riscos, como:

* Solo instável após chuvas
* Proximidade de áreas alagadas
* Condições climáticas adversas
* Falta de manutenção preventiva

Atualmente, há baixa previsibilidade desses riscos, o que resulta em:

* Aumento de custos com manutenção
* Perda de equipamentos
* Interrupção de operações
* Riscos de acidentes

---

## 💡 Solução Proposta

Desenvolver uma plataforma inteligente que:

* Integra dados ambientais e operacionais
* Analisa padrões de risco
* Gera alertas preventivos em tempo real
* Fornece recomendações para evitar incidentes

### Funcionalidades principais:

* 🚨 Alertas de risco (baixo, médio, alto)
* 📊 Score de risco (0 a 100)
* 📍 Recomendações operacionais (ex: evitar área)
* 📈 Dashboard com visão geral dos riscos

---

## Personas
### Operador

* Atua diretamente no campo
* Precisa evitar acidentes e falhas
* Utiliza alertas rápidos e objetivos

### Gestor Agrícola

* Responsável pela operação
* Busca reduzir custos e otimizar processos
* Precisa de relatórios e visão consolidada

### Seguradora (Sompo)

* Avalia e gerencia riscos
* Define políticas de seguro
* Utiliza dados históricos e previsões

---

## Estrutura de Dados

A solução utilizará dados simulados representando variáveis ambientais e operacionais.

> **Os dados utilizados neste projeto são simulados, construídos com base em padrões reais observados no setor agrícola e em variáveis que influenciam diretamente o risco operacional, como clima, solo, uso do equipamento e histórico de falhas.**


Acesse o dataset utilizado no projeto:

[Download do dataset](Sprint2/dataset_riscos_agricolas.xlsx)


### Variáveis consideradas:

* Clima (temperatura, umidade, chuva)
* Solo (tipo, inclinação)
* Localização (proximidade de água)
* Operação (campo ou transporte)
* Uso do equipamento
* Histórico de falhas

---

## Modelo de IA (Proposta Inicial)

Será utilizado um modelo de **classificação de risco**, com base nos dados coletados.

### Abordagem:

* Tipo: Classificação (baixo, médio, alto)
* Entrada: variáveis ambientais + operacionais
* Saída:

  * Categoria de risco
  * Score de risco

### Modelos sugeridos:

* Random Forest
* Regressão Logística

---

## Arquitetura da Solução

### Fluxo da Solução:

Sensores / APIs → Coleta de Dados → Banco de Dados → Modelo de IA → API → Dashboard

### Componentes:

* 📡 Sensores (IoT) para coleta de dados
* 🌐 APIs externas (clima)
* 🗄️ Banco de dados (SQL ou NoSQL)
* 🤖 Modelo de Machine Learning (Python)
* 📊 Dashboard (Power BI ou aplicação web)


## Interface

A solução contará com:
* Dashboard com:

  * Visualização de risco por equipamento
  * Indicadores em tempo real
  * Histórico de eventos

* Alertas:
  * Alto risco de atolamento
  * Evitar operação em determinada área

## Segurança

* Controle de acesso por usuário
* Proteção de dados sensíveis
* Garantia de integridade das informações

## 📅 Planejamento das Próximas Sprints

### Sprint 2
* Criação do dataset
* Análise exploratória dos dados

### Sprint 3
* Desenvolvimento do modelo preditivo

### Sprint 4
* Desenvolvimento do dashboard

## 🎥 Vídeo de Apresentação

Link do vídeo (YouTube): https://youtu.be/6ZY3w8G3FbI

---

# 🚀 Sprint 2 — Implementação Técnica e Inteligência Preditiva

## 📌 Objetivo da Sprint 2
A Sprint 2 tem como objetivo transformar a proposta conceitual desenvolvida na Sprint 1 em uma solução técnica integrada, conectando coleta de dados, armazenamento em banco SQL e modelos de Inteligência Artificial.

Nesta etapa, o foco principal é implementar a inteligência de dados da solução, permitindo a análise preditiva de riscos operacionais em equipamentos agrícolas por meio da integração entre dados climáticos reais, variáveis operacionais simuladas e modelos supervisionados de Machine Learning.

Além disso, a Sprint 2 busca demonstrar o fluxo completo da solução, desde a ingestão dos dados até a geração de scores de risco, alertas preventivos e visualizações em dashboards.

## 🎯 Personas e Visões Atendidas pela Solução

A solução proposta foi desenvolvida para atender diferentes perspectivas envolvidas na operação agrícola e na gestão de riscos da seguradora.

### Seguradora Sompo e sua visão

A seguradora atua na análise e mitigação de riscos relacionados às operações agrícolas, buscando reduzir sinistros e melhorar a previsibilidade operacional dos segurados.

Seu principal desafio é antecipar situações de risco antes da ocorrência de danos ou perdas operacionais.

A solução utiliza dados climáticos, operacionais e históricos para geração de análises preditivas e scores de risco, permitindo uma atuação preventiva baseada em Inteligência Artificial.

Com isso, torna-se possível:

- Reduzir custos relacionados a indenizações;
- Melhorar a análise de risco dos segurados;
- Aumentar a previsibilidade operacional;
- Apoiar auditorias e rastreabilidade dos eventos.

### Gestor Agrícola e sua visão

O gestor agrícola é responsável pelo acompanhamento operacional da frota e pela tomada de decisão estratégica relacionada à produtividade e manutenção dos equipamentos.

Seu principal desafio é reduzir custos operacionais e evitar interrupções causadas por falhas inesperadas ou operação em áreas críticas.

A solução oferece suporte à tomada de decisão operacional por meio de dashboards consolidados, visualização de riscos por equipamento e região, além de indicadores preventivos que auxiliam no planejamento das operações e da manutenção.

Com isso, os principais benefícios incluem:

- Redução de custos operacionais;
- Planejamento preventivo de manutenção;
- Monitoramento de áreas de risco;
- Visualização consolidada das operações;
- Maior previsibilidade operacional da frota.

### Usuário Final/Operador e sua visão

O operador atua diretamente no campo durante as operações agrícolas e enfrenta diariamente condições variáveis de clima e solo, muitas vezes sem informações suficientes para avaliar os riscos operacionais da área.

Seu principal desafio é evitar situações como atolamentos, falhas mecânicas e acidentes durante a operação dos equipamentos.

A solução auxilia o operador por meio de alertas preventivos e classificações de risco em tempo real, permitindo decisões mais seguras sobre continuidade da operação, mudança de rota ou interrupção temporária da atividade.

Com isso, a solução contribui para:

- Redução de acidentes operacionais;
- Prevenção de atolamentos e falhas mecânicas;
- Melhor tomada de decisão em campo;
- Maior segurança durante as operações agrícolas;
- Apoio preventivo em situações de risco elevado.

---
## 🔄 Evolução em Relação à Sprint 1
Na Sprint 1, o projeto foi estruturado de forma conceitual, incluindo definição do problema, arquitetura inicial, personas, variáveis de risco e proposta de solução baseada em Inteligência Artificial.

Já na Sprint 2, o projeto evolui para uma abordagem prática e funcional, incorporando:

- Integração de dados climáticos reais extraídos do INMET;
- Estruturação de datasets operacionais para análise preditiva;
- Implementação de banco de dados SQL para persistência das informações;
- Desenvolvimento inicial do modelo de Machine Learning;
- Geração de scores de risco e classificações preventivas;
- Construção de dashboards e evidências visuais da solução.

Com isso, o projeto deixa de ser apenas conceitual e passa a demonstrar tecnicamente a viabilidade da arquitetura proposta.

## 📊 Dataset Integrado: INMET + Dados Simulados
O dataset utilizado na Sprint 2 combina dados meteorológicos reais extraídos do Instituto Nacional de Meteorologia (INMET) com variáveis operacionais simuladas relacionadas ao uso de equipamentos agrícolas. 

Os dados climáticos reais foram coletados da estação meteorológica de Avaré/SP, no período de 01/03/2026 a 31/03/2026, incluindo variáveis como:

- Temperatura;
- Umidade do ar;
- Precipitação (chuva);
- Pressão atmosférica;
- Velocidade do vento.

Link: https://tempo.inmet.gov.br/TabelaEstacoes/A001

Esses dados foram integrados a informações simuladas de contexto operacional, como:

- Horas de uso do equipamento;
- Vibração do motor;
- Proximidade de corpos d’água;
- Declividade do terreno;
- Quantidade de falhas anteriores.

A combinação entre dados reais e simulados permite representar cenários agrícolas coerentes com situações de risco operacional, possibilitando análises estatísticas e treinamento de modelos preditivos de classificação de risco.

## 📖 Dicionário de Dados
| Variável | Descrição | Tipo |
|---|---|---|
| Data | Data da coleta meteorológica | Data |
| Hora (UTC) | Horário da medição em UTC | Texto |
| Temp. Ins. (C) | Temperatura instantânea registrada | Numérico |
| Temp. Max. (C) | Temperatura máxima registrada | Numérico |
| Temp. Min. (C) | Temperatura mínima registrada | Numérico |
| Umi. Ins. (%) | Umidade relativa instantânea do ar | Numérico |
| Umi. Max. (%) | Umidade relativa máxima registrada | Numérico |
| Umi. Min. (%) | Umidade relativa mínima registrada | Numérico |
| Pressao Ins. (hPa) | Pressão atmosférica instantânea | Numérico |
| Vel. Vento (m/s) | Velocidade do vento registrada | Numérico |
| Chuva (mm) | Volume de precipitação registrado | Numérico |
| Horas Uso | Quantidade acumulada de horas de uso do equipamento | Numérico |
| Vibração Motor | Índice simulado de vibração do motor | Numérico |
| Proximidade Água (m) | Distância simulada até corpos d’água | Numérico |
| Declividade (°) | Inclinação simulada do terreno | Numérico |
| Qtidade Falhas | Quantidade simulada de falhas anteriores do equipamento | Numérico |
| classificacao_risco | Classificação preditiva do nível de risco operacional | Texto |

### 📌 Origem dos Dados

O dataset utilizado combina:

- Dados meteorológicos reais extraídos do INMET (Instituto Nacional de Meteorologia);
- Variáveis operacionais simuladas para representar condições de uso de equipamentos agrícolas.

Essa abordagem híbrida permite criar cenários coerentes para treinamento e validação de modelos preditivos de risco operacional.

## 🗄️ Banco de Dados SQL

Para a Sprint 2, foi implementada a persistência dos dados utilizando Oracle SQL Developer, permitindo armazenar e consultar informações relacionadas aos riscos operacionais dos equipamentos agrícolas.

A tabela `SPRINT2_RISCOSAGRICOLAS` foi criada para integrar:

- Dados climáticos reais extraídos do INMET;
- Variáveis operacionais simuladas;
- Informações utilizadas posteriormente pelo modelo preditivo de risco.

### Estrutura da Tabela
A tabela foi modelada para armazenar variáveis ambientais e operacionais relevantes para a análise de risco agrícola, incluindo:

- Temperatura;
- Umidade;
- Chuva;
- Pressão atmosférica;
- Velocidade do vento;
- Horas de uso do equipamento;
- Vibração do motor;
- Proximidade de corpos d’água;
- Declividade;
- Quantidade de falhas.

### Script SQL Utilizado
[Visualizar tabela SQL](Sprint2/SPRINT2_RISCOSAGRICOLAS.sql)

### Consulta SQL — Alto Desgaste Operacional
Consulta utilizada para identificar equipamentos com elevado tempo de uso operacional.

```sql
SELECT *
FROM SPRINT2_RISCOSAGRICOLAS
WHERE HORAS_USO > 400;
```

### Resultado da Consulta
Exemplo da execução da consulta no Oracle SQL Developer:
![Consulta SQL - Horas Uso](Sprint2/Horas_Uso.png)

---
## 🏗️ Arquitetura da Solução

A arquitetura da solução representa o fluxo completo dos dados, desde a coleta das informações até a geração de alertas preventivos e visualizações para os usuários finais.

O pipeline contempla:

- Fontes de dados climáticos e operacionais;
- Coleta e integração via sensores e APIs;
- Persistência em banco de dados SQL;
- Processamento e preparação dos dados;
- Modelo preditivo baseado em Random Forest;
- Geração de scores de risco e alertas operacionais;
- Interface de monitoramento em tempo real.

### Diagrama da Arquitetura
![Arquitetura da Solução](Sprint2/diagrama.png)

---
## 🤖 Modelo Preditivo de IA
- Random Forest
- Acurácia

---
## 📈 Validação Estatística
- Heat Map
- Matriz de Confusão
- Relatório de Classificação
 
 
Durante a Sprint 2, foram realizadas análises estatísticas exploratórias para identificar correlações entre variáveis ambientais e operacionais presentes no dataset.

O objetivo foi compreender como fatores climáticos e operacionais influenciam o comportamento do risco agrícola, permitindo validar a coerência dos dados utilizados no modelo preditivo.

### Heatmap de Correlação
O heatmap abaixo apresenta a matriz de correlação entre as principais variáveis do projeto.

Foi possível identificar:

- Forte correlação positiva entre variáveis de temperatura;
- Forte correlação positiva entre variáveis de umidade;
- Correlação negativa entre temperatura e umidade;
- Relações coerentes entre fatores ambientais e operacionais.

![Heatmap de Correlação](Sprint2/Heatmap_Correlação.png)

### Notebook Python
O tratamento dos dados e as conversões numéricas foram realizados em Python utilizando Pandas, permitindo a preparação do dataset para análise estatística e treinamento do modelo preditivo.
[Visualizar notebook da análise preditiva](Sprint2/Sprint2_Sompo_Colab.ipynb)

### Modelo Random Forest
Foi utilizado o algoritmo Random Forest para realizar a classificação dos níveis de risco operacional dos equipamentos agrícolas.

O modelo recebeu como entrada variáveis climáticas e operacionais, como temperatura, umidade, chuva, horas de uso, vibração do motor, proximidade de corpos d’água, declividade e histórico de falhas.

A saída do modelo foi a classificação do risco em três níveis: Baixo; Médio e Alto.
A acurácia obtida foi de **98,65%**, indicando bom desempenho do modelo na base utilizada.

### Matriz de Confusão
A matriz de confusão foi utilizada para avaliar o desempenho do modelo Random Forest na classificação dos níveis de risco operacional.

O resultado demonstrou elevada taxa de acerto nas classificações de risco baixo, médio e alto, reforçando a coerência do modelo preditivo.

![Matriz de Confusão](Sprint2/Matriz_de_Confusão.png)

### Relatório de Classificação

O relatório de classificação foi utilizado para avaliar métricas como precisão, recall e F1-score do modelo Random Forest.

Os resultados demonstraram elevado desempenho do modelo na classificação dos níveis de risco operacional, reforçando a consistência da abordagem preditiva adotada.

![Relatório de Classificação](Sprint2/relatorio_classificação.png)

---
## ⚙️ Como Executar o Projeto

1. Executar os scripts SQL no Oracle SQL Developer;
2. Importar o dataset integrado;
3. Executar o notebook Python no Google Colab;
4. Gerar métricas e análises estatísticas;
5. Visualizar os resultados do modelo preditivo.

---
## 🎥 Vídeo da Sprint 2
https://youtu.be/YrzLkmvgkMg

---

# 🔗 Sprint 3 — Integração e MVP Funcional

## 📌 Objetivo da Sprint 3

A Sprint 3 teve como objetivo transformar os componentes desenvolvidos nas Sprints 1 e 2 em um MVP funcional integrado (~60% da solução prometida em funcionamento), conectando de ponta a ponta: **entrada de dados → banco → modelo de risco → segurança → interface de saída**.

Diferente das sprints anteriores, o foco aqui não foi "o que" a solução faz, mas **"como os componentes funcionam juntos"** em um fluxo estável e auditável.

## 🎯 User Stories Oficiais e Personas Aprofundadas

Com base no material oficial de kickoff da Sompo, mapeamos explicitamente as User Stories às três visões do desafio — ponto identificado como pendente nas correções das Sprints 1 e 2.

**Desafio oficial:** IA para identificação de fatores ambientais e operacionais que aumentam o risco de dano ou perda de equipamentos agrícolas.

### Visão Sompo (seguradora)

- Quero identificar e quantificar fatores ambientais e operacionais que elevam a probabilidade de danos e perdas (colisão, proximidade de água, transporte, roubo/furto), para orientar prevenção e reduzir frequência de sinistros.
- Quero que a solução gere alertas e recomendações preventivas antes de eventos típicos cobertos, para diminuir severidade e custo de sinistros.
- Quero um score de risco por equipamento/cliente/região e por tipo de operação, para apoiar decisões técnicas e priorização de ações.
- Quero que os resultados sejam explicáveis (principais drivers do risco), para sustentar conversas técnicas com clientes, corretoras e áreas internas.
- Quero registrar trilha de auditoria (dados usados, versão do modelo, evidências), para garantir governança e rastreabilidade do uso de IA.
- Quero que a solução suporte integração com fontes diversas (telemetria, clima, mapas/água, rotas, histórico operacional), para ampliar cobertura e evoluir o MVP sem retrabalho.

### Visão Cliente (segurado / gestor de frota)

- Quero receber um painel simples de risco por equipamento e por operação, para priorizar prevenção e reduzir perdas.
- Quero saber quais fatores mais contribuem para o risco, para agir nos pontos de maior impacto.
- Quero receber alertas em tempo de decisão, para evitar danos por colisão, atolamento ou risco em área próxima de água.
- Quero recomendações práticas do tipo "o que mudar" (rota, horário, velocidade), para reduzir risco sem comprometer produtividade.
- Quero relatórios por fazenda/região/período com tendência de risco, para comprovar evolução e justificar ações de segurança.
- Quero configurar limites e políticas internas (quando bloquear operação, quando só alertar), para adaptar a solução à minha operação.

### Visão Usuário Final (operador, gestor, técnico, corretor, Sompo interno)

| Papel | User Story |
|---|---|
| Operador de campo | Quero receber um alerta quando houver alto risco de colisão com obstáculos no solo, para ajustar a condução e evitar danos. |
| Operador de campo | Quero saber quando estou em zona crítica próxima de água, para evitar a aproximação e reduzir risco operacional. |
| Gestor de frota | Quero um ranking de risco por equipamento e por área, para priorizar manutenção e ações preventivas. |
| Técnico de manutenção | Quero identificar padrões operacionais que antecedem danos, para atuar preventivamente e reduzir indisponibilidade. |
| Corretor(a) | Quero uma explicação objetiva dos fatores de risco, para apoiar o cliente e reduzir sinistros. |
| Subscrição (Sompo) | Quero um score de risco explicável por equipamento, para apoiar decisões técnicas e recomendações ao cliente. |
| Sinistros (Sompo) | Quero acessar um resumo do contexto ambiental e operacional do evento, para apoiar triagem e aprendizado preventivo. |

### Personas aprofundadas

**Operador de campo** — dor: não sabe, na hora, se o solo ou o clima colocam a máquina em risco de colisão ou atolamento. Contexto: opera equipamentos móveis em áreas variáveis, muitas vezes próximas a corpos d'água. Decisão apoiada: recebe alerta antes de iniciar/continuar a operação, com recomendação de rota ou adiamento.

**Gestor de frota** — dor: descobre falhas e danos só depois que aconteceram. Contexto: responde por múltiplos equipamentos e operações simultâneas. Decisão apoiada: usa ranking de risco por equipamento para priorizar manutenção preventiva.

**Sompo interna (subscrição e sinistros)** — dor: avalia risco e sinistros com base em informação incompleta, sem trilha de auditoria. Contexto: precisa de score explicável e histórico auditável. Decisão apoiada: consulta score explicável e log de uso para embasar decisão técnica.

## 🔄 Evolução em Relação à Sprint 2

O feedback da Sprint 2 apontou como pontos de melhoria: conectar o banco ao modelo em um mesmo fluxo, desenvolver uma interface de saída com alertas, e documentar as escolhas da inteligência preditiva. A Sprint 3 endereça diretamente esses três pontos:

- ✅ Banco e modelo conectados em um único fluxo automatizado (não mais passos manuais separados)
- ✅ Interface de saída construída (dashboard Streamlit com alertas)
- ✅ Documentação das escolhas técnicas (algoritmo, segurança, arquitetura) nesta seção
- ✅ User Stories oficiais mapeadas às 3 visões do desafio (pendência desde a Sprint 1)
- ✅ Personas aprofundadas com dor, contexto e decisão apoiada

## 🏗️ Arquitetura Implementada (MVP)

```
Oracle FIAP (nuvem)   <──lê dados──   Google Colab
  SPRINT2_RISCOSAGRICOLAS                 - Modelo Random Forest (joblib)
  SPRINT3_SCORES_RISCO                    - Controle de acesso por perfil
  SPRINT3_LOG_ACESSOS                     - Validação de dados de entrada
                                           - Log de auditoria
                        ──grava scores──┘

  └──lê scores──>  PC local
                     - Dashboard Streamlit
                     - Cards de KPI + gráficos
                     - Tabela colorida por nível de risco
```

**Por que o dashboard roda no PC local e não no Colab:** em testes de conexão (via socket em Python), identificamos que o Google Colab não consegue acessar a porta do Oracle FIAP (`oracle.fiap.com.br:1521`) — a conexão dá timeout, indicando bloqueio de rede/firewall do lado do servidor Oracle da FIAP, que provavelmente só aceita conexões de dentro da rede da instituição. O SQL Developer local e o Streamlit rodando no PC, por outro lado, conectam normalmente. Por isso, o processamento (modelo + segurança) roda no Colab, e a camada de apresentação roda localmente, ambos lendo/gravando no mesmo banco Oracle.

## 🗄️ Banco de Dados — Novas Tabelas

Além da `SPRINT2_RISCOSAGRICOLAS` (Sprint 2), foram criadas:

| Tabela | Conteúdo |
|---|---|
| `SPRINT3_SCORES_RISCO` | Mesmas variáveis de entrada + `score_risco` (0–100), `classificacao_risco` (baixo/médio/alto) e `data_processamento` |
| `SPRINT3_LOG_ACESSOS` | Auditoria: `usuario`, `perfil`, `acao`, `data_hora` de cada geração de score |

O script SQL completo de criação das tabelas e consultas está em [`Sprint3/sprint3_script_completo.sql`](Sprint3/sprint3_script_completo.sql).

## 🔒 Segurança

Implementado no MVP:

- Controle de acesso por perfil (operador, gestor, seguradora), cada um com permissões distintas de leitura/geração de score
- Log de auditoria no Oracle — toda geração de score é registrada com usuário, perfil, ação e timestamp
- Validação de dados de entrada (rejeita valores fora de faixas plausíveis, ex: umidade fora de 0–100%)
- Senhas fora do código-fonte (variáveis de ambiente / Colab Secrets)

**Visão futura de produto** (fora do escopo deste MVP): criptografia ponta a ponta (TLS + repouso), conformidade formal com a LGPD, autenticação real de usuários, alta disponibilidade.

## 📊 Dashboard (Streamlit)

Construído em Streamlit, conectado diretamente à tabela `SPRINT3_SCORES_RISCO` no Oracle FIAP:

- Filtro por nível de risco (barra lateral)
- 4 cards de métricas (total de registros, risco alto, risco médio, score médio)
- Aba "Visão geral": gráfico de barras (distribuição por risco) e linha (evolução do score)
- Aba "Alertas críticos": equipamentos em risco alto, destacados
- Aba "Dados detalhados": tabela colorida por nível de risco (vermelho/laranja/verde)

## ⚙️ Como Executar o Projeto (Sprint 3)

### 1. Backend e modelo (Google Colab)

- Abrir [`Sprint3/Sprint3_Sompo.ipynb`](Sprint3/Sprint3_Sompo.ipynb) no Google Colab
- Rodar as células em ordem: conexão com Oracle (`oracledb`) → carregamento do dataset → treino do modelo → funções de segurança e backend (`gerar_e_salvar_scores`)
- Informar a senha do Oracle FIAP quando solicitado (via `getpass`, nunca em texto no código)

### 2. Dashboard (PC local)

```bash
pip install streamlit oracledb pandas

# Windows (PowerShell)
$env:SENHA_ORACLE = "sua_senha_aqui"
# Mac/Linux
export SENHA_ORACLE="sua_senha_aqui"

streamlit run dashboard.py
```

O dashboard abre em `http://localhost:8501`. Script fonte: [`Sprint3/dashboard.py`](Sprint3/dashboard.py).

### 📸 Evidências de Execução

Prints das etapas de criação, população e validação do banco de dados, disponíveis em [`Sprint3/`](Sprint3/):

1. [Tabelas criadas com sucesso](Sprint3/01_tabelas_criadas_sucesso.png)
2. [Estrutura das tabelas (DESCRIBE)](Sprint3/02_describe_tabelas.png)
3. [Dados populados em SPRINT3_SCORES_RISCO](Sprint3/03_scores_risco_populado.png)
4. [Log de acessos em SPRINT3_LOG_ACESSOS](Sprint3/04_log_acessos_populado.png)
5. [Validação rejeitando dado inválido (umidade fora de 0–100%)](Sprint3/05_validacao_dado_invalido_rejeitado.png)
6. [Distribuição de registros por classificação de risco](Sprint3/06_distribuicao_risco.png)


## 🎥 Vídeo da Sprint 3

📹 [Link do vídeo aqui — a adicionar]


---
## 📁 Estrutura do Repositório

### 📂 Sprint1
Contém os arquivos relacionados à estruturação inicial da solução:

- Arquitetura da solução;
- Definição conceitual do projeto;
- Apresentação da Sprint 1;
- Dataset inicial.


### 📂 Sprint2
Contém os arquivos relacionados à implementação técnica da solução:

- Dataset integrado (INMET + dados simulados);
- Scripts SQL utilizados no Oracle SQL Developer;
- Notebook Python desenvolvido no Google Colab;
- Arquitetura técnica da solução;
- Modelo preditivo Random Forest;
- Heatmap de correlação;
- Matriz de confusão;
- Relatório de classificação;
- Evidências visuais da execução do modelo preditivo.


### 📂 Sprint3

Contém os arquivos relacionados à integração e ao MVP funcional:

Notebook atualizado com backend, segurança e conexão Oracle (Sprint3_Sompo.ipynb)
Script do dashboard (dashboard.py)
Modelo treinado exportado (modelo_risco_agricola.pkl)
Script SQL completo de criação de tabelas e consultas (sprint3_script_completo.sql)
Apresentação atualizada com arquitetura implementada, User Stories oficiais e personas aprofundadas (Apresentacao - Sprint 3.pdf)
Evidências de execução do banco de dados (prints do SQL Developer, ver seção 📸 Evidências de Execução)
