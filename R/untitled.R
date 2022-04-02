#soma(1,2,3)
sum(rep(1,50))

1 |> rep(50) |> sum()
data.frame(x = rnorm(50), y = rnorm(50)) |> subset(y > 1) |> lapply(mean)

lapply(subset(data.frame(x = rnorm(50), y = rnorm(50)), y >1), mean)

min_max = function(vetor){
  min = min(vetor)
  max = max(vetor)
  data.frame('min' = min, 'max' = max )
}
