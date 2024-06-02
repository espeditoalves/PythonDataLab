- [MongoDB](#mongodb)
  - [O que é MongoDB?](#o-que-é-mongodb)
  - [Principais Características](#principais-características)
  - [Usando a Plataforma Atlas](#usando-a-plataforma-atlas)
    - [Passos para Começar com MongoDB Atlas](#passos-para-começar-com-mongodb-atlas)
    - [Conexão com o VsCode](#conexão-com-o-vscode)
      - [Exemplo de Conexão com Python (usando `pymongo`):](#exemplo-de-conexão-com-python-usando-pymongo)
      - [MongoDB no Terminal do VS Code](#mongodb-no-terminal-do-vs-code)
    - [MongoDB Compass](#mongodb-compass)

# MongoDB

## O que é MongoDB?

MongoDB é um banco de dados NoSQL de código aberto, amplamente utilizado para armazenar dados em formato de documentos JSON (JavaScript Object Notation) flexíveis e escaláveis. Desenvolvido pela MongoDB Inc., o MongoDB é conhecido por sua capacidade de lidar com grandes volumes de dados e por sua alta performance em ambientes distribuídos.

## Principais Características

1. **Modelo de Dados Flexível**
MongoDB utiliza documentos BSON (uma versão binária do JSON), permitindo um modelo de dados flexível que pode evoluir conforme necessário sem a necessidade de uma estrutura rígida de tabelas e esquemas.

2. **Escalabilidade Horizontal**
Projetado para ser escalável horizontalmente, o MongoDB permite a adição de novos nós ao cluster para aumentar a capacidade de armazenamento e processamento, suportando grandes volumes de dados e altas taxas de transferência.

3. **Consultas e Indexação Poderosas**
MongoDB oferece uma linguagem de consulta rica, permitindo filtros complexos, projeções, junções e agregações. Além disso, suporta diversos tipos de índices, incluindo índices compostos, geoespaciais e de texto.

4. **Alta Disponibilidade**
Com suporte a replicação automática através do mecanismo de replica sets, o MongoDB garante alta disponibilidade e redundância de dados, permitindo recuperação rápida em caso de falhas.

5. **Desempenho e Armazenamento Otimizados**
O MongoDB oferece recursos como armazenamento baseado em memória (in-memory storage engine), compressão de dados e alocação eficiente de espaço, proporcionando alta performance em diversas cargas de trabalho.

## Usando a Plataforma Atlas

A plataforma MongoDB Atlas oferece uma maneira fácil e gratuita de hospedar seu banco de dados MongoDB online, ideal para estudos e pequenos desenvolvimentos. Com a Atlas, você pode configurar e gerenciar clusters MongoDB em questão de minutos, sem a necessidade de manutenção e administração de servidores.

### Passos para Começar com MongoDB Atlas

1. **Criar uma Conta:**
   - Visite o site [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) e crie uma conta gratuita.

2. **Configurar um Cluster:**
   - Após fazer login, clique em "Build a Cluster".
   - Escolha a configuração gratuita (M0 Sandbox) para começar sem custos.
   - Selecione a região do datacenter mais próxima de você para melhor desempenho.

3. **Configurar Usuários e Redes:**
   - Adicione um usuário de banco de dados com as permissões necessárias.
   - Configure as regras de rede para permitir conexões seguras ao seu cluster.

4. **Conectar ao Seu Cluster:**
   - Obtenha a string de conexão fornecida pelo Atlas.
   - Use essa string para conectar-se ao seu banco de dados usando drivers ou ferramentas como MongoDB Compass.

### Conexão com o VsCode

Para conectar a sua conta do atlas no Visual Studio Code (VS Code), você pode usar a extensão MongoDB for VS Code. 

1. Primeiro, instale a extensão a partir da Visual Studio Code Marketplace.

2. Após a instalação, clique no ícone da extensão MongoDB na barra lateral esquerda.

3. Em seguida, clique em "Connect" e selecione "New Connection".

4. Insira a string de conexão do seu cluster MongoDB Atlas ou do seu servidor MongoDB local. Você pode encontrar a string de conexão no MongoDB Atlas na seção de clusters.

5. Cole a string no campo apropriado na extensão e clique em "Connect".

6. Após a conexão, você poderá explorar seus bancos de dados e coleções diretamente no VS Code.

#### Exemplo de Conexão com Python (usando `pymongo`):

```python
from pymongo import MongoClient

# Substitua <username>, <password> e <cluster-url> pelas informações do seu cluster Atlas
client = MongoClient("mongodb+srv://<username>:<password>@<cluster-url>/test?retryWrites=true&w=majority")
db = client.nome_do_banco_de_dados

# Inserir um documento de exemplo
db.nome_da_colecao.insert_one({"nome": "Empresa X", "cnpj": "12.345.678/0001-99"})
```

#### MongoDB no Terminal do VS Code

Para usar o MongoDB no terminal do vscode:

1. Baixar o software [MongoDB Shell](https://www.mongodb.com/try/download/shell)
2. Ao fazer a instalação certifique-se de anotar o caminho de onde está instalando o software.
3. Copie o caminho de onde instalou o software
4. crie uma nova variavel de ambiente com o caminho do MongoDB Shell.
5. Reinicie o Vs Code, aperte F1 e digite MongoDB clica na opção:
MongoDB shell.

Esse procedimento deve permitir usar os comandos do MongoDB no terminal do vscode.

[video de referencia](https://www.youtube.com/watch?v=I89t29NkDtE)

### MongoDB Compass

O MongoDB Compass é uma interface gráfica que facilita a interação com bancos de dados MongoDB.
Também é possivel utilizar o terminal shell do MongoDB Compass para executar comandos.
Seguem os passos para baixar e usar o MongoDB Compass:

1. **Baixar o MongoDB Compass:**
   - Acesse o site oficial do [MongoDB Compass](https://www.mongodb.com/try/download/compass) e baixe a versão compatível com o seu sistema operacional.

2. **Instalar o MongoDB Compass:**
   - Após o download, siga as instruções do instalador para instalar o MongoDB Compass em seu computador.

3. **Abrir o MongoDB Compass:**
   - Após a instalação, abra o MongoDB Compass em seu sistema operacional.

4. **Conectar ao Banco de Dados:**
   - Na tela inicial do MongoDB Compass, clique em "Connect to MongoDB".
   - Insira a string de conexão do seu banco de dados MongoDB ou clique em "Fill in connection fields individually" para inserir manualmente as informações de conexão, como endereço do servidor, porta, nome do banco de dados, nome de usuário e senha, se aplicável.
   - Clique em "Connect" para estabelecer a conexão com o banco de dados.

5. **Explorar e Interagir com o Banco de Dados:**
   - Após a conexão bem-sucedida, você verá uma lista de bancos de dados e coleções no painel à esquerda.
   - Clique em um banco de dados para ver suas coleções e documentos.
   - Use as opções de consulta, inserção, atualização e remoção disponíveis na interface gráfica para interagir com o banco de dados.

6. **Explorar Recursos Adicionais (Opcional):**
   - Explore os recursos adicionais do MongoDB Compass, como visualização de esquema, criação de consultas e agregações, e configuração de índices.

7. **Desconectar-se do Banco de Dados:**
   - Quando terminar, clique no ícone de desconexão ou feche o MongoDB Compass para encerrar a conexão com o banco de dados.

Agora você está pronto para baixar, instalar e usar o MongoDB Compass para interagir com seus bancos de dados MongoDB de forma visual e intuitiva.