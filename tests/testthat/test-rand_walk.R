set.seed(42)
x = mean(rand_walk(0,30, 500), rand_walk(0,30, 500),rand_walk(0,30, 500),rand_walk(0,30, 500), rand_walk(0,30, 500),
         rand_walk(0,30, 500))

test_that("mean of stochastic", {
  expect_true(x<4.2 & x>-4.2)
})

