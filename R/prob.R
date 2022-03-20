prob = function(K){
  s = 0
  for (i in 1:K){
    x = rnorm(1)
    if(-3<x  & x<3){
      s = s + 1
    }
  }
  s/K
}
prob(5000)
