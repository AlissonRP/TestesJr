resultado = function(A, B){
  df = data.frame('Times' = c('A','B'), 'Pontos' =c(A,B))
  score = B/A
  if(A==B & A*B >= 150*150){
    "Empate"
  }
  else if(A==150 | B==150){
    paste0('Vitória do time ',as.character(subset(df,Pontos == max(df$Pontos))['Times']))
  }
  else if(score < 1.6 & A>=60){
    'Vitória do Time A'
  }
  else if(score >=1.6 & B>=60){
   'Vitória do Time B'
  }
  else {
    'Partida em andamento'
  }
}
resultado(A =35, B = 100)


resultado (A = 150, B = 150)


resultado (70, 5)

resultado(150,75)

resultado(42 ,57)


