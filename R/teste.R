#' teste
#'
#' Função para testar se o desenvolvimento dos exercicios propostos está ok
#'
#'
#' @param g     Função a ser testada


#' @examples
#'soma = function(...){
#'x = list(...)
#'s = 0
#'for(i in 1:length(x)) {
#'  s = s + x[[i]]
#'}
#'return(s)
#'}
#'
#'teste(soma)
#' @export
teste = function(g){
  if(as.character(substitute(g)) == 'soma'){
    test_that("ex soma", {
      expect_equal(g(1,2), sum(1,2))
      expect_equal(g(0,-50),sum(0,-50))
    })}
  else if (as.character(substitute(g)) == 'rand_walk'){
    x = mean(g(0,90, 500), g(0,90, 500),g(0,90, 500), g(0,90, 500), g(0,90, 500),
             g(0,90, 500))
    test_that("mean of stochastic", {
      expect_true(x<4.2 & x>-4.2)
    })

  }
}


