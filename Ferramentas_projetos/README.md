# Principais Ferramentas para Projetos

- [Principais Ferramentas para Projetos](#principais-ferramentas-para-projetos)
  - [Meus Desenvolvimentos](#meus-desenvolvimentos)
  - [Cookiecutter Data Science](#cookiecutter-data-science)
  - [Poetry](#poetry)
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

## Cookiecutter Data Science
   - Template popular para estruturar projetos de ciência de dados de forma organizada e reprodutível.
   - [Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/)
   - [Tutorial/refe](https://cookiecutter.readthedocs.io/en/2.0.2/)



## Poetry

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
