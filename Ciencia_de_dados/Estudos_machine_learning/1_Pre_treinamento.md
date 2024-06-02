- [Análise Exploratória de Dados (EDA)](#análise-exploratória-de-dados-eda)
- [Pré-processamento](#pré-processamento)
  - [Limpeza](#limpeza)
  - [Normalização, Padronização e Transformações](#normalização-padronização-e-transformações)
    - [Normalização (Normalization or Scaling)](#normalização-normalization-or-scaling)
    - [Padronização (Standardization)](#padronização-standardization)
    - [Transformações (Transformations)](#transformações-transformations)
  - [Referências](#referências)

# Análise Exploratória de Dados (EDA)

Explorar os dados para entender suas características, distribuições e relações.

---

# Pré-processamento

## Limpeza

Em breve

## Normalização, Padronização e Transformações

Uma atividade muito rotineira de um cientista de dados dentro do pré-processamento, é a transformação de seus dados numéricos com o objetivo de que todos eles fiquem com a mesma ordem de grandeza. Isso evita que o modelo fique enviesado, dando maior peso para as variáveis de maior grandeza.

![Scaling x Standardizations](image/Standart_normaliz.webp)

### Normalização (Normalization or Scaling)

A normalização coloca os dados dentro do intervalo de 0 a 1 (ou -1 a 1 se houver valores negativos) sem distorcer as diferenças nos intervalos de valores. Ele não remove outliers (valores extremos), mas garante que todos os pontos de dados estejam em uma escala comum.

Normalizar os dados usando Min-Max:

$$
x' = \frac{x - \min(x)}{\max(x) - \min(x)}
$$

Se a distribuição não é Gaussiana ou o desvio padrão é muito pequeno, normalizar os dados é uma escolha a ser tomada.

### Padronização (Standardization)

Já a padronização irá transformar as variáveis fazendo com que elas resultem em uma média igual a 0 e desvio padrão igual a 1.
Padronizar os dados normalmente é feita usando a fórmula z-score:
$$
z = \frac{x - \mu}{\sigma}
$$

### Transformações (Transformations)

Estes envolvem a aplicação de funções logarítmicas (como o logaritmo natural) aos dados. Eles são úteis para lidar com distribuições assimétricas e comprimir grandes faixas de valores.
[Leia mais: Transformacoes](page/Transformacoes.md)

## Referências

- [Normalizar ou Padronizar as Variáveis?](https://medium.com/data-hackers/normalizar-ou-padronizar-as-vari%C3%A1veis-3b619876ccc9)
- [Normalização x Padronização: Qual a Diferença?](https://medium.com/@ingoreichertjr/normaliza%C3%A7%C3%A3o-x-padroniza%C3%A7%C3%A3o-qual-a-diferen%C3%A7a-fa14352df501)
- [O escalonamento dos dados: Normalização ou Padronização?](https://www.linkedin.com/pulse/o-escalonamento-dos-dados-normaliza%C3%A7%C3%A3o-ou-gabriel-b-marques/)