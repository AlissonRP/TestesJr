diferenca = function(N){
  if(N<0){
    stop("Números naturais são positivos!")
  }
  s = 0
  v = 0
  for (j in 1:N){
  s = s + j
  v = v + j**2
  }
  return(s**3 - v)
}

