- [Entendendo e Configurações Terminais](#entendendo-e-configurações-terminais)
  - [Terminal Power Shell](#terminal-power-shell)
    - [Configurações: `PowerShell_profile.ps1`](#configurações-powershell_profileps1)
    - [1. Aliases](#1-aliases)
    - [2. Funções](#2-funções)
    - [3. Importar Módulos](#3-importar-módulos)
    - [4. Variáveis Personalizadas](#4-variáveis-personalizadas)
    - [5. Configurações de Prompt](#5-configurações-de-prompt)
    - [6. Customização de Aparência](#6-customização-de-aparência)
    - [7. Cmdlets de Inicialização](#7-cmdlets-de-inicialização)
    - [8. Funções e Cmdlets de Terceiros](#8-funções-e-cmdlets-de-terceiros)
    - [9. Trabalhando com Credenciais e Senhas](#9-trabalhando-com-credenciais-e-senhas)
    - [10. Conda no Power Shell](#10-conda-no-power-shell)
  - [Terminal bash](#terminal-bash)
  - [Minha configuração padrao](#minha-configuração-padrao)
    - [1. Configurar o `PATH` do Conda para o Power shell](#1-configurar-o-path-do-conda-para-o-power-shell)
    - [2. Abrir o PowerShell:](#2-abrir-o-powershell)
    - [3. Editar o Arquivo de Perfil:](#3-editar-o-arquivo-de-perfil)
    - [4. Digite o seguinte comando e salve e reinicie o terminal](#4-digite-o-seguinte-comando-e-salve-e-reinicie-o-terminal)
  - [Seeting.json padrão vscode](#seetingjson-padrão-vscode)

# Entendendo e Configurações Terminais

## Terminal Power Shell

O arquivo `PowerShell_profile.ps1` é um script de inicialização que é executado automaticamente sempre que você inicia uma nova sessão do PowerShell. Nele, você pode configurar diversas coisas para personalizar e otimizar seu ambiente de trabalho. 

### Configurações: `PowerShell_profile.ps1`
Aqui estão algumas das principais coisas que você pode configurar no seu perfil PowerShell:

### 1. Aliases
Você pode criar aliases para comandos que você usa frequentemente para torná-los mais curtos e fáceis de digitar.
```shell
# Alias para navegar até um diretório específico
Set-Alias gotoRepos 'cd C:\Users\SeuUsuario\Repositórios'

# Alias para um comando longo
Set-Alias gs 'git status'
```

### 2. Funções
### 3. Importar Módulos
### 4. Variáveis Personalizadas
### 5. Configurações de Prompt
Personalize o prompt do PowerShell para exibir informações úteis.
```shell
function Prompt {
    $user = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $hostname = [System.Net.Dns]::GetHostName()
    "$user@$hostname $(Get-Location) > "
}
```

### 6. Customização de Aparência
Você pode usar módulos como PSReadline para personalizar a aparência e o comportamento do seu prompt.

```shell
# Customizando cores do PSReadline
Set-PSReadlineOption -EditMode Emacs
Set-PSReadlineOption -HistorySearchCursorMovesToEnd

# Customizando as cores do prompt
$host.UI.RawUI.ForegroundColor = 'Yellow'
$host.UI.RawUI.BackgroundColor = 'Black'
```

### 7. Cmdlets de Inicialização
Execute comandos ou scripts específicos sempre que uma nova sessão do PowerShell for iniciada.

```shell
# Verificar atualizações para um script ou ferramenta
.\Check-For-Updates.ps1

# Mostrar uma mensagem de boas-vindas
Write-Host "Welcome to your custom PowerShell environment!" -ForegroundColor Green
```

### 8. Funções e Cmdlets de Terceiros
Você pode adicionar funções ou cmdlets úteis de outros scripts ou bibliotecas.

```shell
# Adicionando suporte a posh-git para integração com Git
if (Test-Path (Join-Path $PROFILE "..\..\Modules\posh-git\posh-git.psd1")) {
    Import-Module posh-git
}

# Adicionando suporte a oh-my-posh para customização avançada do prompt
if (Test-Path (Join-Path $PROFILE "..\..\Modules\oh-my-posh\oh-my-posh.psd1")) {
    Import-Module oh-my-posh
    Set-Theme Paradox
}
```

### 9. Trabalhando com Credenciais e Senhas
Você pode armazenar e gerenciar credenciais de maneira segura.

```shell
# Salvar uma credencial em um arquivo seguro
$cred = Get-Credential
$cred | Export-Clixml -Path "$env:USERPROFILE\mycredential.xml"

# Importar uma credencial de um arquivo seguro
$cred = Import-Clixml -Path "$env:USERPROFILE\mycredential.xml"
```


**Exibir Pasta Atual : `PowerShell_profile.ps1`**

No terminal shell use o comando `notepad $profile`.
Quando abrir o arquivo `notepad`, cole e salve o código abaixo no caminho e nome `C:\Users\esped\Documents\WindowsPowerShell\PowerShell_profile.ps1`.

```shell
function prompt {
    $path = (Get-Location).Path
    $folderName = $path.Split('\')[-1]
    $prompt = "$folderName> "
    Write-Host -NoNewLine -ForegroundColor Cyan $prompt
    return " "
}
```

**Descrição das funções acima**
```shell
function prompt {
    # Obtém o caminho completo do diretório atual
    $path = (Get-Location).Path
    
    # Divide o caminho usando '\' como delimitador e obtém o último segmento
    $folderName = $path.Split('\')[-1]
    
    # Define o prompt para exibir apenas o nome da pasta atual seguido por '>'
    $prompt = "$folderName> "
    
    # Escreve o prompt no terminal sem quebrar a linha, e com a cor ciano
    Write-Host -NoNewLine -ForegroundColor Cyan $prompt
    
    # Retorna um espaço em branco para que o cursor fique após o prompt personalizado
    return " "
}

```

### 10. Conda no Power Shell
**Adicionar o Anaconda ao `PATH`:**

Durante a instalação do Anaconda, você geralmente tem a opção de adicionar o Anaconda ao PATH do sistema. Isso permite que o PowerShell (ou qualquer outro terminal) reconheça os comandos do conda sem a necessidade de especificar o caminho completo para o executável.

Se o Anaconda não foi adicionado ao PATH durante a instalação, você pode fazer isso manualmente seguindo estas etapas:

> Abra o PowerShell como `administrador`.

Execute o seguinte comando para adicionar o diretório Scripts do Anaconda ao PATH do usuário atual:

```shell
[Environment]::SetEnvironmentVariable("PATH", "$env:PATH;C:\Users\SeuUsuario\anaconda3\Scripts", "User")
```
>Substitua C:\Users\SeuUsuario\anaconda3\Scripts pelo caminho onde o Anaconda está instalado no seu sistema.

> Substitua `SeuUsuario` por seu `usuario`


## Terminal bash

## Minha configuração padrao

**Passo a Passo**

### 1. Configurar o `PATH` do Conda para o Power shell
    
Seguir os passos do item [10. Conda no Power Shell](#10-conda-no-power-shell)

### 2. Abrir o PowerShell:

Inicie o PowerShell ou PowerShell ISE ou Power shell do vscode.
Verificar o Caminho do Arquivo de Perfil:

Use o seguinte comando para verificar o caminho do seu arquivo de perfil:
```shell
echo $PROFILE
```

### 3. Editar o Arquivo de Perfil:

Abra o arquivo de perfil no editor de sua preferência (por exemplo, Notepad):
```shell
notepad $PROFILE
```

### 4. Digite o seguinte comando e salve e reinicie o terminal

```shell
# Função personalizada para exibir o prompt do PowerShell
function prompt {
    # Obtém o caminho completo do diretório atual
    $path = (Get-Location).Path
    
    # Divide o caminho usando '\' como delimitador e obtém o último segmento
    $folderName = $path.Split('\')[-1]
    
    # Define o prompt padrão para exibir apenas o nome da pasta atual seguido por '>'
    $prompt = "$folderName> "
    
    # Verifica se um ambiente Conda está ativo
    $condaEnv = $env:CONDA_DEFAULT_ENV
    if ($condaEnv) {
        # Se um ambiente Conda estiver ativo, modifica o prompt para indicar isso
        $prompt = "($condaEnv) $prompt"
    }
    
    # Escreve o prompt no terminal sem quebrar a linha, e com a cor ciano
    Write-Host -NoNewLine -ForegroundColor Cyan $prompt
    
    # Retorna um espaço em branco para que o cursor fique após o prompt personalizado
    return " "
}

# Mostrar uma mensagem de boas-vindas
Write-Host "Welcome to your custom PowerShell environment!" -ForegroundColor Green

# Customização das cores do terminal
# $host.UI.RawUI.ForegroundColor = 'Yellow'  # Define a cor do texto do terminal como amarelo
# $host.UI.RawUI.BackgroundColor = 'Black'   # Define a cor de fundo do terminal como preto

# Outras configurações e comandos podem ser adicionados abaixo


```
## Seeting.json padrão vscode
```shell
{
    "workbench.colorTheme": "Dracula",
    "workbench.iconTheme": "vscode-icons",

    "terminal.integrated.defaultProfile.windows": "PowerShell",
    "terminal.integrated.profiles.windows": {
        "PowerShell": {
            "source": "PowerShell",
            "icon": "terminal-powershell"
        },
        "Anaconda PowerShell Prompt": {
            "path": "C:\\Users\\esped\\anaconda3\\Scripts\\conda.exe",
            "args": [],
            "icon": "terminal-powershell"
        }
    },
    "editor.fontFamily": "'Cascadia Code', Consolas, 'Courier New', monospace",
    "editor.fontLigatures": true,
    "editor.fontSize": 14,
    "powershell.integratedConsole.focusConsoleOnExecute": false,
    "powershell.integratedConsole.showOnStartup": true
}
```


 
