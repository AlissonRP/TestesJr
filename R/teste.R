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
#'
#' @export
teste = function(g){
  if(as.character(substitute(g)) == 'soma'){
    testthat::test_that("ex soma", {
      testthat::expect_equal(g(1,2), sum(1,2))
      testthat::expect_equal(g(0,-50),sum(0,-50))
    })}
  else if (as.character(substitute(g)) == 'rand_walk'){
    x = mean(g(0,90, 500), g(0,90, 500),g(0,90, 500), g(0,90, 500), g(0,90, 500),
             g(0,90, 500))
    testthat::test_that("mean of stochastic", {
      testthat::expect_true(x<4.2 & x>-4.2)
    })

  }
  else if (as.character(substitute(g)) == 'resultado'){
    testthat::test_that("mean of stochastic", {
      testthat::expect_equal(g(A =35, B = 100),resultado(35,100))
      testthat::expect_equal(g(70, 5),resultado(70,5))
      testthat::expect_equal(g(150, 90),resultado(150,90))
      testthat::expect_equal(g(42, 57),resultado(42,57))
    })

  }
  else if(as.character(substitute(g)) == 'diff_matrix'){
    A = matrix(c(1,2,3,2,4,5,0,0,1), ncol =3, byrow = T)
    B = matrix(c(1, 2, 3, 2,
                 4, 5, 0, 0,
                 1, 1, 2, 3,
                 2, 3, 8, 2), ncol = 4, byrow = T)
    testthat::test_that("diff matrix", {
      testthat::expect_equal(g(A), diff_matrix(A))
      testthat::expect_equal(g(B),diff_matrix(B))
    })}
  else if(as.character(substitute(g)) == 'total_na'){
    testthat::test_that("diff matrix", {
      testthat::expect_equal(g(c(2, 3, NA, 4, NA), c(NA, NA, NA, 1), c(NA, 2)),6)
      testthat::expect_equal(g(c(NA),c(NA)),2)
      testthat::expect_equal(g(c(1),c(2)),0)
    })}
  else if(as.character(substitute(g)) == 'conta'){
    testthat::test_that("diff matrix", {
      testthat::expect_equal(as.numeric(g(c(1,2,3))['Positivos']),1)
      testthat::expect_equal(as.numeric(g(c(1,2,3))['Zeros']), 0)
      testthat::expect_equal(as.numeric(g(c(1,0,3,-4))['Zeros']), 1/4)
      testthat::expect_equal(as.numeric(g(c(1,0,3,-4))['Negativos']), 1/4)
      testthat::expect_equal(round(as.numeric(g(c(-1,2,0,-4,5,6,10))['Negativos']),2), round(2/7,2))

    })}
  else if (as.character(substitute(g)) == 'prob'){
    testthat::test_that("mean of stochastic", {
      testthat::expect_true(g(5000)>0.97)
    })

}
  else if (as.character(substitute(g)) == 'min_max'){
    testthat::test_that("mean of stochastic", {
      testthat::expect_equal(as.numeric(g(c(50,20,-20))['min']),-20)
      testthat::expect_equal(as.numeric(g(c(50,20,-20))['max']),50)
      testthat::expect_equal(as.numeric(g(c(1,1))['max']),1)
      testthat::expect_equal(as.numeric(g(c(1,1))['min']),1)
    })

}


}


