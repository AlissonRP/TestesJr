library(testesJR)


A = matrix(c(1,2,3,2,4,5,0,0,1), ncol = 3, byrow = T)
B = matrix(c(1,0,0,-1), ncol = 2, byrow = T)
test_that("multiplication works", {
  expect_equal(diff_matrix(A),1)
  expect_equal(diff_matrix(B),0)
})

A = matrix(c(1,2,3,2,4,5,0,0,1), ncol =3, byrow = T)
testesJr::diff_matrix(A)

