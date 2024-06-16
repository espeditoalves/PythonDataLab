- [Poetry](#poetry)
  - [1. Instalação e Configuração](#1-instalação-e-configuração)
    - [1. Um dos comandos para instalação](#1-um-dos-comandos-para-instalação)
    - [2. Lista as configurações](#2-lista-as-configurações)
    - [3. Este comando garante que as pastas venvs sejam criadas dentro do proprio diretório](#3-este-comando-garante-que-as-pastas-venvs-sejam-criadas-dentro-do-proprio-diretório)
    - [4. Especificando o Caminho Absoluto para o Python](#4-especificando-o-caminho-absoluto-para-o-python)
    - [5. Verificando as configurações](#5-verificando-as-configurações)
    - [6. Teste](#6-teste)
  - [2. Como usar](#2-como-usar)
    - [Executando Scripts Python com Poetry](#executando-scripts-python-com-poetry)
      - [Como executar um script Python:](#como-executar-um-script-python)

# Poetry

## 1. Instalação e Configuração

### 1. Um dos comandos para instalação

```shell
pip install poetry 
```
### 2. Lista as configurações
```shell
poetry config --list 
```
o que lhe dará algo semelhante a isto:
```shell
cache-dir = "/path/to/cache/directory"
virtualenvs.create = true
virtualenvs.in-project = null
virtualenvs.options.always-copy = true
virtualenvs.options.no-pip = false
virtualenvs.options.no-setuptools = false
virtualenvs.options.system-site-packages = false
virtualenvs.path = "{cache-dir}/virtualenvs"  # /path/to/cache/directory/virtualenvs
virtualenvs.prefer-active-python = false
virtualenvs.prompt = "{project_name}-py{python_version}"
```

### 3. Este comando garante que as pastas venvs sejam criadas dentro do proprio diretório
```shell
poetry config virtualenvs.in-project true
```

### 4. Especificando o Caminho Absoluto para o Python

Identificar o Caminho Absoluto do python.exe:

**Python padrão da Microsoft:** C:\Python39\python.exe

**Python do Anaconda:** C:\Users\username\Anaconda3\python.exe

Certifique-se de ter o caminho exato do python.exe que deseja configurar.


```shell
poetry env use C:\Users\SeuUsuario\anaconda3\python.exe
```
### 5. Verificando as configurações
```shell
poetry env info
```

É esperado esse tipo de configuração

```bash
(base) teste_projetos>  poetry env info

Virtualenv
Python:         3.11.7
Implementation: CPython
Path:           C:\Users\esped\Documents\Respositorio_git\teste_projetos\.venv
Executable:     C:\Users\esped\Documents\Respositorio_git\teste_projetos\.venv\Scripts\python.exe
Valid:          True

Base
Platform:   win32
OS:         nt
Python:     3.11.7
Path:       C:\Users\esped\anaconda3
Executable: C:\Users\esped\anaconda3\python.exe
(base) teste_projetos>
```
### 6. Teste

Use o Comando
```shell
poetry show
```
E verifique se a pasta `.venv` foi criada no mesmo diretório do seu projeto

## 2. Como usar

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
   - Caso não tenha o poetry instalado e configurado, faça os passos do tópico 1.
   - Utilize o comando `poetry install`, e as dependencias do `pyproject.toml` serão instaladas.

### Executando Scripts Python com Poetry

Se você já configurou o seu projeto com o **Poetry**, você encontrará um arquivo chamado `pyproject.toml` no diretório principal do seu projeto. Este arquivo contém as configurações e dependências do seu projeto.

#### Como executar um script Python:

```bash
# Ative o Ambiente do Poetry
poetry shell
# Execute o arquivo
python <nome_script.py>
```

Para executar um arquivo Python sem ativar o shell do ambiente virtual gerenciado pelo Poetry, você pode usar o seguinte comando:

```bash
poetry run python <nome_script.py>
```

Se utilizar o comando `python <nome_script.py>`, sem ativar o ambiente virtual do poetry o arquivo será executado por meia do python padrão do computador.