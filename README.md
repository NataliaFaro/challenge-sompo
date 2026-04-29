FIAP - Faculdade de Informática e Administração Paulista
FIAP - Faculdade de Informática e Admnistração Paulista


# 🌱 Challenge Sompo - Previsão de Riscos em Equipamentos Agrícolas

## 👨‍🎓 Integrantes

Natalia de Lima Faro - RM 568610

## 👩‍🏫 Professores



---

## 📜 Descrição do Projeto

Este projeto tem como objetivo desenvolver uma solução baseada em dados e Inteligência Artificial capaz de identificar, prever e reduzir riscos operacionais e ambientais relacionados ao uso de equipamentos agrícolas.

No cenário atual, muitas decisões no campo ainda são tomadas de forma reativa, ou seja, apenas após a ocorrência de falhas ou acidentes. Isso pode gerar altos custos operacionais, danos aos equipamentos e riscos à segurança.

A proposta deste projeto é transformar esse modelo reativo em um modelo preventivo, utilizando dados como clima, tipo de solo, localização e histórico de uso para antecipar situações de risco e apoiar a tomada de decisão de operadores, gestores e seguradoras.


## 📊 Apresentação

Acesse a apresentação completa do projeto:

👉 [Visualizar apresentação](Arquitetura_de_Sistema_de_IA_para_Previsão_de_Riscos_em_Equipamentos_Agrícolas.pdf)

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

### 🔍 Funcionalidades principais:

* 🚨 Alertas de risco (baixo, médio, alto)
* 📊 Score de risco (0 a 100)
* 📍 Recomendações operacionais (ex: evitar área)
* 📈 Dashboard com visão geral dos riscos

---

## 👤 Personas

### 🚜 Operador

* Atua diretamente no campo
* Precisa evitar acidentes e falhas
* Utiliza alertas rápidos e objetivos

### 📊 Gestor Agrícola

* Responsável pela operação
* Busca reduzir custos e otimizar processos
* Precisa de relatórios e visão consolidada

### 🏢 Seguradora (Sompo)

* Avalia e gerencia riscos
* Define políticas de seguro
* Utiliza dados históricos e previsões

---

## 📊 Estrutura de Dados

A solução utilizará dados simulados representando variáveis ambientais e operacionais.

> **Os dados utilizados neste projeto são simulados, construídos com base em padrões reais observados no setor agrícola e em variáveis que influenciam diretamente o risco operacional, como clima, solo, uso do equipamento e histórico de falhas.**


Acesse o dataset utilizado no projeto:

[Download do dataset](dataset_riscos_agricolas.xlsx)


### 🔎 Variáveis consideradas:

* Clima (temperatura, umidade, chuva)
* Solo (tipo, inclinação)
* Localização (proximidade de água)
* Operação (campo ou transporte)
* Uso do equipamento
* Histórico de falhas

---

## 🤖 Modelo de IA (Proposta Inicial)

Será utilizado um modelo de **classificação de risco**, com base nos dados coletados.

### 📌 Abordagem:

* Tipo: Classificação (baixo, médio, alto)
* Entrada: variáveis ambientais + operacionais
* Saída:

  * Categoria de risco
  * Score de risco

### 🧠 Modelos sugeridos:

* Random Forest
* Regressão Logística

---

## 🏗️ Arquitetura da Solução

### 🔄 Fluxo da Solução:

Sensores / APIs → Coleta de Dados → Banco de Dados → Modelo de IA → API → Dashboard

### ⚙️ Componentes:

* 📡 Sensores (IoT) para coleta de dados
* 🌐 APIs externas (clima)
* 🗄️ Banco de dados (SQL ou NoSQL)
* 🤖 Modelo de Machine Learning (Python)
* 📊 Dashboard (Power BI ou aplicação web)

---

## 📱 Interface

A solução contará com:

* Dashboard com:

  * Visualização de risco por equipamento
  * Indicadores em tempo real
  * Histórico de eventos

* Alertas:

  * ⚠️ Alto risco de atolamento
  * 🚫 Evitar operação em determinada área

---

## 🔐 Segurança

* Controle de acesso por usuário
* Proteção de dados sensíveis
* Garantia de integridade das informações

---

## 📅 Planejamento das Próximas Sprints

### Sprint 2

* Criação do dataset
* Análise exploratória dos dados

### Sprint 3

* Desenvolvimento do modelo preditivo

### Sprint 4

* Desenvolvimento do dashboard

---

## 🎥 Vídeo de Apresentação

Link do vídeo (YouTube): 

---

## 📁 Estrutura do Repositório

* `/data` → datasets simulados
* `/notebooks` → análises e modelagem
* `/src` → código da aplicação
* `README.md` → documentação do projeto

---
