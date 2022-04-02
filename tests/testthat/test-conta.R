library(testesJr)
test_that("multiplication works", {
  expect_equal(as.numeric(conta(c(2,3,4,0))['Positivos']), 3/4)
  expect_equal(as.numeric(conta(c(2,3,4,0))['Zeros']), 1/4)
  expect_equal(as.numeric(conta(c(-2,0,4,0,5))['Zeros']), 2/5)
  expect_equal(as.numeric(conta(c(-2,0,4,0,5))['Negativos']), 1/5)
})
