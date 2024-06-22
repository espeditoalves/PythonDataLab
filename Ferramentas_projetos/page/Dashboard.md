
- [Streamlit e suas Principais Funções](#streamlit-e-suas-principais-funções)
  - [Instalação](#instalação)
  - [Execução de um Aplicativo Streamlit](#execução-de-um-aplicativo-streamlit)
  - [Principais Funções do Streamlit](#principais-funções-do-streamlit)
    - [1. Títulos e Textos](#1-títulos-e-textos)
    - [2. Exibição de Dados](#2-exibição-de-dados)
    - [3. Gráficos](#3-gráficos)
    - [4. Widgets de Entrada](#4-widgets-de-entrada)
    - [5. Controle de Layout](#5-controle-de-layout)
    - [6. Carregamento de Arquivos](#6-carregamento-de-arquivos)
    - [7. Controle de Execução](#7-controle-de-execução)
  - [Conclusão](#conclusão)
- [Dashboard com python](#dashboard-com-python)
  - [1. Plotly](#1-plotly)
  - [2. Plotly.figure\_factory](#2-plotlyfigure_factory)
  - [3. Plotly.express](#3-plotlyexpress)
  - [4. Dash](#4-dash)
  - [Resumo das Diferenças](#resumo-das-diferenças)
- [Plotly no ambiente do Streamlit](#plotly-no-ambiente-do-streamlit)
  - [1. Plotly](#1-plotly-1)
  - [2. Plotly.figure\_factory](#2-plotlyfigure_factory-1)
  - [3. Plotly.express](#3-plotlyexpress-1)
  - [4. Dash](#4-dash-1)
  - [Resumo](#resumo)

# Streamlit e suas Principais Funções

Streamlit é uma biblioteca de código aberto em Python que permite a criação de aplicações web interativas para visualização de dados e machine learning. É projetada para ser fácil de usar, permitindo que você transforme scripts de dados em aplicações web compartilháveis com poucas linhas de código.

## Instalação

Para instalar Streamlit, você pode usar o pip:

```sh
pip install streamlit
```

## Execução de um Aplicativo Streamlit

Para executar um aplicativo Streamlit, salve seu script Python e execute o comando:

```sh
streamlit run nome_do_seu_script.py
```

## Principais Funções do Streamlit

### 1. Títulos e Textos

Você pode adicionar títulos e textos ao seu aplicativo com funções simples.

```python
import streamlit as st

st.title("Meu Aplicativo Streamlit")
st.header("Seção de Cabeçalho")
st.subheader("Subcabeçalho")
st.text("Este é um texto simples.")
st.markdown("Este é um texto em **Markdown**.")
```

### 2. Exibição de Dados

Streamlit permite a exibição fácil de dados usando tabelas e dataframes.

```python
import pandas as pd

df = pd.DataFrame({
    'col1': [1, 2, 3, 4],
    'col2': [10, 20, 30, 40]
})
st.dataframe(df)
st.table(df)
```

### 3. Gráficos

Você pode usar bibliotecas populares como Matplotlib, Plotly e Altair para criar gráficos interativos.

```python
import matplotlib.pyplot as plt

fig, ax = plt.subplots()
ax.plot([1, 2, 3, 4], [10, 20, 25, 30])
st.pyplot(fig)
```

### 4. Widgets de Entrada

Streamlit fornece diversos widgets de entrada para interação com o usuário.

```python
name = st.text_input("Digite seu nome")
age = st.number_input("Digite sua idade", min_value=0, max_value=100)
agree = st.checkbox("Eu concordo")
color = st.selectbox("Escolha uma cor", ["Azul", "Vermelho", "Verde"])
```

### 5. Controle de Layout

Você pode controlar o layout da sua aplicação usando colunas, containers e expandidos.

```python
col1, col2 = st.columns(2)
col1.write("Esta é a coluna 1")
col2.write("Esta é a coluna 2")

with st.expander("Mais informações"):
    st.write("Aqui estão mais detalhes.")
```

### 6. Carregamento de Arquivos

Streamlit facilita o carregamento de arquivos, permitindo que os usuários façam upload de dados para a aplicação.

```python
uploaded_file = st.file_uploader("Escolha um arquivo")
if uploaded_file is not None:
    data = pd.read_csv(uploaded_file)
    st.write(data)
```

### 7. Controle de Execução

Você pode usar botões para controlar a execução de partes do código.

```python
if st.button("Clique aqui"):
    st.write("Botão clicado!")
```

## Conclusão

Streamlit é uma ferramenta poderosa para criar aplicações web interativas com Python, facilitando a visualização de dados e a construção de dashboards. Com suas funções intuitivas e de fácil uso, você pode rapidamente transformar análises de dados em aplicativos web compartilháveis.




# Dashboard com python

As bibliotecas `plotly`, `plotly.figure_factory`, `plotly.express` e `dash` são todas partes do ecossistema Plotly para criação de gráficos e dashboards interativos em Python, mas cada uma tem um propósito específico. Vamos ver as diferenças entre elas:

## 1. Plotly

`plotly` é a biblioteca principal, que fornece a base para a criação de gráficos interativos em Python. Dentro do `plotly`, você tem vários submódulos, como `plotly.graph_objects` (também conhecido como `go`), que oferece uma API de baixo nível para a construção de gráficos complexos e altamente personalizáveis.

**Características:**
- Flexível e altamente configurável.
- Permite a construção detalhada e personalizada de gráficos.
- Inclui suporte para uma ampla gama de tipos de gráficos, como gráficos de linha, barra, dispersão, mapas, 3D, etc.

## 2. Plotly.figure_factory

`plotly.figure_factory` é um submódulo do `plotly` que fornece funções de alto nível para a criação de gráficos complexos que podem ser difíceis de criar manualmente com `plotly.graph_objects`.

**Características:**
- Contém funções de conveniência para a criação de gráficos especializados, como dendrogramas, mapas de calor com anotações, gráficos de violino, etc.
- Facilita a criação de gráficos complexos sem necessidade de detalhamento excessivo.

## 3. Plotly.express

`plotly.express` é um módulo de alto nível para a criação rápida e fácil de gráficos em Plotly. Ele é projetado para ser intuitivo e eficiente, oferecendo uma interface simplificada em comparação com `plotly.graph_objects`.

**Características:**
- Simplicidade e rapidez na criação de gráficos.
- Recomendado para a criação de gráficos padronizados e menos complexos.
- As funções de `plotly.express` geralmente requerem menos código e são mais fáceis de usar, especialmente para exploração e análise de dados.

## 4. Dash

`dash` é um framework de aplicação web que permite a construção de dashboards interativos utilizando componentes de Plotly para visualizações. Ele é ideal para criar aplicações analíticas com interatividade complexa, integrando gráficos, tabelas, controles de entrada e muito mais.

**Características:**
- Permite a construção de aplicações web interativas com visualizações de dados.
- Utiliza Plotly para gráficos, mas também integra componentes HTML e controles de interface de usuário (UI) como dropdowns, sliders, etc.
- Baseado em Flask, React e Plotly.js, proporcionando flexibilidade e desempenho.

## Resumo das Diferenças

- **plotly**: Biblioteca principal com submódulos para gráficos interativos detalhados e configuráveis.
- **plotly.figure_factory**: Submódulo de `plotly` com funções convenientes para gráficos especializados.
- **plotly.express**: Interface de alto nível para criação rápida e fácil de gráficos comuns.
- **dash**: Framework completo para construção de dashboards interativos baseados na web.

Cada uma dessas bibliotecas e módulos serve a diferentes propósitos dentro do ecossistema de visualização de dados em Python, permitindo desde a criação rápida de gráficos simples até a construção de complexos dashboards interativos.


# Plotly no ambiente do Streamlit

No ambiente do Streamlit, você pode utilizar várias bibliotecas para criar gráficos e dashboards interativos. Aqui estão as que são mais relevantes:

## 1. Plotly

Você pode usar `plotly` no Streamlit para criar gráficos interativos. Streamlit tem suporte nativo para Plotly, permitindo que você integre gráficos facilmente em suas aplicações.

**Como usar:**
```python
import streamlit as st
import plotly.graph_objects as go

fig = go.Figure(data=go.Bar(y=[2, 3, 1]))
st.plotly_chart(fig)
```

## 2. Plotly.figure_factory

Como `plotly.figure_factory` é um submódulo do `plotly`, você também pode usar suas funções para criar gráficos complexos e integrá-los no Streamlit.

**Como usar:**
```python
import streamlit as st
import plotly.figure_factory as ff

data_matrix = [[0.1, 0.2, 0.5], [0.3, 0.8, 0.6]]
fig = ff.create_annotated_heatmap(data_matrix)
st.plotly_chart(fig)
```

## 3. Plotly.express

`plotly.express` é altamente recomendada para uso com Streamlit devido à sua simplicidade e facilidade de uso. Você pode criar rapidamente gráficos comuns e integrá-los em suas aplicações Streamlit.

**Como usar:**
```python
import streamlit as st
import plotly.express as px

df = px.data.iris()
fig = px.scatter(df, x='sepal_width', y='sepal_length')
st.plotly_chart(fig)
```

## 4. Dash

`dash` não pode ser diretamente usado dentro de uma aplicação Streamlit, pois é um framework web independente para construção de dashboards interativos. No entanto, você pode desenvolver uma aplicação Dash separadamente e depois integrá-la com um serviço web que pode ser acessado a partir de uma aplicação Streamlit, se necessário.

## Resumo

- **plotly**: Pode ser usado diretamente no Streamlit para criar gráficos interativos.
- **plotly.figure_factory**: Pode ser usado no Streamlit como parte do `plotly` para gráficos especializados.
- **plotly.express**: Altamente recomendado para uso no Streamlit devido à sua simplicidade e eficiência.
- **dash**: Não pode ser usado diretamente no Streamlit, mas pode ser usado para construir dashboards interativos de forma independente.

Essas bibliotecas oferecem uma ampla gama de funcionalidades para visualização de dados e interatividade no ambiente do Streamlit, permitindo a criação de aplicações ricas e interativas.
