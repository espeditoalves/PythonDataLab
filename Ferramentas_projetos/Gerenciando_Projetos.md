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
   - Iniciar um novo Projeto: `poetry new meu_projeto`
   - Instalar novos pacotes: `poetry add nome_do_pacote`
   - Mostrar os pacotes: `poetry show`
   - Instalar as dependências: `poetry install`
   - Gerar e atualizar o arquivo poetry.lock: `poetry lock`

2. Aplicando o `Poetry` em um projeto em andamento.
   - Iniciar o poetry: `poetry init`
   - Quando o comando poetry init for executado, o Poetry irá guiá-lo na criação do arquivo pyproject.toml para configurar o seu projeto.
  
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
