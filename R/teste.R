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
  else if(as.character(substitute(g)) == 'diff_matrix'){
    A = matrix(c(1,2,3,2,4,5,0,0,1), ncol =3, byrow = T)
    B = matrix(c(1, 2, 3, 2,
                 4, 5, 0, 0,
                 1, 1, 2, 3,
                 2, 3, 8, 2), ncol = 4, byrow = T)
    test_that("diff matrix", {
      expect_equal(g(A), testesJr:::diff_matrix(A))
      expect_equal(g(B),testesJr:::diff_matrix(A))
    })}
  else if(as.character(substitute(g)) == 'total_na'){
    test_that("diff matrix", {
      expect_equal(g(c(2, 3, NA, 4, NA), c(NA, NA, NA, 1), c(NA, 2)),6)
      expect_equal(g(c(NA),c(NA)),2)
      expect_equal(g(c(1),c(2)),0)
    })}
  else if(as.character(substitute(g)) == 'conta'){
    test_that("diff matrix", {
      expect_equal(as.numeric(g(c(1,2,3))['Positivos']),1)
      expect_equal(as.numeric(g(c(1,2,3))['Zeros']), 0)
      expect_equal(as.numeric(g(c(1,0,3,-4))['Zeros']), 1/4)
      expect_equal(as.numeric(g(c(1,0,3,-4))['Negativos']), 1/4)
      expect_equal(round(as.numeric(g(c(-1,2,0,-4,5,6,10))['Negativos']),2), round(2/7,2))

    })}
  else if (as.character(substitute(g)) == 'prob'){
    test_that("mean of stochastic", {
      expect_true(g(5000)>0.97)
    })

  }

}




