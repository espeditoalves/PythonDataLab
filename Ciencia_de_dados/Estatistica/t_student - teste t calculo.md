
# Teste T Pareado: Cálculo Manual

Este documento explica como realizar um teste t pareado manualmente para determinar se há uma diferença significativa entre as médias de duas amostras emparelhadas. Neste exemplo, utilizamos duas colunas de dados representando métricas de KS scores.

## Dados

Vamos utilizar os seguintes dados:

- `ks.scores1`: [0.583983, 0.576596, 0.556730, 0.595138, 0.584564]
- `ks.scores2`: [0.490242, 0.551584, 0.514383, 0.535587, 0.546064]

## Passo a Passo para o Teste T Pareado Manualmente

### 1. Calcular as Diferenças

Primeiro, calculamos a diferença entre as duas colunas para cada par de valores:

$$
\text{Diferença} = \text{ks.scores1} - \text{ks.scores2}
$$

$$
\begin{align*}
0.583983 - 0.490242 &= 0.093741 \\
0.576596 - 0.551584 &= 0.025012 \\
0.556730 - 0.514383 &= 0.042347 \\
0.595138 - 0.535587 &= 0.059551 \\
0.584564 - 0.546064 &= 0.038500 \\
\end{align*}
$$

Então, as diferenças são:

$$
\text{Diferenças} = [0.093741, 0.025012, 0.042347, 0.059551, 0.038500]
$$

### 2. Calcular a Média das Diferenças

Agora, calculamos a média das diferenças ($\bar{d}$):

$$
\bar{d} = \frac{1}{n} \sum_{i=1}^{n} d_i = \frac{0.093741 + 0.025012 + 0.042347 + 0.059551 + 0.038500}{5}
$$

$$
\bar{d} = \frac{0.259151}{5} = 0.0518302
$$

### 3. Calcular o Desvio Padrão das Diferenças

Para calcular o desvio padrão ($s_d$), usamos a fórmula do desvio padrão de uma amostra:

$$
s_d = \sqrt{\frac{\sum_{i=1}^{n} (d_i - \bar{d})^2}{n-1}}
$$

$$
\begin{align*}
(d_1 - \bar{d})^2 &= (0.093741 - 0.0518302)^2 = 0.001749 \\
(d_2 - \bar{d})^2 &= (0.025012 - 0.0518302)^2 = 0.000712 \\
(d_3 - \bar{d})^2 &= (0.042347 - 0.0518302)^2 = 0.000090 \\
(d_4 - \bar{d})^2 &= (0.059551 - 0.0518302)^2 = 0.000059 \\
(d_5 - \bar{d})^2 &= (0.038500 - 0.0518302)^2 = 0.000177 \\
\end{align*}
$$

Agora, somamos essas diferenças quadradas e dividimos pelo número de pares menos um:

$$
\sum (d_i - \bar{d})^2 = 0.001749 + 0.000712 + 0.000090 + 0.000059 + 0.000177 = 0.002787
$$

$$
s_d = \sqrt{\frac{0.002787}{5-1}} = \sqrt{\frac{0.002787}{4}} = \sqrt{0.00069675} = 0.026396
$$

### 4. Calcular a Estatística t

A estatística t é calculada usando a média das diferenças, o desvio padrão das diferenças e o número de pares:

$$
t = \frac{\bar{d}}{s_d / \sqrt{n}}
$$

Onde:
- ($\bar{d}$) é a média das diferenças.
- ($s_d$) é o desvio padrão das diferenças.
- ($n$) é o número de pares.

Substituindo os valores:

$$
t = \frac{0.0518302}{0.026396 / \sqrt{5}} = \frac{0.0518302}{0.011804} = 4.389
$$

### 5. Determinar o Valor p

Para determinar o valor p, utilizamos a tabela de distribuição t de Student. Com $n - 1 = 4$ graus de liberdade e uma estatística $t$ de $4.389$, vamos buscar o valor p correspondente.

- Para $t = 4.389$ e $df = 4$, o valor p é geralmente menor que $0.05$, indicando que existe uma diferença significativa.

### Conclusão

- **Valor de t calculado:** 4.389
- **Graus de liberdade (df):** 4
- **Valor p:** Aproximadamente $0.0053$ (menor que $0.05$)

Com base nos cálculos, **`podemos rejeitar a hipótese nula`** e concluir que existe uma diferença significativa entre as médias das métricas `ks.scores1` e `ks.scores2`.

### Resumo do Teste T Pareado:

- **Hipótese Nula (H0):** A diferença entre as médias das métricas é zero.
- **Hipótese Alternativa (H1):** A diferença entre as médias das métricas não é zero.
- **Resultado:** **`Rejeitamos a hipótese nula`**. Existe uma diferença significativa entre as médias das métricas.

---

Calculo usando Python: []()

