- [Técnicas par avaliação de modelos](#técnicas-par-avaliação-de-modelos)
  - [Learning Curve](#learning-curve)
    - [Interpretação das Curvas de Aprendizado](#interpretação-das-curvas-de-aprendizado)
    - [Exemplos de Uso de Curvas de Aprendizado](#exemplos-de-uso-de-curvas-de-aprendizado)
    - [Exemplos Visuais](#exemplos-visuais)
  - [Referências](#referências)

# Técnicas par avaliação de modelos

## Learning Curve

Em ciência de dados, uma "learning curve" (curva de aprendizado) é uma representação gráfica da relação entre o desempenho de um modelo de machine learning e a quantidade de dados de treinamento ou o tempo de treinamento. As curvas de aprendizado são usadas para diagnosticar problemas no modelo e entender melhor seu comportamento durante o treinamento.

Existem dois tipos principais de curvas de aprendizado:

1. **Curva de Aprendizado de Dados de Treinamento vs. Desempenho**:
   - Esta curva mostra como a precisão ou o erro do modelo muda à medida que aumenta a quantidade de dados de treinamento.
   - Normalmente, duas curvas são plotadas:
     - **Curva de Treinamento**: Desempenho do modelo no conjunto de dados de treinamento.
     - **Curva de Validação**: Desempenho do modelo no conjunto de dados de validação.
   - A comparação dessas duas curvas pode revelar problemas de **overfitting** (quando o modelo performa muito bem nos dados de treinamento, mas mal nos dados de validação) ou **underfitting** (quando o modelo não performa bem em ambos os conjuntos de dados).

2. **Curva de Aprendizado de Tempo vs. Desempenho**:
   - Esta curva mostra como a precisão ou o erro do modelo muda à medida que o tempo de treinamento aumenta.
   - É útil para entender a eficiência do modelo em termos de tempo de treinamento e identificar o ponto em que o modelo começa a saturar, ou seja, quando aumentar o tempo de treinamento não resulta em melhorias significativas no desempenho.

### Interpretação das Curvas de Aprendizado

- **Underfitting**:
  - Caracterizado por baixo desempenho em ambos os conjuntos de treinamento e validação.
  - As curvas de treinamento e validação estarão próximas uma da outra, mas ambas mostrarão um erro alto ou baixa precisão.

- **Overfitting**:
  - Caracterizado por bom desempenho no conjunto de treinamento, mas desempenho significativamente pior no conjunto de validação.
  - A curva de treinamento mostrará um erro baixo (alta precisão), enquanto a curva de validação mostrará um erro alto (baixa precisão).

- **Modelo Bem Balanceado**:
  - Caracterizado por bom desempenho em ambos os conjuntos de treinamento e validação.
  - As curvas de treinamento e validação estarão próximas uma da outra e mostrarão baixo erro ou alta precisão.

### Exemplos de Uso de Curvas de Aprendizado

- **Ajustar Hiperparâmetros**: Curvas de aprendizado podem ajudar a ajustar hiperparâmetros do modelo, como a profundidade de uma árvore de decisão ou o número de neurônios em uma rede neural.
- **Determinar a Quantidade de Dados Necessária**: Elas podem indicar se adicionar mais dados de treinamento provavelmente resultará em melhorias de desempenho.
- **Identificar Problemas de Modelagem**: Podem revelar se o modelo está sofrendo de overfitting ou underfitting, permitindo ajustes apropriados.

### Exemplos Visuais

![Overfting](image/learning_curve_overfiting.png)

![Curvas de Aprendizado](image/learning_curve.png)


## Referências

-[Boa Leitura](https://stats.stackexchange.com/questions/220827/how-to-know-if-a-learning-curve-from-svm-model-suffers-from-bias-or-variance)
