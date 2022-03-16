# Exercícios Curso R



## 0
### 0.a
Sem rodar, qual você acha que vai ser a saída das seguintes operações?

 * `NA + NA`
 * `2 / NA`
 * `NA * 0`
 * `NA ^ 0`

### 0.b 
Examine o seguinte código:
```r
z <- 3
w <- if (z<3) 'tem certeza?' else 'certo?'
```
Existe algum problema nele?? como você o melhoraria?

### 0.c
O pacote `magrittr` possui um operador denominado pipe `%>%`, que coloca o argumento da esquerda (LHS) na função da direita (RHS).  
* Exemplo

```r
 mean(1:5)
```


```r
#Usando pipe
library(magrittr)
1:5 %>% mean()
```

Em outras palavras podemos escrever `g(w,z) `usando pipe `w  %>%  g(z)`.  
A partir da versão 4.1 a linguagem `R` já possui um pipe `|>` na versão base, ou seja sem necessidade da "utilização" de pacotes.

Baseando-se no exemplo anterior, reescreva os seguintes códigos usando pipe  
* `median(1:20)`
* `sum(rep(1,50))`
* `plot(mean(rnorm(50)))`
* `lapply(subset(data.frame(x = rnorm(50), y = rnorm(50)), y > 1), mean)`  

### 0.d
A seguinte função tem como entrada um número `x`, e retorna ele somado mais 2

```r
my_func = function(x){
  x + 2
}
```
Existe outra maneira  de criar uma  função  que possui `my_func` como caso **particular**?


## 1  
Crie uma função denominada **soma** que tem como entrada `n` argumentos e deve retornar a soma deles, note que a entrada **não** é um vetor.  
*Exemplo*
```r
soma(1,2,4) 
[1] 7

```

## 2
Nesse exercicio  você vai precisar implementar algumas regras do jogo  3 sp, esse game possui um modo em que o objetivo é capturar zonas e derrotar seus inimigos, a partida possui certa pontuação, existem três maneiras de uma partida ser finalizada:
1. Um time atinge 150 pontos
2. O tempo de duração da partida acaba
3. Se um time possuir 60 pontos e  60% pontos a mais que o seu time  adversário a partida é finalizada 

Implemente uma função  denominada `resultado` em que possui duas entradas, pontuação do time A e pontuação do time B e deve retornar a decisão do resultado da partida.    
* Exemplos

```r
resultado(120, 150)
"Time B Venceu"

resultado (150, 150)
"Empate"

resultado (80, 5)
"Time A Venceu"
```
**Obs**: A informação sobre a partida ser finalizada por tempo é meralmente curiosidade, **não** deve ser implementada na função, e note também que se nenhuma das três maneiras for satisfeita a partida **não** deve ser finalizada, portanto a função não deve ter saída alguma

## 3
Desenvolva uma função denominada `aff`  que recebe como argumento `N` e vai *printar* no console a concatenação de `A`  mais a repetição de `N` vezes de `H`, assim para `aff(4)` tem-se:
```r
[1] "AH"
[1] "AHH"
[1] "AHHH"
[1] "AHHHH"
```
## 4
Em probabilidade temos um processo estocástico bastante conhecido denominado *random walk*, que em sua forma mais básica é o valor que o processo assumiu no momento anterior  mais um ruído aleatório. Em outras palavras se denotarmos `t` como o instante e `y` o valor do processo temos a seguinte relação:
$$
y_t = y_{t-1}+r_t
$$
Assim o processo deve ter um ponto `t=1` arbitrário para iniciar. 
### 4.a
Seu objetivo nesse exercício é implementar a função `rand_walk` que tem como entrada $y_0$ que é o valor de início do processo e `N` que é a quantidade de passeios aleatórios gerados e `n` que é a quantidade de observações do processo.   
### 4.b
Calcule a média (**sem** utilizar a função `mean`) dos $y_{Nt}$ gerados no exercício anterior

**Dica**: Use `rnorm(n)` para geração dos `r_t`

## 5
Implemente uma função denominada `diferenca` que fornece a
diferença entre o cubo da soma e a soma dos quadrados dos primeiros `N` números naturais. Assim por exemplo temos que para N = 3:  

Cubo da soma = (1+2+3)³= 216  
Soma dos quadrados = 1²+2²+3² = 14  
Nesse caso a diferença é 202

* Dica : Após a inplementação da função tente a aprimorar  para que ela informe se a diferença é um número par


## 6

### 6.a
Escreva uma função denominada `total_na` que conta a quantidade de `NA` em um vetor.   
* Exemplo:
```r 
total_na(c(2,3,NA,4,NA))
#> [1] 2
```

### 6.b
Aprimore a função anterior para que ela receba `n` vetores e retorne a soma da quantidade de `NA` para cada um dos vetores de entrada.
* Exemplo
```r
total_na(c(2, 3, NA, 4, NA), c(NA, NA, NA, 1), c(NA, 2))
#> [1] 6

```




## 7
Desenvolva uma função que tem como entrada um vetor de tamanho `n` e  tem como saída a frequência de números positivos, negativos e 0 no vetor de entrada



## 8
Teoricamente sabemos que se y ~Normal $(\mu,\sigma)$ a seguinte probabilidade é igual por  $P(\mu-\sigma<y<\mu+\sigma)$. Desenvolva uma função que gera `K`  observações de uma distribuição normal e estima a probabilidade anterior.

* **Dica** : Use a função `rnorm` para a geração dos números

## 9
Dado um  DNA, retorne sua transcrição para RNA 



Os 4 nucleotideos encontrados no DNA são adenina (**A**), citosina (**C**),
guanina (**G**) e timina (**T**).

Os 4 nucleotideos encontrados no RNA are adenina (**A**), citosina (**C**),
guanina (**G**) e uracila (**U**).

Dado um DNA , sua transcrição para RNA é formada pela transcrição de cada dos seus nucleotideos sendo:

* `G` -> `C`
* `C` -> `G`
* `T` -> `A`
* `A` -> `U`

## 10
Escreva uma função denominada `min_max` que retorna o minimo e o máximo de um vetor em formato de `dataframe` ou `tibble`.
* Exemplo

```r
min_max(c(1,2,5,0.5))
#>   min max
#> 1 0.5   5
```
**Obs**: O mínimo e o máximo **não** deve ser encontrados usando as funções `min` e `max`

## 11
Escreva uma função  denominada `diff_matrix` que tem como entrada uma matriz quadrada e retorna o módulo da diferença da somas das diagonais.

* Exemplo  
```r
A = matrix(c(1,2,3,2,4,5,0,0,1), ncol = 3, byrow = T)
A
#>      [,1] [,2] [,3]
#> [1,]    1    2    3
#> [2,]    2    4    5
#> [3,]    0    0    1

#> diff_matrix(A)
#> [1] 1
```

