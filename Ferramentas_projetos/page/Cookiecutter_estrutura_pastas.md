- [Estruturas de Organização de Pastas](#estruturas-de-organização-de-pastas)
- [Cookiecutter Data Science](#cookiecutter-data-science)
    - [O que é Cookiecutter Data Science?](#o-que-é-cookiecutter-data-science)
    - [Como Usar o Cookiecutter Data Science?](#como-usar-o-cookiecutter-data-science)
    - [Benefícios do Cookiecutter Data Science](#benefícios-do-cookiecutter-data-science)
    - [Templates Disponíveis](#templates-disponíveis)
  - [Selecionando Templates Específicos:](#selecionando-templates-específicos)
  - [Configurando o Cookiecutter Data Science](#configurando-o-cookiecutter-data-science)
- [Estrutura de Diretórios para Projetos de Ciência de Dados/Machine Learning](#estrutura-de-diretórios-para-projetos-de-ciência-de-dadosmachine-learning)
  - [Descrição dos Diretórios](#descrição-dos-diretórios)
  

#  Estruturas de Organização de Pastas

1. **Cookiecutter Data Science**
   - Template popular para estruturar projetos de ciência de dados de forma organizada e reprodutível.
   - [Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/)
   - [Tutorial/refe](https://cookiecutter.readthedocs.io/en/2.0.2/)

2. **Project Template for Data Science**
   - [Modelo de projeto de ciência de dados](https://joserzapata.github.io/data-science-project-template/)

# Cookiecutter Data Science

### O que é Cookiecutter Data Science?

Cookiecutter Data Science é um projeto e uma ferramenta que visa facilitar a criação e a organização de projetos de ciência de dados de maneira estruturada, padronizada e reprodutível.

### Como Usar o Cookiecutter Data Science?

- **Instalação**: Para usar o Cookiecutter Data Science, você precisa primeiro instalar o Cookiecutter via pip:

```sh
# pip install cookiecutter ### depreciado
pip install cookiecutter-data-science
```

- **Execução**: Para criar um novo projeto de ciência de dados usando Cookiecutter Data Science, execute o seguinte comando no terminal:


```sh
# cookiecutter https://github.com/drivendata/cookiecutter-data-science ### depreciado
# From the parent directory where you want your project
ccds
```

- **Personalização**: Durante a criação do projeto, você será solicitado a fornecer informações como nome do projeto, nome do autor, diretório de trabalho, entre outros. Isso personaliza o template de acordo com as suas necessidades específicas.

### Benefícios do Cookiecutter Data Science

- **Estrutura Padrão**: Oferece uma estrutura de diretórios padronizada que inclui pastas para dados brutos, dados processados, notebooks de exploração, scripts de modelagem, entre outros.

- **Reprodutibilidade**: Facilita a reprodutibilidade do projeto ao definir uma organização clara dos dados, scripts e notebooks, garantindo que outros membros da equipe ou colaboradores possam entender e reproduzir os resultados facilmente.

- **Boas Práticas**: Promove boas práticas de desenvolvimento de software e ciência de dados, como separação de dados e código, versionamento de modelos, e documentação integrada.

### Templates Disponíveis

Cookiecutter  é uma ferramenta poderosa para padronizar e organizar projetos de ciência de dados desde o início. Ao usar seus templates, você pode economizar tempo na configuração inicial do projeto e focar mais na análise e na criação de valor a partir dos dados.

## Selecionando Templates Específicos:
O **Cookiecutter Data Science** não tem uma documentação explícita para selecionar templates diretamente na linha de comando como alguns outros projetos Cookiecutter. Normalmente, você especifica o repositório de onde o template será baixado. Você pode explorar os templates disponíveis em [cookiecutter.io/templates](https://www.cookiecutter.io/templates). Para data science pode acessar direto [cookiecutter-data-science](https://github.com/drivendataorg/cookiecutter-data-science).

## Configurando o Cookiecutter Data Science

Para configurar o Cookiecutter olhe o passo a passo:
- [Cookiecutter_data_science.md](Cookiecutter_data_science.md)


---
---

# Estrutura de Diretórios para Projetos de Ciência de Dados/Machine Learning

A Ferramenta **Cookiecutter data science**, oference uma estrutura muito boa, porém considere implementar a sugestão abaixo.

A organização dos diretórios de saída e a estrutura geral de um projeto de ciência de dados ou de machine learning são cruciais para garantir que o projeto seja fácil de entender, replicar e escalar. A seguir, apresento uma estrutura de diretórios comumente usada, junto com uma descrição do propósito de cada diretório.

```sh
project_name/
│
├── data/
│   ├── raw/               # Dados brutos, originais e não processados
│   ├── processed/         # Dados processados e prontos para uso
│   ├── external/          # Dados de fontes externas
│   └── interim/           # Dados intermediários durante o processamento
│
├── notebooks/
│   ├── exploration/       # Notebooks de exploração inicial dos dados
│   ├── modeling/          # Notebooks de experimentação e modelagem
│   └── reporting/         # Notebooks usados para gerar relatórios
│
├── src/
│   ├── data/              # Scripts para carregar, limpar e processar dados
│   ├── features/          # Scripts para gerar e selecionar features
│   ├── models/            # Scripts para treinar e avaliar modelos
│   ├── visualization/     # Scripts para criar visualizações dos dados e resultados
│   └── utils/             # Scripts utilitários e funções auxiliares
│
├── models/
│   ├── saved/             # Modelos treinados salvos
│   ├── checkpoints/       # Checkpoints de treinamento de modelos
│   └── logs/              # Logs de treinamento e validação de modelos
│
├── output/
│   ├── figures/           # Gráficos e visualizações geradas
│   ├── reports/           # Relatórios gerados, como PDF, HTML, etc.
│   └── predictions/       # Previsões geradas pelos modelos
│
├── tests/                 # Scripts de testes para o código
│
├── requirements.txt       # Lista de dependências de pacotes
├── environment.yml        # Configuração de ambiente Conda (alternativa ao requirements.txt)
├── setup.py               # Script de configuração do projeto
├── README.md              # Documentação inicial do projeto
└── .gitignore             # Arquivos e diretórios a serem ignorados pelo Git
```

## Descrição dos Diretórios

- **data/:** Armazena todos os dados do projeto.

- **notebooks/:** Contém notebooks Jupyter organizados por propósito.

- **src/:** Scripts e códigos fonte organizados por funcionalidade.

- **models/:** Diretório para salvar modelos treinados e logs de treinamento.

- **output/:** Diretório para armazenar saídas do projeto.

