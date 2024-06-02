- [Operadores do MongoDB](#operadores-do-mongodb)
  - [Operadores de Comparação](#operadores-de-comparação)
    - [`$eq` : Igual a.](#eq--igual-a)
    - [`$ne`: Diferente de.](#ne-diferente-de)
    - [`$gt`: Maior que.](#gt-maior-que)
    - [`$gte`: Maior ou igual a.](#gte-maior-ou-igual-a)
    - [`$lt`: Menor que.](#lt-menor-que)
    - [`$lte`: Menor ou igual a.](#lte-menor-ou-igual-a)
    - [`$in`: Corresponde a qualquer valor em um array.](#in-corresponde-a-qualquer-valor-em-um-array)
    - [`$nin`: Não corresponde a nenhum valor em um array.](#nin-não-corresponde-a-nenhum-valor-em-um-array)
  - [Operadores Lógicos](#operadores-lógicos)
    - [`$and`: Todas as condições devem ser verdadeiras.](#and-todas-as-condições-devem-ser-verdadeiras)
    - [`$or`: Pelo menos uma das condições deve ser verdadeira.](#or-pelo-menos-uma-das-condições-deve-ser-verdadeira)
    - [`$not`: Inverte a condição.](#not-inverte-a-condição)
    - [`$nor`: Nenhuma das condições deve ser verdadeira.](#nor-nenhuma-das-condições-deve-ser-verdadeira)
  - [Operadores de Elementos](#operadores-de-elementos)
    - [`$exists`: Verifica se o campo existe.](#exists-verifica-se-o-campo-existe)
    - [`$type`: Verifica o tipo do campo.](#type-verifica-o-tipo-do-campo)
  - [Operadores de Avaliação](#operadores-de-avaliação)
    - [`$expr`: Permite usar expressões agregadas em consultas.](#expr-permite-usar-expressões-agregadas-em-consultas)
    - [`$jsonSchema`: Valida documentos com base em um esquema JSON.](#jsonschema-valida-documentos-com-base-em-um-esquema-json)
    - [`$mod`: Realiza a operação de módulo.](#mod-realiza-a-operação-de-módulo)
    - [`$regex`: Permite usar expressões regulares.](#regex-permite-usar-expressões-regulares)
    - [`$text`: Realiza uma pesquisa de texto.](#text-realiza-uma-pesquisa-de-texto)
    - [`$where`: Usa JavaScript para avaliar uma condição.](#where-usa-javascript-para-avaliar-uma-condição)
  - [Operadores de Matriz](#operadores-de-matriz)
    - [`$all`: Corresponde a todos os elementos de um array.](#all-corresponde-a-todos-os-elementos-de-um-array)
    - [`$size`](#size)
  - [Operadores de Atualização](#operadores-de-atualização)
    - [`$set`: Define o valor de um campo.](#set-define-o-valor-de-um-campo)
    - [`$inc`: Incrementa o valor de um campo.](#inc-incrementa-o-valor-de-um-campo)
    - [`$mul`: Multiplica o valor de um campo.](#mul-multiplica-o-valor-de-um-campo)
    - [`$rename`: Renomeia um campo.](#rename-renomeia-um-campo)
    - [`$push`: Adiciona um valor a um array.](#push-adiciona-um-valor-a-um-array)
    - [`$addToSet`: Adiciona um valor a um array se ele não existir.](#addtoset-adiciona-um-valor-a-um-array-se-ele-não-existir)
    - [`$pop`: Remove o primeiro ou último valor de um array.](#pop-remove-o-primeiro-ou-último-valor-de-um-array)
    - [`$pull`: Remove valores que correspondem a uma condição.](#pull-remove-valores-que-correspondem-a-uma-condição)
    - [`$pullAll`: Remove todos os valores especificados de um array.](#pullall-remove-todos-os-valores-especificados-de-um-array)
    - [`$each`: Usado com `$push` e `$addToSet` para adicionar múltiplos valores.](#each-usado-com-push-e-addtoset-para-adicionar-múltiplos-valores)

# Operadores do MongoDB

## Operadores de Comparação

Esses operadores são usados para comparar valores em consultas.

### `$eq` : Igual a.

```javascript
{ chave: { $eq: valor } }
```

### `$ne`: Diferente de.

```javascript
{ chave: { $ne: valor } }
```

### `$gt`: Maior que.

``` javascript
{ chave: { $gt: valor } }
```

### `$gte`: Maior ou igual a.

``` javascript
{ chave: { $gte: valor } }
```

### `$lt`: Menor que.

```javascript
{ chave: { $lt: valor } }
```

### `$lte`: Menor ou igual a.

``` javascript
{ chave: { $lte: valor } }
```

### `$in`: Corresponde a qualquer valor em um array.

``` javascript
{ chave: { $in: [valor1, valor2, ...] } }
```

### `$nin`: Não corresponde a nenhum valor em um array.

```javascript
{ chave: { $nin: [valor1, valor2, ...] } }
```

---

## Operadores Lógicos

Esses operadores são usados para combinar condições de consulta.

### `$and`: Todas as condições devem ser verdadeiras.

```javascript
{ $and: [ { chave1: valor1 }, { chave2: valor2 } ] }
```

### `$or`: Pelo menos uma das condições deve ser verdadeira.

``` javascript
{ $or: [ { chave1: valor1 }, { chave2: valor2 } ] }
```

### `$not`: Inverte a condição.

```javascript
{ chave: { $not: { $gt: valor } } }
```

### `$nor`: Nenhuma das condições deve ser verdadeira.

```javascript
{ $nor: [ { chave1: valor1 }, { chave2: valor2 } ] }
```

---

## Operadores de Elementos 

Esses operadores são usados para combinar com base na presença de campos ou tipo de dados.

### `$exists`: Verifica se o campo existe.

```javascript
{ chave: { $exists: true } }
```

### `$type`: Verifica o tipo do campo.

```javascript
{ chave: { $type: "tipo" } }
```

---

## Operadores de Avaliação

Esses operadores são usados para expressões e operações condicionais.

### `$expr`: Permite usar expressões agregadas em consultas.

```javascript
{ $expr: { $gt: ["$chave1", "$chave2"] } }
```

### `$jsonSchema`: Valida documentos com base em um esquema JSON.

```javascript
{ $jsonSchema: { propriedades: { chave: { type: "string" } } } }
```

### `$mod`: Realiza a operação de módulo.

``` javascript
{ chave: { $mod: [divisor, resto] } }
```

### `$regex`: Permite usar expressões regulares.

``` javascript
{ chave: { $regex: /padrão/ } }
```

### `$text`: Realiza uma pesquisa de texto.

```javascript
{ $text: { $search: "texto" } }
```

### `$where`: Usa JavaScript para avaliar uma condição.

```javascript
{ $where: "this.chave == valor" }
```

--- 

## Operadores de Matriz

Esses operadores são usados para consultar e atualizar arrays.

### `$all`: Corresponde a todos os elementos de um array.

```javascript
{ chave: { $all: [valor1, valor2, ...] } }
```	

### `$elemMatch`: Corresponde a elementos de um array que satisfazem uma condição.

```javascript
{ chave: { $elemMatch: { subChave: valor } } }
```
### `$size`
Corresponde ao tamanho do array.

```javascript
{ chave: { $size: tamanho } }
```

---

## Operadores de Atualização

Esses operadores são usados para atualizar documentos.

### `$set`: Define o valor de um campo.

```javascript
{ $set: { chave: valor } }
```	

### `$unset`: Remove um campo.

```javascript
{ $unset: { chave: "" } }
```

### `$inc`: Incrementa o valor de um campo.

```javascript
{ $inc: { chave: valor } }
```

### `$mul`: Multiplica o valor de um campo.

```javascript
{ $mul: { chave: valor } }
```

### `$rename`: Renomeia um campo.

```javascript
{ $rename: { chaveAntiga: "chaveNova" } }
```

### `$push`: Adiciona um valor a um array.

```javascript
{ $push: { chave: valor } }
```

### `$addToSet`: Adiciona um valor a um array se ele não existir.

```javascript
{ $addToSet: { chave: valor } }
```

### `$pop`: Remove o primeiro ou último valor de um array.

```javascript
{ $pop: { chave: 1 } } // Remove o último valor
{ $pop: { chave: -1 } } // Remove o primeiro valor
```

### `$pull`: Remove valores que correspondem a uma condição.

```javascript
{ $pull: { chave: valor } }
```

### `$pullAll`: Remove todos os valores especificados de um array.

```javascript
{ $pullAll: { chave: [valor1, valor2, ...] } }
```

### `$each`: Usado com `$push` e `$addToSet` para adicionar múltiplos valores.

```javascript
{ $push: { chave: { $each: [valor1, valor2, ...] } } }
```  
