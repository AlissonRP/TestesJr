library(testesJr)
test_that("multiplication works", {
  expect_equal(diferenca(4), sum(1:4)**3 - sum((1:4)**2))
  expect_equal(diferenca(1), 0)
  expect_error(diferenca(-3), 'Números naturais são positivos!')
})
