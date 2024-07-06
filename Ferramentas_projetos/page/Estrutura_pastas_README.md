- [Estruturas de Organização de Pastas](#estruturas-de-organização-de-pastas)
- [Diferenças Cookiecutter e Cookiecutter Data Science](#diferenças-cookiecutter-e-cookiecutter-data-science)
- [Cookiecutter Data Science](#cookiecutter-data-science)
    - [O que é Cookiecutter Data Science?](#o-que-é-cookiecutter-data-science)
    - [Como Usar o Cookiecutter Data Science?](#como-usar-o-cookiecutter-data-science)
    - [Benefícios do Cookiecutter Data Science](#benefícios-do-cookiecutter-data-science)
  - [Configurando o Cookiecutter Data Science](#configurando-o-cookiecutter-data-science)
- [Cookiecutter](#cookiecutter)
  - [Selecionando Templates Específicos:](#selecionando-templates-específicos)
- [Estrutura de Diretórios para Projetos de Ciência de Dados/Machine Learning](#estrutura-de-diretórios-para-projetos-de-ciência-de-dadosmachine-learning)
  - [Descrição dos Diretórios](#descrição-dos-diretórios)
- [Criando Sua Própria Estrutura de Projetos com Cookiecutter](#criando-sua-própria-estrutura-de-projetos-com-cookiecutter)
  - [Passo 1: Instalação do Cookiecutter](#passo-1-instalação-do-cookiecutter)
  - [Passo 2: Estrutura Básica do Projeto](#passo-2-estrutura-básica-do-projeto)
  - [Passo 3: Configurando o `cookiecutter.json`](#passo-3-configurando-o-cookiecutterjson)
  - [Passo 4: Criando o Template](#passo-4-criando-o-template)
  - [Passo 5: Use o `Cookiecutter` para gerar o projeto](#passo-5-use-o-cookiecutter-para-gerar-o-projeto)
  - [Passo Extra: Configuração `pyproject.toml`](#passo-extra-configuração-pyprojecttoml)
  
#  Estruturas de Organização de Pastas

1. **Cookiecutter Data Science**
   - Template popular para estruturar projetos de ciência de dados de forma organizada e reprodutível.
   - [Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/)
   - [cookiecutter docs](https://cookiecutter.readthedocs.io/en/2.0.2/)

2. **Project Template for Data Science**
   - [Modelo de projeto de ciência de dados](https://joserzapata.github.io/data-science-project-template/)

3. **Estrutura projeto: Khuyen Tran**:
   - [Estrutura de projeto: Khuyen Tran](https://henriqueajnb.github.io/data-science-escalavel/cap02-estrutura_projeto/sec2-1-introducao.html)

# Diferenças Cookiecutter e Cookiecutter Data Science
A diferença entre `pip install cookiecutter` e `pip install cookiecutter-data-science` está nos modelos (ou “cookiecutters”) que eles fornecem:

Em resumo, temos dois pacotes relacionados ao **Cookiecutter**:

1. **pip install cookiecutter**:
   - Instala o `Cookiecutter` em si, que é uma ferramenta de linha de comando.
   - Permite criar projetos a partir de modelos pré-definidos (chamados "cookiecutters").
   - Útil para iniciar projetos em várias linguagens e áreas.

2. **pip install cookiecutter-data-science**:
   - Instala o pacote específico para ciência de dados chamado `Cookiecutter Data Science`.
   - É um pacote específico para ciência de dados.
   - Fornece um modelo consistente para projetos de ciência de dados.
   - Inclui estrutura de diretórios para dados, notebooks, modelos e visualizações.

Ambos são úteis, dependendo do tipo de projeto que você deseja iniciar! 🚀

# Cookiecutter Data Science

### O que é Cookiecutter Data Science?

Cookiecutter Data Science é um projeto e uma ferramenta que visa facilitar a criação e a organização de projetos de ciência de dados de maneira estruturada, padronizada e reprodutível.

### Como Usar o Cookiecutter Data Science?

- **Instalação**: Para usar o Cookiecutter Data Science, você precisa primeiro instalar o Cookiecutter via pip:

```sh
pip install cookiecutter-data-science
```

- **Execução**: Para criar um novo projeto de ciência de dados usando Cookiecutter Data Science (PADRÃO), execute o seguinte comando no terminal:


```sh
ccds
```

- **Personalização**: Durante a criação do projeto, você será solicitado a fornecer informações como nome do projeto, nome do autor, diretório de trabalho, entre outros. Isso personaliza o template de acordo com as suas necessidades específicas.

### Benefícios do Cookiecutter Data Science

- **Estrutura Padrão**: Oferece uma estrutura de diretórios padronizada que inclui pastas para dados brutos, dados processados, notebooks de exploração, scripts de modelagem, entre outros.

- **Reprodutibilidade**: Facilita a reprodutibilidade do projeto ao definir uma organização clara dos dados, scripts e notebooks, garantindo que outros membros da equipe ou colaboradores possam entender e reproduzir os resultados facilmente.

- **Boas Práticas**: Promove boas práticas de desenvolvimento de software e ciência de dados, como separação de dados e código, versionamento de modelos, e documentação integrada.

## Configurando o Cookiecutter Data Science

Para configurar o Cookiecutter Data Science (ccds) padrão olhe o passo a passo:
- [Cookiecutter data science - ccds padrão.md](Cookiecutter_data_science_ccds.md)

# Cookiecutter

O `Cookiecutter` em si é uma ferramenta de linha de comando que permite criar projetos a partir de modelos (ou “templates”) pré-definidos. No entanto, existem vários pacotes de modelos específicos para diferentes tipos de projetos. Além do `Cookiecutter Data Science`, você pode encontrar outros pacotes de modelos para áreas como desenvolvimento web, aprendizado de máquina, análise de dados e muito mais.

## Selecionando Templates Específicos:

Você pode explorar os templates disponíveis em [cookiecutter.io/templates](https://www.cookiecutter.io/templates). 

Para data science:
* [cookiecutter-data-science](https://github.com/drivendataorg/cookiecutter-data-science)
* [data-science-template-khuyen](https://github.com/khuyentran1401/data-science-template)
* [data-science-template-espedito](https://github.com/espeditoalves/data-science-template)

---
---

# Estrutura de Diretórios para Projetos de Ciência de Dados/Machine Learning

A Ferramenta **Cookiecutter data science**, oference uma estrutura muito boa, porém considere criar seu proprio sistema de pastas segue um exemplo de template.

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
|   |-- preprocessing
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
  



# Criando Sua Própria Estrutura de Projetos com Cookiecutter

## Passo 1: Instalação do Cookiecutter

Antes de tudo, você precisa ter o Cookiecutter instalado. Se ainda não tiver, você pode instalá-lo usando o pip (gerenciador de pacotes do Python):

```bash
pip install cookiecutter
```

## Passo 2: Estrutura Básica do Projeto

Comece decidindo a estrutura básica que você deseja para seus projetos. Por exemplo, vamos criar um template básico para um projeto de ciência de dados:

```plaintext
cookiecutter-template/
├── cookiecutter.json
└── {{cookiecutter.project_slug}}/
    ├── data/
    ├── models/
    ├── notebooks/
    ├── src/
    │   ├── __init__.py
    │   └── main.py
    ├── tests/
    │   ├── __init__.py
    │   └── test_main.py
    ├── README.md
    └── requirements.txt
```

- `cookiecutter.json`: Este arquivo contém as variáveis que serão substituídas durante a criação do projeto. Por exemplo, `project_slug` pode ser substituído pelo nome do projeto.

- `{{cookiecutter.project_slug}}/`: Diretório principal do projeto onde os arquivos e diretórios são gerados.

## Passo 3: Configurando o `cookiecutter.json`

No arquivo `cookiecutter.json`, você define as variáveis que serão usadas no template. Aqui está um exemplo simples:

```json
{
    "project_name": "Meu Projeto",
    "project_slug": "{{ cookiecutter.project_name.lower().replace(' ', '_') }}",
    "author_name": "Seu Nome",
    "email": "seuemail@example.com",
    "description": "Descrição do seu projeto"
}
```

- `project_name:` Nome do projeto.
- `project_slug:` Nome do projeto em minúsculas e substituição de espaços por _.
- `author_name:` Seu nome.
- `email:` Seu email.
- `description:`Descrição do projeto.

## Passo 4: Criando o Template

1. Crie uma pasta para o template: Por exemplo, cookiecutter-template.

2. Dentro da pasta do template, crie um arquivo `cookiecutter.json` com as variáveis desejadas.

3. Estruture os diretórios e arquivos: Dentro da pasta do template, crie a estrutura de diretórios e arquivos que deseja que seu projeto tenha. Utilize variáveis onde necessário, como `{{cookiecutter.project_slug}}/`.

4. Inclua scripts e arquivos de configuração: Adicione qualquer script de inicialização ou configuração que seja necessário para seu projeto.

## Passo 5: Use o `Cookiecutter` para gerar o projeto

Execute o comando abaixo, substituindo `path/to/cookiecutter-template` pelo caminho para o template criado:

```bash
cookiecutter path/to/cookiecutter-template
```
Se o template estiver disponível em um repositório GitHub, você pode usar o comando com a URL:

```bash
cookiecutter https://github.com/exemplo/cookiecutter-data-science
```

## Passo Extra: Configuração `pyproject.toml`

Ao usar o `Cookiecutter` para gerar a estrutura do projeto, você pode configurar o `pyproject.toml` para incluir as variáveis preenchidas automaticamente.

1. Defina as variáveis no `cookiecutter.json`:

```bash
{
    "project_name": "ml-deploy",
    "project_slug": "{{ cookiecutter.project_name.lower().replace(' ', '_') }}",
    "author_name": "Seu Nome",
    "email": "seuemail@example.com",
    "description": "Deploy em Produção de um Modelo de Machine Learning com Flask e Heroku"
}
```
2.Configure o `pyproject.toml` para usar as variáveis:

```bash
[tool.poetry]
name = "{{ cookiecutter.project_slug }}"
version = "0.1.0"
description = "{{ cookiecutter.description }}"
authors = ["{{ cookiecutter.author_name }} <{{ cookiecutter.email }}>"]

[tool.poetry.dependencies]
python = "^3.8"
# Adicione aqui outras dependências do seu projeto

[tool.poetry.dev-dependencies]
pytest = "^6.2"

```

Pronto.