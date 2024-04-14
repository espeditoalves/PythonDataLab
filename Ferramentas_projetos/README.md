# Principais Ferramentas para Projetos

- [Principais Ferramentas para Projetos](#principais-ferramentas-para-projetos)
  - [Poetry](#poetry)
  - [Extensions for vscode](#extensions-for-vscode)
  - [Dependencies dev-Group](#dependencies-dev-group)
  - [MkDocs](#mkdocs)
  - [Blue - USING POETRY](#blue---using-poetry)
  - [Git](#git)
  - [Markdown Preview Enhanced](#markdown-preview-enhanced)

---

## Poetry

1. Iniciar um projeto do zero:
   - `poetry new meu_projeto`: Iniciar um novo Projeto
   - `poetry add nome_do_pacote`: Instalar novos pacotes
   - `poetry show`: Mostrar os pacotes
   - `poetry install`: Instalar as dependências
   - `poetry lock`: Gerar e atualizar o arquivo poetry.lock.

2. Aplicando o `Poetry` em um projeto em andamento.
   - `poetry init`: Iniciar o poetry
   - Quando o comando poetry init for executado, o Poetry irá guiá-lo na criação do arquivo pyproject.toml para configurar o seu projeto.

3. Clone de repositório que utiliza `Poetry`.
   - Faça o Clone do repositório, e verifique a existencia do arquivo `pyproject.toml`, caso existe o repositório tem ambiente virtual gerenciado pelo poetry.
   - Utilze o comando `poetry install`, e as dependencias do `pyproject.toml` serão instaladas.
  
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

## Blue - USING POETRY

- poetry run blue --check --diff nome_arquivo.py

---

## Git

- Alterar MENSAGEM Do último commit: ``git commit --amend -m "Novo texto do commit"``

---

## Markdown Preview Enhanced

- Visualização previa do arquivo markdown: teclas `Ctrl + Shift + v`

---
