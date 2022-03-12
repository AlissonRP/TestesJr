library(testesJr)
library(testthat)
x = runif(1)
test_that("ex soma", {
  expect_equal(soma(1,2), sum(1,2))
  expect_equal(soma(0,-50), sum(0,-50))
  expect_equal(soma(-24,-70, 50,-22), sum(-2*12,-70, 50, -22))
  expect_equal(soma(0, x, 3,-9,1500), sum(0, x, 3,-9,1500))
})
