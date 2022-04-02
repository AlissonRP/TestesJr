conta = function(x){
  n = p = z = 0
  for (i in 1:length(x)){
    if(x[i]>0){
      p = p + 1
    }
    else if(x[i]<0){
      n = n + 1
    } else{
      z = z + 1
    }

  }

  data.frame('Positivos' = p/length(x),'Negativos' = n /length(x),'Zeros' = z /length(x) )

}


