# Principais Ferramentas para Projetos

- [Principais Ferramentas para Projetos](#principais-ferramentas-para-projetos)
  - [Meus Desenvolvimentos](#meus-desenvolvimentos)
  - [Cookiecutter Data Science](#cookiecutter-data-science)
  - [Minha estrutura de organização](#minha-estrutura-de-organização)
  - [Poetry](#poetry)
    - [Principais Funcionalidades do `poetry`](#principais-funcionalidades-do-poetry)
    - [Vantagens do `poetry`](#vantagens-do-poetry)
    - [Exemplo Básico de Uso](#exemplo-básico-de-uso)
  - [Como executar verificações de estilo de código com Blue:](#como-executar-verificações-de-estilo-de-código-com-blue)
  - [Extensions for vscode](#extensions-for-vscode)
  - [Dependencies dev-Group](#dependencies-dev-group)
  - [MkDocs](#mkdocs)
  - [Git](#git)
  - [Markdown Preview Enhanced](#markdown-preview-enhanced)

---
## Meus Desenvolvimentos
Abrindo um novo projeto passo a passo:

>1. Criar a estrutura de pastas usando o **Cookiecutter Data Science**
>2. Apagar o arquivo *pyproject.toml*, pois não me atende
>3. Usar o comando poetry init:
    > Esse comando irá criar um novo *pyproject.toml* com as configurações adequadas para gerenciar o ambiente virtual do meu projeto

Após executar esse comandos será necessário configurar o 'ipykernel' para os jupyter notebooks identificarem e executarem as códigos puxando os pacotes do meu ambiente virtual.

> 4. Intalação do ipykernel
>```sh
> poetry add ipykernel
> poetry shell
> # Instala e registra o kernel ipykernel no Jupyter com um nome específico.
> python -m ipykernel install --user --name=nome_do_seu_projeto --display-name "Python (nome_do_seu_projeto)"
>
>```

## Cookiecutter Data Science
   - Template popular para estruturar projetos de ciência de dados de forma organizada e reprodutível.
   - [Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/)
   - [Tutorial/refe](https://cookiecutter.readthedocs.io/en/2.0.2/)

## Minha estrutura de organização

Após a criação das pastas padrão do `**Cookiecutter Data Science**`, eu gosto de reorganizar a minha estrutura da seguinte maneira:
As marcações com #, indicam que são pastas que criei manualmente, elas não vem como padrão na ferramenta `**Cookiecutter Data Science**`.

```
├── LICENSE            <- Open-source license if one is chosen
├── Makefile           <- Makefile with convenience commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <- A default mkdocs project; see mkdocs.org for details
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│   |                      the creator's initials, and a short `-` delimited description, e.g.
│   |                     `1.0-jqp-initial-data-exploration`.
│   ├── exploration/       # Notebooks de exploração inicial dos dados
|   |-- preprocessing      # 
│   ├── modeling/          # Notebooks de experimentação e modelagem
│   └── reporting/         # Notebooks usados para gerar relatórios
│
├── pyproject.toml     <- Project configuration file with package metadata for titanic_ml_project
│                         and configuration for tools like black
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
|-- output             #
|   │── figures        <- Generated graphics and figures to be used in reporting
|-- |-- predictions    #
|   ├── reports        <- Generated analysis as HTML, PDF, LaTeX, etc.
│    
├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
│                         generated with `pip freeze > requirements.txt`
│
├── setup.cfg          <- Configuration file for flake8
│
└── Name_project                <- Source code for use in this project.
    │
    ├── __init__.py    <- Makes Name_project a Python module
    │
    ├── data           <- Scripts to download or generate data
    │   └── make_dataset.py
    │
    ├── features       <- Scripts to turn raw data into features for modeling
    │   └── build_features.py
    │
    ├── models         <- Scripts to train models and then use trained models to make
    │   │                 predictions
    │   ├── predict_model.py
    │   └── train_model.py
    │
    └── visualization  <- Scripts to create exploratory and results oriented visualizations
        └── visualize.py
```

## Poetry

O `poetry` é uma ferramenta de gerenciamento de dependências e ambientes virtuais para projetos em Python. Ele simplifica o processo de criação, construção e publicação de projetos Python, proporcionando uma forma mais eficiente e organizada de gerenciar bibliotecas e dependências.

### Principais Funcionalidades do `poetry`

1. **Gerenciamento de Dependências:**
   O `poetry` permite definir e resolver as dependências do seu projeto de maneira precisa. Ele cria um arquivo `pyproject.toml` onde todas as dependências e configurações do projeto são listadas, e um arquivo `poetry.lock` que garante que todos os desenvolvedores do projeto utilizem as mesmas versões das dependências.

2. **Ambientes Virtuais:**
   O `poetry` cria e gerencia automaticamente ambientes virtuais, isolando as dependências do projeto do restante do sistema. Isso garante que as bibliotecas e versões usadas em um projeto não interfiram em outros projetos ou no sistema operacional.

3. **Publicação de Pacotes:**
   Com o `poetry`, é fácil publicar pacotes Python no PyPI (Python Package Index). Ele fornece comandos simples para empacotar e distribuir seus projetos.

4. **Scripts e Configurações:**
   O `poetry` permite definir scripts de execução, configurações de projeto e metadados diretamente no arquivo `pyproject.toml`, tornando o processo de configuração mais simples e centralizado.

### Vantagens do `poetry`

- **Simplicidade e Conveniência:** O `poetry` combina várias funcionalidades em uma única ferramenta, reduzindo a necessidade de múltiplos utilitários.
- **Consistência:** Ao usar arquivos de bloqueio (`lock`), o `poetry` garante que todos os desenvolvedores de um projeto utilizem exatamente as mesmas versões de bibliotecas, eliminando problemas de incompatibilidade.
- **Isolamento:** Ambientes virtuais automáticos garantem que as dependências do projeto não afetem o sistema global ou outros projetos.

### Exemplo Básico de Uso

1. **Iniciar um Novo Projeto:**
   ```sh
   poetry new meu_projeto
   cd meu_projeto
   ```


## Como executar verificações de estilo de código com Blue:

O **Blue** é uma ferramenta de formatação de código que ajuda a manter a consistência do estilo do seu código Python. Para executar o Blue e verificar as diferenças sem aplicar as mudanças, use o comando:

```bash
poetry run blue --check --diff <nome_script.py>
```

---

## Extensions for vscode

- autoDocstring
- Bracket Pair Colorization Toggler
- vscode-icons
- Materal Icon Thema
- markdownlint
- [markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
- [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
- vscode-pets
- Rainbow CSV

---





## Dependencies dev-Group

1. Blue 
2. isort

---

## MkDocs

- Criar os arquivos: `poetry add --group dev mkdocs`
- Iniciar o MkDocs: `mkdocs new .`
- Servir o site: `mkdocs serve`

---

## Git

- `git commit --amend -m "Novo texto do commit"`: Alterar MENSAGEM Do último commit
- `git remote -v `:  listar os remotes atuais
- `git remote set-url origin <nova_url_do_repositório>`: Muda a URL do remote

---

## Markdown Preview Enhanced

- `Ctrl + Shift + v`: Visualização previa do arquivo markdown

---
