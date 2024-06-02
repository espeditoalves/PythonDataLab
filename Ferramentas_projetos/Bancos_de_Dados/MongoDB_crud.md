- [Comandos CRUD do MongoDB](#comandos-crud-do-mongodb)
  - [Create (Criar)](#create-criar)
    - [`insertOne`](#insertone)
    - [`insertMany`](#insertmany)
  - [Read (Ler)](#read-ler)
    - [`find`](#find)
    - [`findOne`](#findone)
  - [Update (Atualizar)](#update-atualizar)
    - [`updateOne`](#updateone)
    - [`updateMany`](#updatemany)
    - [`replaceOne`](#replaceone)
  - [Delete (Deletar)](#delete-deletar)
    - [`deleteOne`](#deleteone)
    - [`deleteMany`](#deletemany)
- [Operadores do MongoDB](#operadores-do-mongodb)

# Comandos CRUD do MongoDB

---

## Create (Criar)

Para inserir documentos em uma coleção, você pode usar os seguintes comandos:

### `insertOne`

Insere um único documento na coleção.

```javascript
db.collection.insertOne({
  chave1: "valor1",
  chave2: "valor2"
})
```

### `insertMany`

Insere múltiplos documentos na coleção.

```javascript
db.collection.insertMany([
  {
    chave1: "valor1",
    chave2: "valor2"
  },
  {
    chave1: "valor3",
    chave2: "valor4"
  }
])
```

---

## Read (Ler)

Para recuperar documentos de uma coleção, você pode usar os seguintes comandos:

### `find`

Encontra todos os documentos que correspondem aos critérios de consulta.

```javascript
db.collection.find({
  chave1: "valor1"
})
```

### `findOne`

Encontra o primeiro documento que corresponde aos critérios de consulta.

```javascript
db.collection.findOne({
  chave1: "valor1"
})
```

---

## Update (Atualizar)

Para modificar documentos existentes em uma coleção, você pode usar os seguintes comandos:

### `updateOne`

Atualiza um único documento que corresponde aos critérios de consulta.

```javascript
Copiar código
db.collection.updateOne(
  { chave1: "valor1" },
  { $set: { chave2: "novoValor" } }
)
```

### `updateMany`

Atualiza todos os documentos que correspondem aos critérios de consulta.

```javascript
Copiar código
db.collection.updateMany(
  { chave1: "valor1" },
  { $set: { chave2: "novoValor" } }
)
```

### `replaceOne`

Substitui um único documento que corresponde aos critérios de consulta.

```javascript
Copiar código
db.collection.replaceOne(
  { chave1: "valor1" },
  { chave1: "novoValor1", chave2: "novoValor2" }
)
```

---

## Delete (Deletar)

Para remover documentos de uma coleção, você pode usar os seguintes comandos:

### `deleteOne`

Remove um único documento que corresponde aos critérios de consulta.

```javascript
Copiar código
db.collection.deleteOne({
  chave1: "valor1"
})
```

### `deleteMany`

Remove todos os documentos que correspondem aos critérios de consulta.

```javascript
Copiar código
db.collection.deleteMany({
  chave1: "valor1"
})
```

# Operadores do MongoDB

1. Operadores de Comparação
2. Operadores Lógicos
3. Operadores de Elementos
4. Operadores de Avaliação
5. Operadores de Matriz