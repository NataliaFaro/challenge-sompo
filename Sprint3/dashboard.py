import streamlit as st
import pandas as pd
import oracledb
import os

st.set_page_config(page_title="Dashboard de Risco Agrícola - Sompo", layout="wide")
st.title("🌾 Dashboard de Risco Agrícola — Sompo Challenge")
st.markdown("Monitoramento preventivo de equipamentos agrícolas")

usuario = "rm568610"
senha = os.environ.get("SENHA_ORACLE")
host = "oracle.fiap.com.br"
porta = 1521
sid = "ORCL"

@st.cache_resource
def conectar():
    dsn = oracledb.makedsn(host, porta, sid=sid)
    return oracledb.connect(user=usuario, password=senha, dsn=dsn)

conexao = conectar()

@st.cache_data(ttl=30)
def consultar_scores():
    query = "SELECT * FROM SPRINT3_SCORES_RISCO ORDER BY data_processamento DESC"
    df = pd.read_sql(query, conexao)
    df.columns = [c.lower() for c in df.columns]
    return df

df = consultar_scores()

# --- Filtro lateral ---
st.sidebar.header("🔍 Filtros")
filtro = st.sidebar.selectbox("Nível de risco", ["Todos", "baixo", "medio", "alto"])

if filtro != "Todos":
    df_filtrado = df[df["classificacao_risco"] == filtro]
else:
    df_filtrado = df

# --- Cards de métricas (KPIs) ---
col1, col2, col3, col4 = st.columns(4)
col1.metric("Total de Registros", len(df))
col2.metric("Risco Alto", len(df[df["classificacao_risco"] == "alto"]))
col3.metric("Risco Médio", len(df[df["classificacao_risco"] == "medio"]))
col4.metric("Score Médio Geral", f"{df['score_risco'].mean():.1f}")

st.divider()

# --- Abas ---
aba1, aba2, aba3 = st.tabs(["📊 Visão Geral", "⚠️ Alertas Críticos", "📋 Dados Detalhados"])

with aba1:
    st.subheader("Distribuição por Nível de Risco")
    contagem = df["classificacao_risco"].value_counts()
    st.bar_chart(contagem)

    st.subheader("Evolução do Score de Risco")
    df_ordenado = df.sort_values("data_processamento")
    st.line_chart(df_ordenado.set_index("data_processamento")["score_risco"])

with aba2:
    st.subheader("Equipamentos em Risco Alto")
    alertas = df[df["classificacao_risco"] == "alto"]

    if not alertas.empty:
        st.warning(f"⚠️ {len(alertas)} equipamento(s) em RISCO ALTO — ação recomendada: intervenção imediata")
        st.dataframe(
            alertas[["data_processamento", "horas_uso", "proximidade_agua",
                     "declividade", "score_risco"]],
            use_container_width=True
        )
    else:
        st.success("✅ Nenhum alerta crítico no momento")

with aba3:
    st.subheader("Tabela Completa (filtro aplicado: " + filtro + ")")

    def colorir_risco(valor):
        if valor == "alto":
            return "background-color: #ff4b4b; color: white"
        elif valor == "medio":
            return "background-color: #ffa500; color: black"
        elif valor == "baixo":
            return "background-color: #90ee90; color: black"
        return ""

    colunas_exibir = [
        "data_processamento", "horas_uso", "proximidade_agua",
        "declividade", "score_risco", "classificacao_risco"
    ]

    st.dataframe(
        df_filtrado[colunas_exibir].style.map(colorir_risco, subset=["classificacao_risco"]),
        use_container_width=True
    )
