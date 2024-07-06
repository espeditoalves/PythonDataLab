# Principais Ferramentas para Projetos

- [Principais Ferramentas para Projetos](#principais-ferramentas-para-projetos)
  - [Meus Desenvolvimentos](#meus-desenvolvimentos)
  - [Minha estrutura de organização](#minha-estrutura-de-organização)
  - [Cookiecutter Data Science](#cookiecutter-data-science)
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

>1. Criar a estrutura de pastas usando o **Cookiecutter**

A Ferramenta **Cookiecutter** permite criar uma estrutura de pastas especifica de acordo com template especificado.

No meu caso utilizado o [data-science-template-espedito](https://github.com/espeditoalves/data-science-template), modificado apartir do [data-science-template](https://github.com/khuyentran1401/data-science-template).

Após a instalaçao do **Cookiecutter**, basta usar o comando:

```bash
cookiecutter https://github.com/espeditoalves/data-science-template
```


Após executar esse comando será feito o download do template para uma pasta raiz do cookiecutter, e em seguida  será criada sua pasta com os diretórios definidos no template

## Minha estrutura de organização

```bash
.
├── config                      
│   ├── main.yaml                   # Main configuration file
│   ├── model                       # Configurations for training model
│   │   ├── model1.yaml             # First variation of parameters to train model
│   │   └── model2.yaml             # Second variation of parameters to train model
│   └── process                     # Configurations for processing data
│       ├── process1.yaml           # First variation of parameters to process data
│       └── process2.yaml           # Second variation of parameters to process data
├── data            
│   ├── final                       # data after training the model
│   ├── processed                   # data after processing
│   └── raw                         # raw data
├── docs                            # documentation for your project
├── .gitignore                      # ignore files that cannot commit to Git
├── Makefile                        # store useful commands to set up the environment
├── models                          # store models
├── notebooks                       # store notebooks
│   ├── exploration
│   │   └── .gitkeep
│   ├── modeling
│   │   └── .gitkeep
│   ├── preprocessing
│   │   └── .gitkeep
│   └── reporting
│       └── .gitkeep
├── output                          # store outputs
│   ├── figures
│   │   └── .gitkeep
│   ├── predictions
│   │   └── .gitkeep
│   └── reports
│       └── .gitkeep
{% if cookiecutter.dependency_manager == "pip" -%}
├── pyproject.toml                  # Configure black
{% elif cookiecutter.dependency_manager == "poetry" -%}
├── .pre-commit-config.yaml         # configurations for pre-commit
├── pyproject.toml                  # dependencies for poetry
{%- endif %}
├── README.md                       # describe your project
├── src                             # store source code
│   ├── __init__.py                 # make src a Python module 
│   ├── process.py                  # process data before training model
│   ├── train_model.py              # train model
│   └── utils.py                    # store helper functions
└── tests                           # store tests
    ├── __init__.py                 # make tests a Python module 
    ├── test_process.py             # test functions for process.py
    └── test_train_model.py         # test functions for train_model.py
```

## Cookiecutter Data Science
- Template popular para estruturar projetos de ciência de dados de forma organizada e reprodutível.
- [Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/)
- [cookiecutter docs](https://cookiecutter.readthedocs.io/en/2.0.2/)
 - [Estrutura de projeto: Khuyen Tran](https://henriqueajnb.github.io/data-science-escalavel/cap02-estrutura_projeto/sec2-1-introducao.html)
  
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
