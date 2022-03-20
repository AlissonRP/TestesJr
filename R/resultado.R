resul = function(A, B){
  score = B/A
  if(A==B & A*B >= 150*150){
    return("Empate")
  }
  else if(A==150 | B==150){
    return('sei la cara')
  }
  else if(score < 1.6 & A>=60){
    return('Vitória para o Time A')
  }
  else if(score >=1.6 & B>=60){
    return('Vitória para o Time B')
  }
}


library(testthat)
teste = function(g){
  test_that("sum na's", {
    expect_equal(g(60,1), 'Vitória para o Time A')
    expect_equal(g(1,60), 'Vitória para o Time B')
    expect_equal(g(150,150), 'Empate')
  })
}

df = data.frame(A = 2, B = 5)

df[df == max(df)]
