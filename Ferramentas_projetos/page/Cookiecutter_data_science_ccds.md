# Configuração do Projeto com Cookiecutter Data Science (ccds)

Durante a configuração do seu projeto usando o Cookiecutter Data Science (CCDS), você pode seguir os passos abaixo:

1. **Re-download do Template**: Se você já baixou o template do Cookiecutter Data Science anteriormente, ele perguntará se deseja deletar e baixar novamente:
```sh
You've downloaded C:\Users\esped.cookiecutters\cookiecutter-data-science before. Is it okay to delete and re-download it?
[y/n] (y): y
```

2. **Nome do Projeto**: Defina o nome do seu projeto:
```sh
project_name (project_name): 
```
3. **Nome do Repositório**: Escolha um nome para o repositório do projeto:
```sh
repo_name (meu_primeiro_bagulho):
```

5. **Nome do Módulo**: Defina o nome do módulo Python principal do projeto:
```sh
module_name (meu_primeiro_bagulho):
```

6. **Nome do Autor**: Informe o seu nome ou o nome da sua organização, empresa ou equipe:
```sh
author_name (Your name (or your organization/company/team)):
```

7. **Descrição do Projeto**: Forneça uma breve descrição do projeto:

```sh
description (A short description of the project.):
```

8. **Versão do Python**: Especifique a versão do Python que será utilizada no projeto (padrão é 3.10):
```sh
python_version_number (3.10):
```

9. **Armazenamento de Datasets**: Escolha onde os conjuntos de dados serão armazenados:

```sh
Select dataset_storage
1 - none
2 - azure
3 - s3
4 - gcs
Choose from [1/2/3/4] (1): 1
```

10.   **Gerenciador de Ambiente**: Selecione o gerenciador de ambiente que você pretende utilizar:
```sh
Select environment_manager
    1 - virtualenv
    2 - conda
    3 - pipenv
    4 - none
Choose from [1/2/3/4] (1): 4
```

11.   **Arquivo de Dependências**: Escolha o tipo de arquivo de dependências que será utilizado:
 ```sh
 Select dependency_file
     1 - requirements.txt
     2 - environment.yml
     3 - Pipfile
     Choose from [1/2/3] (1): 3
 ```

1.   **Pacotes PyData**: Decida se deseja incluir pacotes PyData padrão no projeto:
 ```sh
 Select pydata_packages
     1 - none
     2 - basic
     Choose from [1/2] (1): 1
 ```

1.   **Licença de Código Aberto**: Escolha a licença de código aberto para o seu projeto:
 ```sh
 Select open_source_license
     1 - No license file
     2 - MIT
     3 - BSD-3-Clause
     Choose from [1/2/3] (1):
 ```

1.   **Documentação**: Escolha se deseja incluir documentação:
 ```sh
 Select docs
     1 - mkdocs
     2 - none
     Choose from [1/2] (1):
 ```

1.   **Incluir Estrutura de Código**: Decida se deseja incluir uma estrutura inicial de código:
 ```sh
 Select include_code_scaffold
     1 - Yes
     2 - No
     Choose from [1/2] (1):
 ```

Essas configurações ajudarão a personalizar seu projeto com base nas suas necessidades específicas de desenvolvimento e colaboração. Certifique-se de revisar e ajustar cada opção conforme necessário para garantir que o projeto seja configurado de acordo com suas preferências e requisitos.
Este texto abrange todos os passos do processo de configuração inicial usando o **Cookiecutter Data Science**, explicando cada opção disponível para criar um projeto de ciência de dados personalizado de acordo com suas especificações.