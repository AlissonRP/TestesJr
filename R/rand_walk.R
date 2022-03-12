rand_walk = function(y0, N,n){
  y = c()
  y[1] = y0
  ym = NULL
  for (j in 1:N) {
    r = rnorm(n)
    for (i in 2:n){
    y[i] = y[i-1] + r[i]
    }
  ym[j] = mean(y)
  }
  return(mean(ym))
}

