- [Guia Básico sobre Docker](#guia-básico-sobre-docker)
  - [O que é Docker?](#o-que-é-docker)
  - [Principais Conceitos](#principais-conceitos)
    - [Imagem Docker](#imagem-docker)
    - [Contêiner Docker](#contêiner-docker)
    - [Dockerfile](#dockerfile)
    - [Docker Compose](#docker-compose)
    - [Volumes (bind mounts)](#volumes-bind-mounts)
  - [Comandos Essenciais](#comandos-essenciais)
    - [Executar um Contêiner](#executar-um-contêiner)
- [EXEMPLOS](#exemplos)
  - [Montando um VOLUME](#montando-um-volume)
  - [Resumo](#resumo)
- [Poetry no Docker](#poetry-no-docker)
    - [Verificar os Kernels Disponíveis:](#verificar-os-kernels-disponíveis)
    - [Instalar o Kernel do Poetry:](#instalar-o-kernel-do-poetry)
    - [Adicionar o Kernel do Poetry ao Jupyter:](#adicionar-o-kernel-do-poetry-ao-jupyter)

# Guia Básico sobre Docker

## O que é Docker?
Docker é uma plataforma que permite criar, implantar e executar aplicações em contêineres. Contêineres são leves, portáteis e consistentes, proporcionando uma forma eficiente de empacotar e distribuir aplicativos junto com todas as suas dependências.

## Principais Conceitos

### Imagem Docker
Uma imagem Docker é um pacote leve, independente e executável que inclui tudo o necessário para rodar um pedaço de software: código, runtime, bibliotecas, variáveis de ambiente e arquivos de configuração.

### Contêiner Docker
Um contêiner é uma instância de uma imagem Docker em execução. Ele é isolado do sistema host e de outros contêineres, mas pode compartilhar recursos do sistema, como arquivos e rede.

### Dockerfile
Um Dockerfile é um script de texto contendo instruções para construir uma imagem Docker. Cada linha no Dockerfile representa um comando que será executado para montar a imagem final.

### Docker Compose
Docker Compose é uma ferramenta para definir e gerenciar aplicações Docker multi-contêiner. Usando um arquivo YAML, você pode especificar os serviços, redes e volumes necessários para a aplicação.

### Volumes (bind mounts)
Volumes (bind mounts) são usados para persistir dados e compartilhar informações entre o host e os contêineres ou entre múltiplos contêineres. Eles permitem que os dados sobrevivam ao ciclo de vida dos contêineres.

## Comandos Essenciais

### Executar um Contêiner
```sh
docker run -it <image> /bin/bash
```
Este comando cria e executa um contêiner a partir de uma imagem especificada, abrindo um terminal interativo.

# EXEMPLOS

## Montando um VOLUME

```bash
comando docker run -p 8888:8888 -v C:\Users\esped\Documents\Respositorio_git\Repositorio_projetos\image_spark_project:/home/jovyan/work jupyter/pyspark-notebook:spark-3.3.2
```

Este comando criou e executou um **contêiner Docker** utilizando uma imagem específica para Jupyter notebooks com suporte para **PySpark**. Além disso, **montou um volume** que mapeia um diretório no seu sistema host para um diretório dentro do contêiner, permitindo que você acesse e trabalhe com os arquivos do host diretamente no contêiner. 

>Vamos analisar seu comando em detalhes:

Análise do Comando
* **docker run:** Este é o comando base para criar e executar um contêiner a partir de uma imagem Docker.

* **-p 8888:8888:** Este parâmetro mapeia a porta 8888 do seu host para a porta 8888 do contêiner. Isso é necessário porque o Jupyter Notebook, por padrão, roda na porta 8888. Com isso, você pode acessar o Jupyter Notebook no seu navegador através do endereço http://localhost:8888.

* -v C:\Users\esped\Documents\Respositorio_git\Repositorio_projetos\image_spark_project:/home/jovyan/work: Este parâmetro monta um volume:

    * C:\Users\esped\Documents\Respositorio_git\Repositorio_projetos\image_spark_project: É o caminho do diretório no seu host.
    * /home/jovyan/work: É o caminho do diretório dentro do contêiner onde o volume será montado. **jovyan é o nome do usuário padrão** usado nas imagens de Jupyter Notebook baseadas no Docker Stacks.
    * 
Montar este volume significa que **qualquer alteração** feita no diretório do host `C:\Users\esped\Documents\Respositorio_git\Repositorio_projetos\image_spark_project` **será refletida no diretório** `/home/jovyan/work` **dentro do contêiner e vice-versa**. Isso permite que você trabalhe com seus arquivos diretamente no contêiner enquanto mantém os arquivos no host.

* jupyter/pyspark-notebook:spark-3.3.2: Esta é a imagem Docker que você está usando. A imagem jupyter/pyspark-notebook é uma imagem pré-configurada para Jupyter Notebooks com PySpark. A tag spark-3.3.2 especifica a versão do PySpark incluída na imagem.


## Resumo

Com este comando, você:

Iniciou um contêiner com Jupyter Notebook e PySpark.
Montou um volume que permite acesso direto aos arquivos do host no contêiner.
Configurou o contêiner para que o Jupyter Notebook esteja acessível através do seu navegador.

# Poetry no Docker

Para usar o `**kernel do Poetry**` no **Jupyter Notebook**, você precisa configurar um kernel específico que aponte para o ambiente virtual do Poetry onde estão instaladas as dependências do seu projeto. 

Aqui estão os passos para configurar e usar o kernel do Poetry no Jupyter Notebook:

### Verificar os Kernels Disponíveis:

Primeiro, verifique quais kernels estão disponíveis atualmente no seu ambiente do Jupyter Notebook. Você pode fazer isso com o comando:

```bash
jupyter kernelspec list
```

Isso listará todos os kernels instalados e seus locais no seu sistema.

### Instalar o Kernel do Poetry:

Se o kernel do Poetry não estiver listado, você precisará instalá-lo manualmente. Certifique-se de estar no ambiente virtual do Poetry e execute o seguinte comando para instalar o kernel do Poetry:

```bash
poetry add ipykernel
```

### Adicionar o Kernel do Poetry ao Jupyter:

Após instalar o ipykernel no ambiente virtual do Poetry, você pode adicionar o kernel do Poetry ao Jupyter Notebook com o seguinte comando:

```bash
python -m ipykernel install --user --name=image-spark-project-py3.10 --display-name "Python (Poetry)"
```

* `--name=image-spark-project-py3.10`: Especifique o nome do ambiente virtual do Poetry que você deseja usar como base para o kernel.
* `--display-name "Python (Poetry)"`: Especifique o nome que deseja que apareça na lista de kernels do Jupyter Notebook.
Selecionar o Kernel do Poetry no Jupyter Notebook:
Depois de adicionar o kernel, você pode selecioná-lo ao criar um novo notebook ou alterar o kernel de um notebook existente:

Crie um novo notebook ou abra um notebook existente.
Vá para o menu **"Kernel"** e selecione **"Change Kernel"**.
Selecione **"Python (Poetry)"** ou o nome que você especificou ao adicionar o kernel do Poetry.

Agora, o notebook estará utilizando o kernel associado ao ambiente virtual do Poetry, garantindo que todas as dependências do seu projeto sejam utilizadas corretamente.

Esses passos devem ajudar a configurar e usar o kernel do Poetry no Jupyter Notebook dentro do seu ambiente Docker, garantindo que você esteja trabalhando com as dependências corretas do seu projeto.