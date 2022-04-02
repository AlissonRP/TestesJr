## TestesJr

Pacote para testar as funções desenvolvidas nos exercícios do [curso de R](https://github.com/SigmaJunior/Curso_R) ministrado para a SigmaJr

### Como instalar

```r

devtools::install_github("https://github.com/AlissonRP/TestesJr")

```

### Como utilizar

Basta criar a função com o nome indicado nos exercícios e assegurar de seguir o que está indicado nas observações. 

Suponha que você tenha desenvolvido a função para o exerçicio 10, da seguinte maneira:


```r
diff_matrix <- function(A) {
  diags <- diagp <- 0
  for (i in 1:ncol(A)) {
    diags <- A[i, ncol(A) + 1 - i] + diags
    diagp <- A[i, i] + diagp
  }
  dif <- diags - diagp
  if (dif < 0) {
    -dif
  } else {
    dif
  }
}
```
Para testar se sua implementação "está ok", basta digitar `testesJr::teste(<function_name>)`, nesse caso `<function_name>` é `diff_matrix`.

Se a implementação da função está ok você vai receber a seguinte mensagem: `Test passed`, do contrário encontrará um erro e precisará pensar melhor sobre a função desenvolvida.
```r
testesJr::teste(diff_matrix)
#> Test passed 😸
```