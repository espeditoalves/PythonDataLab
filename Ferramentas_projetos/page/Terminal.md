- [Configurando Terminais](#configurando-terminais)
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
  - [Minha configuração padrao](#minha-configuração-padrao)
    - [1. Abrir o PowerShell:](#1-abrir-o-powershell)
    - [2. Editar o Arquivo de Perfil:](#2-editar-o-arquivo-de-perfil)
    - [3. Digite o seguinte comando e salve e reinicie o terminal](#3-digite-o-seguinte-comando-e-salve-e-reinicie-o-terminal)
  - [Terminal bash](#terminal-bash)

# Configurando Terminais

## Terminal Power Shell

O arquivo `PowerShell_profile.ps1` é um script de inicialização que é executado automaticamente sempre que você inicia uma nova sessão do PowerShell. Nele, você pode configurar diversas coisas para personalizar e otimizar seu ambiente de trabalho. 

## Configurações: `PowerShell_profile.ps1`
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

## Minha configuração padrao

**Passo a Passo**

### 1. Abrir o PowerShell:

Inicie o PowerShell ou PowerShell ISE ou Power shell do vscode.
Verificar o Caminho do Arquivo de Perfil:

Use o seguinte comando para verificar o caminho do seu arquivo de perfil:
```shell
echo $PROFILE
```

### 2. Editar o Arquivo de Perfil:

Abra o arquivo de perfil no editor de sua preferência (por exemplo, Notepad):
```shell
notepad $PROFILE
```

### 3. Digite o seguinte comando e salve e reinicie o terminal

```shell
# Função personalizada para exibir o prompt do PowerShell
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
# Mostrar uma mensagem de boas-vindas
Write-Host "Welcome to your custom PowerShell environment!" -ForegroundColor Green

# Customização das cores do terminal
$host.UI.RawUI.ForegroundColor = 'Yellow'  # Define a cor do texto do terminal como amarelo
$host.UI.RawUI.BackgroundColor = 'Black'   # Define a cor de fundo do terminal como preto

# Outras configurações e comandos podem ser adicionados abaixo

```
## Terminal bash
 
