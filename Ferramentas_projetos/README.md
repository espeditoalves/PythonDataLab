# Principais Ferramentas para Projetos

- [Principais Ferramentas para Projetos](#principais-ferramentas-para-projetos)
  - [Poetry](#poetry)
    - [Executando Scripts Python com Poetry](#executando-scripts-python-com-poetry)
      - [Como executar um script Python:](#como-executar-um-script-python)
      - [Como executar verificações de estilo de código com Blue:](#como-executar-verificações-de-estilo-de-código-com-blue)
  - [Extensions for vscode](#extensions-for-vscode)
  - [Dependencies dev-Group](#dependencies-dev-group)
  - [MkDocs](#mkdocs)
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

### Executando Scripts Python com Poetry

Se você já configurou o seu projeto com o **Poetry**, você encontrará um arquivo chamado `pyproject.toml` no diretório principal do seu projeto. Este arquivo contém as configurações e dependências do seu projeto.

#### Como executar um script Python:

Para executar um arquivo Python dentro do ambiente virtual gerenciado pelo Poetry, você pode usar o seguinte comando:

```bash
poetry run python <nome_script.py>
```

#### Como executar verificações de estilo de código com Blue:

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
